import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

import '../../../../core/utils/enums.dart';
import '../../domain/usecases/get_auth_token_usecase.dart';

part 'pay_event.dart';
part 'pay_state.dart';

class PayBloc extends Bloc<PayEvent, PayState> {
  GetAuthTokenUseCase getAuthTokenUseCase ;
  PayBloc(this.getAuthTokenUseCase) : super(PayInit()) {
    on<PayEvent>((event, emit) async{
      emit(state.copyWith(requestState: RequestState.loading));
      var result = await getAuthTokenUseCase();
      result.fold(
              (l) => emit(state.copyWith(requestState: RequestState.error, errorMessage: l.message)),
              (r) => emit(state.copyWith(requestState: RequestState.success, message: r)));
    });
  }
}
