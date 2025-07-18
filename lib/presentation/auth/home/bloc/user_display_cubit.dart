import 'package:edumate_mobile/domain/usecases/get_user.dart';
import 'package:edumate_mobile/presentation/auth/home/bloc/user_display_state.dart';
import 'package:edumate_mobile/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDisplayCubit extends Cubit<UserDisplayState> {
  UserDisplayCubit() : super(UserLoading());

  void displayUser() async {
    var result = await sl<GetUserUseCase>().call();
    result.fold(
      (error) {
        emit(LoadUserFailure(errorMessage: error));
      },
      (data) {
        emit(UserLoaded(userEntity: data));
      },
    );
  }
}
