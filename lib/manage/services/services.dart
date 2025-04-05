import 'package:dio/dio.dart';
class ApiService {
  final String baseUrl = 'https://tmwel.fun';
  final Dio _dio = Dio();

  ApiService() {
    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = Duration(seconds: 30);
    _dio.options.receiveTimeout = Duration(seconds: 30);
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
  }

  Future<Response> getData(String endpoint, {Map<String, dynamic>? queryParams}) async {
    try {
      Response response = await _dio.get(endpoint, queryParameters: queryParams);
      return response;
    } catch (e) {
      print('Error in GET request: $e');
      rethrow;
    }
  }

  Future<Response> postData(String endpoint, Map<String, dynamic> data) async {
    try {
      Response response = await _dio.post(endpoint, data: data);
      return response;
    } catch (e) {
      print('Error in POST request: $e');
      rethrow;
    }
  }

  Future<Response> putData(String endpoint, Map<String, dynamic> data) async {
    try {
      Response response = await _dio.put(endpoint, data: data);
      return response;
    } catch (e) {
      print('Error in PUT request: $e');
      rethrow;
    }
  }

  Future<Response> deleteData(String endpoint) async {
    try {
      Response response = await _dio.delete(endpoint);
      return response;
    } catch (e) {
      print('Error in DELETE request: $e');
      rethrow;
    }
  }

  Future<Response> signUp(Map<String, dynamic> userData) async {
    try {
      Response response = await _dio.post('/signup', data: userData);
      return response;
    } catch (e) {
      print('Error in Sign Up: $e');
      rethrow;
    }
  }
  Future<Response> sendOtp(String email) async {
    try {
      Response response = await _dio.post('$baseUrl/api/register', data: {'email': email});  
      return response;
    } catch (e) {
      print('Error in sending OTP: $e');
      if (e is DioException) {
        print('DioError: ${e.response?.statusCode} - ${e.response?.statusMessage}');
      }
      rethrow;
    }
  }

  Future<Response> verifyOtp(String email, String otp) async {
    try {
      Response response = await _dio.post('/verify-otp', data: {'email': email, 'otp': otp});
      return response;
    } catch (e) {
      print('Error in verifying OTP: $e');
      rethrow;
    }
  }
}
