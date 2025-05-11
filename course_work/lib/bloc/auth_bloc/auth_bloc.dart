import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SharedPreferences _preferences;
  AuthBloc({required SharedPreferences preferences})
      : _preferences = preferences,
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
    _preferences.remove('id');
    _preferences.remove('role');
    emit(AuthState.notAuthorized());
  }
}
