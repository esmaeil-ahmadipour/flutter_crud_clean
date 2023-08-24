import 'package:mc_crud_test/core/params/phoneValidationRequest.dart';
import 'package:mc_crud_test/data/data_sources/remote/remoteDataState.dart';
import 'package:mc_crud_test/domain/entities/phoneValidate.dart';

// Validate Phone-Number method
abstract class PhoneValidateRepository {
// API methods
  Future<RemoteDataState<PhoneValidate>> getPhoneValidate({required PhoneValidationRequestParams params});
}