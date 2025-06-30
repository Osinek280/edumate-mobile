import 'package:edumate_mobile/core/usecase/usecase.dart';
import 'package:edumate_mobile/domain/repository/auth.dart';
import 'package:edumate_mobile/service_locator.dart';
import 'package:dartz/dartz.dart';

class GetUserUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic param}) async {
    return sl<AuthRepository>().getUser();
  }
}
