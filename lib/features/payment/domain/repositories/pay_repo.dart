import 'package:dartz/dartz.dart';
import 'package:noqosh_app/core/exceptions/failures.dart';

abstract class PayRepo {
  Future<Either<RouteRemoteFailures,String>> getAuthToken();
}