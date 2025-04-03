import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/manage/services/services.dart';
import 'sign_up_state.dart';
class SignupCubit extends Cubit<SignupState> {
  final ApiService apiService;

  SignupCubit(this.apiService) : super(SignupInitial());

  // Send OTP method
  Future<void> sendOtp(String email) async {
    emit(SignupLoading()); // Show loading indicator
    try {
      // Call the API to send OTP
      Response response = await apiService.sendOtp(email);

      // Check the response status or data to confirm success
      if (response.statusCode == 200) {
        emit(SignupSuccess()); // On success, emit success state
      } else {
        emit(SignupFailure('Failed to send OTP')); // If the response status is not 200, emit failure state
      }
    } catch (e) {
      emit(SignupFailure(e.toString())); // On error, emit failure state
    }
  }

// Other methods like signUp, verifyOtp, etc.
}