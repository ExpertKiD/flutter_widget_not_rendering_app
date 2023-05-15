import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ukpa_prms_mobile_app/core/exceptions/app_exceptions.dart';

import '../../../../core/failures/app_failures.dart';
import '../../domain/repositories/auth.dart';
import '../datasources/auth_local.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthLocalDataSource authLocalDataSource;

  AuthRepositoryImpl({
    required this.authLocalDataSource,
  });

  @override
  Future<Either<AppFailure, bool>> isUserLoggedIn() async {
    try {
      return Right(await authLocalDataSource.isUserLoggedIn());
    } on AppException catch (e) {
      return Left(AppFailure.fromException(e));
    }
  }
}
