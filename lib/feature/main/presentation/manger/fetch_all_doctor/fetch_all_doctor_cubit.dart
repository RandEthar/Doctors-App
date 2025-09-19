import 'package:bloc/bloc.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/main/domain/usecase/fetch_all_doctors_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_all_doctor_state.dart';

class FetchAllDoctorCubit extends Cubit<FetchAllDoctorState> {
  FetchAllDoctorCubit(this.fetchAllDoctorsUseCase)
      : super(FetchAllDoctorInitial());

  final FetchAllDoctorsUseCase fetchAllDoctorsUseCase;

  Future<void> fetchAllDoctors({ int pageNumber=0}) async {
    emit(FetchAllDoctorLoading());
    var respons = await fetchAllDoctorsUseCase.call(param: pageNumber);
    respons.fold((error) {
      emit(FetchAllDoctorFailure(errMessage: error.message));
    }, (data) {
      emit(FetchAllDoctorSuccess(doctors: data));
    });
  }
}
