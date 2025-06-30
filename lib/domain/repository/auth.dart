import 'package:edumate_mobile/data/models/signin_req_params.dart';
import 'package:edumate_mobile/data/models/signup_req_params.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either> signup(SignupReqParams signupReq);
  Future<Either> signin(SigninReqParams signinReq);
  Future<bool> isLoggedIn();
  Future<Either> getUser();
  Future<Either> logout();
}
