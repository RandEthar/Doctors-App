import 'package:bloc/bloc.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/search/domain/usecase/search_doctor_by_name_use_case.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchDoctorByNameUseCase) : super(SearchInitial());

  final SearchDoctorByNameUseCase searchDoctorByNameUseCase;
  Future<void> searchDoctorByName({required String name}) async {
    emit(SearchLoading());
    var responce = await searchDoctorByNameUseCase.call(param: name);
    responce.fold((failure) {
      emit(SearchFailure(failure.message));
    }, (success) {
      if (success.isEmpty) {
        emit(SearchEmpty());
      } else {
        emit(SearchSuccess(success));
      }
    });
  }
}
