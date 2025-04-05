import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/manage/services/services.dart';
import 'sign_up_state.dart';
class SignupCubit extends Cubit<SignupState> {
  final ApiService apiService;

  SignupCubit(this.apiService) : super(SignupInitial());

  Future<void> sendOtp(String email) async {
    emit(SignupLoading()); 
    try {
      
      Response response = await apiService.sendOtp(email);
      if (response.statusCode == 200) {
        emit(SignupSuccess()); 
      } else {
        emit(SignupFailure('Failed to send OTP')); 
      }
    } catch (e) {
      emit(SignupFailure(e.toString()));
    }
  }

}
