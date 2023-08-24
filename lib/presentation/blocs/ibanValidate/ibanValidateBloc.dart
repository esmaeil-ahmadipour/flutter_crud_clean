import 'dart:async';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:mc_crud_test/core/bloc/blocWithState.dart';
import 'package:mc_crud_test/core/params/ibanValidationRequest.dart';
import 'package:mc_crud_test/core/utils/resources/mainStrings.dart';
import 'package:mc_crud_test/data/data_sources/remote/remoteDataState.dart';
import 'package:mc_crud_test/domain/entities/IbanValidate.dart';
import 'package:mc_crud_test/domain/usecases/getIibanValidateUsecase.dart';

part 'ibanValidateEvent.dart';
part 'ibanValidateState.dart';

class IbanValidateBloc
    extends BlocAdditionalState<IbanValidateEvent, IbanValidateState> {
  final GetIbanValidateUsecase _getIbanValidateUsecase;

  IbanValidateBloc(this._getIbanValidateUsecase)
      : super(const IbanValidateInitial());

  @override
  Stream<IbanValidateState> mapEventToState(IbanValidateEvent event) async* {
    if (event is GetIbanValidateData) yield* _getIbanValidate(event);
  }

  Stream<IbanValidateState> _getIbanValidate(IbanValidateEvent event) async* {

    if (blocProcessState.name == BlocProcessState.idle.name) { //Loading-state : at this time state is between (initial-state) and (succeed-state or error-state).
      yield const IbanValidateLoading();
    }

    yield* runningProcess(() async* {
      final dataState = await _getIbanValidateUsecase(
          params: IbanValidationRequestParams(
              iban: event.ibanNumber!));

      if (dataState is RemoteDataSuccess) {
        final _ibanStateData = dataState.remoteData!;
        // print(" ibanStateData :${_ibanStateData}");
        yield IbanValidateDone(ibanValidate: _ibanStateData);
      }
      if (dataState is RemoteDataFailed) {
        yield IbanValidateError(dioError: dataState.error!);
      }
    });
  }
}
