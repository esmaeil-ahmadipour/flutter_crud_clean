import 'package:mc_crud_test/core/params/ibanValidationRequest.dart';
import 'package:mc_crud_test/data/data_sources/remote/remoteDataState.dart';
import 'package:mc_crud_test/domain/entities/IbanValidate.dart';

// Validate Bank-Account-Number method
abstract class IbanValidateRepository {
  // API methods
  Future<RemoteDataState<IbanValidate>> getIbanValidate({required IbanValidationRequestParams params});
}