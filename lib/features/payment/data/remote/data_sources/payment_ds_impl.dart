import 'package:dartz/dartz.dart';
import 'package:noqosh_app/core/api/api_manager.dart';
import 'package:noqosh_app/core/exceptions/failures.dart';
import 'package:noqosh_app/core/utils/constants_manager.dart';
import 'package:noqosh_app/features/payment/data/remote/data_sources/payment_ds.dart';

import '../../../../../core/api/end_points.dart';

class PaymentDsImpl implements PaymentDs{
  ApiManager apiManager;

  PaymentDsImpl(this.apiManager);

  @override
  Future<Either<RouteRemoteFailures,String>> getPaymentToken() async{
    try{
      var response = await apiManager.postPaymentData(endPoint: EndPoints.authToken,
          body: {
        "api_key": AppConstants.apiKey
          });
      // print(response.data["token"]);
      return right(response.data["token"]);
    }catch(e){
      return left(RouteRemoteFailures(e.toString()));
    }

  }
  // Future<Either<RouteRemoteFailures,int>> getPaymentOrderId() async{
  //   try{
  //     var response = await apiManager.postPaymentData(endPoint: EndPoints.authToken,
  //         body: {
  //           "api_key": AppConstants.apiKey
  //         });
  //     return right(response.data["token"]);
  //   }catch(e){
  //     return left(RouteRemoteFailures(e.toString()));
  //   }
  // }
}