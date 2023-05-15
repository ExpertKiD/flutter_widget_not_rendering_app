import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class InternetConnectionCheckerModule {
  final _kDefaultInterval = const Duration(seconds: 10);
  final _kDefaultTimeout = const Duration(seconds: 5);
  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker.createInstance(
        checkTimeout: _kDefaultTimeout,
        checkInterval: _kDefaultInterval,
      );
}
