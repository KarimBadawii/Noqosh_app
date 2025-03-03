import 'package:dartz/dartz.dart';
import 'package:noqosh_app/core/exceptions/failures.dart';
import '../../domain/repositories/pay_repo.dart';

class PayRepoImpl implements PayRepo {
  @override
  Future<Either<RouteRemoteFailures, String>> getAuthToken() async {

    throw UnimplementedError();
  }
}