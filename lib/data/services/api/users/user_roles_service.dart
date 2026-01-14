import 'package:flashcards/data/remote/cloud_function_service.dart';
import 'package:flashcards/utils/result.dart';

class UserRolesService {
  final CloudFunctionService _functions;

  UserRolesService({required CloudFunctionService functions})
    : _functions = functions;

  Future<Result<void>> setAdminRole(String email) async {
    try {
      await _functions.setAdminRole(email);

      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
