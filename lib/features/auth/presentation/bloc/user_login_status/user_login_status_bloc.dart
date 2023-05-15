import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ukpa_prms_mobile_app/core/entities/no_params.dart';
import 'package:ukpa_prms_mobile_app/core/failures/app_failures.dart';

import '../../../domain/usecases/is_user_logged_in.dart';

part 'user_login_status_event.dart';

part 'user_login_status_state.dart';

part 'user_login_status_bloc.freezed.dart';

class UserLoginStatusBloc
    extends Bloc<UserLoginStatusEvent, UserLoginStatusState> {
  final IsUserLoggedInUseCase isUserLoggedInUseCase;

  UserLoginStatusBloc({
    required this.isUserLoggedInUseCase,
  }) : super(UserLoginStatusState.initial()) {
    on<_CheckStatusTriggered>(_onCheckStatusTriggered);
  }

  FutureOr<void> _onCheckStatusTriggered(
      _CheckStatusTriggered event, Emitter<UserLoginStatusState> emit) async {
    emit(UserLoginStatusState.fetchingStatus());

    final result = await isUserLoggedInUseCase(NoParams());

    result.fold((failure) {
      emit(UserLoginStatusState.fetchFailed(failure: failure));
    }, (isUserLoggedIn) {
      emit(UserLoginStatusState.statusFetched(isUserLoggedIn: isUserLoggedIn));
    });
  }
}
