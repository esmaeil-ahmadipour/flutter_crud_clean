import 'package:mc_crud_test/domain/entities/phoneValidate.dart';

// Validate Phone-Number method
abstract class PhoneValidateRepository {
  Future<PhoneValidate> getPhoneValidate();
}