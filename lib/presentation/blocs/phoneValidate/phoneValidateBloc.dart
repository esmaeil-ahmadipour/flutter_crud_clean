import 'dart:async';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:mc_crud_test/core/bloc/blocWithState.dart';
import 'package:mc_crud_test/core/params/phoneValidationRequest.dart';
import 'package:mc_crud_test/core/utils/resources/mainStrings.dart';
import 'package:mc_crud_test/data/data_sources/remote/remoteDataState.dart';
import 'package:mc_crud_test/domain/entities/phoneValidate.dart';
import 'package:mc_crud_test/domain/usecases/getPhoneValidateUsecase.dart';

part 'phoneValidateEvent.dart';

part 'phoneValidateState.dart';

class PhoneValidateBloc
    extends BlocAdditionalState<PhoneValidateEvent, PhoneValidateState> {
  final GetPhoneValidateUsecase _getPhoneValidateUsecase;

  PhoneValidateBloc(this._getPhoneValidateUsecase)
      : super(const PhoneValidateInitial());

  @override
  Stream<PhoneValidateState> mapEventToState(PhoneValidateEvent event) async* {
    if (event is GetPhoneValidateData) yield* _getPhoneValidate(event);
  }

  Stream<PhoneValidateState> _getPhoneValidate(
      PhoneValidateEvent event) async* {
    if (blocProcessState.name == BlocProcessState.idle.name) {
      //Loading-state : at this time state is between (initial-state) and (succeed-state or error-state).
      yield const PhoneValidateLoading();
    }

    yield* runningProcess(() async* {
      final dataState = await _getPhoneValidateUsecase(
          params: PhoneValidationRequestParams(
              apiKey: MainStrings.phoneValidationApiKey,
              phoneNumber: "${event.countryCode!}${event.phoneNumber!}"));

      if (dataState is RemoteDataSuccess) {
        final _phoneStateData = dataState.remoteData!;
        // print(" phoneStateData :${_phoneStateData}");
        yield PhoneValidateDone(phoneValidate: _phoneStateData);
      }
      if (dataState is RemoteDataFailed) {
        yield PhoneValidateError(dioError: dataState.error!);
      }
    });
  }
}
