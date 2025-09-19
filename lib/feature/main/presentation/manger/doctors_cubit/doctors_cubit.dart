import 'package:bloc/bloc.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/main/domain/usecase/fetch_all_doctors_use_case.dart';
import 'package:doctors_app/feature/main/domain/usecase/fetch_doctors_by_spcialization_use_case.dart';

import 'package:meta/meta.dart';

part 'doctors_cubit_state.dart';

class DoctorsCubit extends Cubit<DoctorsState> {
  DoctorsCubit(this.fetchAllDoctorsUseCase, this.fetchDoctorsBySpcializationUseCase)
      : super(DoctorsInitial());
  final FetchDoctorsBySpcializationUseCase fetchDoctorsBySpcializationUseCase;
  final FetchAllDoctorsUseCase fetchAllDoctorsUseCase;

  Future<void> fetchAllDoctors({ int pageNumber=0}) async {
    emit(DoctorsLoading());
    var respons = await fetchAllDoctorsUseCase.call(param: pageNumber);
    respons.fold((error) {
      emit(DoctorsFailure(errMessage: error.message));
    }, (data) {
      emit(DoctorsSuccess(doctors: data));
    });
  }

    Future<void> fetchDoctorsBySpcialization({required int index}) async {
      emit(DoctorsLoading());
    var response = await fetchDoctorsBySpcializationUseCase.call(param: index);
    response.fold((error) {
       emit(DoctorsFailure(errMessage: error.message));
    }, (data) {
           emit(DoctorsSuccess(doctors: data));
    });
  }
}
