import 'package:dartz/dartz.dart';

import '../../../../../core/exceptions/failures.dart';

abstract class PaymentDs{
  Future<Either<RouteRemoteFailures,String>> getPaymentToken();
}