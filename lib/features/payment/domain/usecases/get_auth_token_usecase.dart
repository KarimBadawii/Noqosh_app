import 'package:dartz/dartz.dart';
import 'package:noqosh_app/core/exceptions/failures.dart';

import '../repositories/pay_repo.dart';

class GetAuthTokenUseCase {
  PayRepo payRepo;

  GetAuthTokenUseCase(this.payRepo);
Future<Either<RouteRemoteFailures, String>> call()=>payRepo.getAuthToken();
}