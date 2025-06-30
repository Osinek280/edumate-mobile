import 'package:edumate_mobile/core/usecase/usecase.dart';
import 'package:edumate_mobile/domain/repository/auth.dart';
import 'package:edumate_mobile/service_locator.dart';
import 'package:dartz/dartz.dart';

class LogoutUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({param}) async {
    return await sl<AuthRepository>().logout();
  }
}
