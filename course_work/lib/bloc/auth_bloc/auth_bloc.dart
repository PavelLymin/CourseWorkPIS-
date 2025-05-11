import 'package:bloc/bloc.dart';
import 'package:course_work/domain/repositories/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _repository;
  AuthBloc({required IAuthRepository repository})
      : _repository = repository,
        super(const AuthState.notAuthorized()) {
    on<AuthEvent>((event, emit) {
      event.map(
          userLogin: (_) => _userLogin(emit),
          userLogOut: (_) => _userLogOut(emit));
    });
  }

  void _userLogin(Emitter<AuthState> emit) {
    emit(AuthState.authorized());
  }

  void _userLogOut(Emitter<AuthState> emit) {
    _repository.logOut();
    emit(AuthState.notAuthorized());
  }
}
