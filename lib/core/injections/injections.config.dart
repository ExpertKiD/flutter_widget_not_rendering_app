// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i3;
import 'package:shared_preferences/shared_preferences.dart' as _i5;
import 'package:ukpa_prms_mobile_app/data/networks/network_api_services.dart'
    as _i4;
import 'package:ukpa_prms_mobile_app/features/auth/data/datasources/auth_local.dart'
    as _i6;
import 'package:ukpa_prms_mobile_app/features/auth/data/datasources/auth_local_impl.dart'
    as _i7;
import 'package:ukpa_prms_mobile_app/features/auth/data/repositories/auth.dart'
    as _i9;
import 'package:ukpa_prms_mobile_app/features/auth/domain/repositories/auth.dart'
    as _i8;
import 'package:ukpa_prms_mobile_app/features/auth/domain/usecases/is_user_logged_in.dart'
    as _i10;

import 'modules/internet_connection_checker.dart' as _i11;
import 'modules/shared_preferences.dart' as _i12;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final internetConnectionCheckerModule = _$InternetConnectionCheckerModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.lazySingleton<_i3.InternetConnectionChecker>(
      () => internetConnectionCheckerModule.internetConnectionChecker);
  gh.lazySingleton<_i4.NetworkApiService>(() => _i4.NetworkApiService());
  await gh.factoryAsync<_i5.SharedPreferences>(
    () => sharedPreferencesModule.sharedPreferences,
    preResolve: true,
  );
  gh.lazySingleton<_i6.AuthLocalDataSource>(() => _i7.AuthLocalDataSourceImpl(
      sharedPreferences: gh<_i5.SharedPreferences>()));
  gh.lazySingleton<_i8.AuthRepository>(() => _i9.AuthRepositoryImpl(
      authLocalDataSource: gh<_i6.AuthLocalDataSource>()));
  gh.lazySingleton<_i10.IsUserLoggedInUseCase>(
      () => _i10.IsUserLoggedInUseCase(repository: gh<_i8.AuthRepository>()));
  return getIt;
}

class _$InternetConnectionCheckerModule
    extends _i11.InternetConnectionCheckerModule {}

class _$SharedPreferencesModule extends _i12.SharedPreferencesModule {}
