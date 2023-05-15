part of 'user_login_status_bloc.dart';

@freezed
class UserLoginStatusState with _$UserLoginStatusState {
  factory UserLoginStatusState.initial() = _Initial;

  factory UserLoginStatusState.fetchingStatus() = _FechingStatus;

  factory UserLoginStatusState.statusFetched({required bool isUserLoggedIn}) =
      _StatusFetched;

  factory UserLoginStatusState.fetchFailed({required AppFailure failure}) =
      _FetchFailed;
}
