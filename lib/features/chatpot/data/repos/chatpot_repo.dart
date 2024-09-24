import 'package:evnto/core/network/api_result.dart';
import 'package:evnto/core/network/api_service.dart';
import 'package:evnto/core/network/error_handler.dart';

class ChatpotRepo {
  final ApiService apiService;

  ChatpotRepo({required this.apiService});

  Future<ApiResult<String>> messageChatbot({
    required String message,
  }) async {
    try {
      final response = await apiService.postData(
        endPoint: '/chatbot',
        isAI: true,
        body: {
          'question': message,
        },
      );
      return ApiResult.success(response.data['response']);
    } catch (e) {
      final handler = ErrorHandler.handle(e);
      return ApiResult.failure(handler.failure);
    }
  }
}
