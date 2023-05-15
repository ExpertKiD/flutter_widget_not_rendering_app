import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ukpa_prms_mobile_app/features/auth/domain/repositories/auth.dart';

import '../../../../core/entities/no_params.dart';
import '../../../../core/failures/app_failures.dart';
import '../../../../core/use_cases/use_case.dart';

@lazySingleton
class IsUserLoggedInUseCase extends UseCase<AppFailure, bool, NoParams> {
  final AuthRepository repository;

  IsUserLoggedInUseCase({
    required this.repository,
  });

  @override
  Future<Either<AppFailure, bool>> call(params) async {
    return await repository.isUserLoggedIn();
  }
}
