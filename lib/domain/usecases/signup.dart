import 'package:edumate_mobile/core/usecase/usecase.dart';
import 'package:edumate_mobile/data/models/signup_req_params.dart';
import 'package:edumate_mobile/domain/repository/auth.dart';
import 'package:edumate_mobile/service_locator.dart';
import 'package:dartz/dartz.dart';

class SignupUseCase implements UseCase<Either, SignupReqParams> {
  @override
  Future<Either> call({SignupReqParams? param}) async {
    return sl<AuthRepository>().signup(param!);
  }
}
