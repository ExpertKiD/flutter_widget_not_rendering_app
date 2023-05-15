import 'package:dartz/dartz.dart';

import '../../../../core/failures/app_failures.dart';

abstract class AuthRepository {
  Future<Either<AppFailure, bool>> isUserLoggedIn();
}
