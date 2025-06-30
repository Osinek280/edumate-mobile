import 'package:edumate_mobile/core/usecase/usecase.dart';
import 'package:edumate_mobile/data/models/signin_req_params.dart';
import 'package:edumate_mobile/domain/repository/auth.dart';
import 'package:edumate_mobile/service_locator.dart';
import 'package:dartz/dartz.dart';

class SigninUseCase implements UseCase<Either, SigninReqParams> {
  @override
  Future<Either> call({SigninReqParams? param}) async {
    return sl<AuthRepository>().signin(param!);
  }
}
