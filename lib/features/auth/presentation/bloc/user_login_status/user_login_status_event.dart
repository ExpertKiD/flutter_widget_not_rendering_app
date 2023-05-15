part of 'user_login_status_bloc.dart';

@freezed
class UserLoginStatusEvent with _$UserLoginStatusEvent {
  factory UserLoginStatusEvent.checkStatusTriggered() = _CheckStatusTriggered;
}
