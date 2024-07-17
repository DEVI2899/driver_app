import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_tarkiz/services/login_service.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginService loginService;
  LoginBloc({required this.loginService}) : super(LoginInitial()) {
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  void _onLoginButtonPressed(LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    try {
      final user = await loginService.loginRequest(event.email, event.password);
      if (user != null) {
        emit(LoginSuccess(user: user));
      } else {
        emit(const LoginFailure(error: 'Invalid email or password'));
      }
    } catch (error) {
      emit(LoginFailure(error: error.toString()));
    }
  }
  }
