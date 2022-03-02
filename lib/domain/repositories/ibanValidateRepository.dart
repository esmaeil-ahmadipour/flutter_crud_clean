import 'package:mc_crud_test/domain/entities/IbanValidate.dart';

// Validate Bank-Account-Number method
abstract class IbanValidateRepository {
  Future<IbanValidate> getIbanValidate();
}