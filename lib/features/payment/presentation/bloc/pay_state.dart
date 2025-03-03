part of 'pay_bloc.dart';

class PayState {
  RequestState? requestState;
  String? message;
  String? errorMessage;

  PayState({ this.requestState, this.message, this.errorMessage});
  PayState copyWith(
  {RequestState? requestState ,
    String? message,
    String? errorMessage,
  }){
    return PayState(
      requestState: requestState ?? this.requestState,
      message: message ?? this.message,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

final class PayInit extends PayState{
  PayInit() : super(
    requestState: RequestState.init,
    message: null,
    errorMessage: "",
  );
}

