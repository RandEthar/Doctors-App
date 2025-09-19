import 'package:bloc/bloc.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/main/domain/usecase/fetch_doctors_by_spcialization_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_doctors_by_spcialization_state.dart';

class FetchDoctorsBySpcializationCubit
    extends Cubit<FetchDoctorsBySpcializationState> {
  FetchDoctorsBySpcializationCubit(this.fetchDoctorsBySpcializationUseCase)
      : super(FetchDoctorsBySpcializationInitial());
  final FetchDoctorsBySpcializationUseCase fetchDoctorsBySpcializationUseCase;

  Future<void> fetchDoctorsBySpcialization({required int index}) async {
    emit(FetchDoctorsBySpcializationLoading());
    var response = await fetchDoctorsBySpcializationUseCase.call(param: index);
    response.fold((error) {
      emit(FetchDoctorsBySpcializationFailure(errMassage: error.message));
    }, (data) {
      emit(FetchDoctorsBySpcializationSuccess(doctors: data));
    });
  }
}
