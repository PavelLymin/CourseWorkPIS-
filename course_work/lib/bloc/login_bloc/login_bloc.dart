import 'package:bloc/bloc.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/domain/repositories/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepository _repository;
  LoginBloc({required IAuthRepository repository})
      : _repository = repository,
        super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.map(signIn: (event) => _signIn(emit, event));
    });
  }

  Future<void> _signIn(Emitter<LoginState> emit, _SignIn event) async {
    emit(LoginState.loading());

    final result = await _repository.loginWithEmailPassword(
        email: event.email, password: event.password);

    result.fold((failure) => emit(LoginState.failure(message: failure.message)),
        (employee) => emit(LoginState.success(employee: employee)));
  }
}
