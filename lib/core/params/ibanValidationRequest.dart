import 'package:mc_crud_test/core/utils/resources/mainStrings.dart';

// Parameters For Send Request To Check Validation Bank-Account-Number.
class IbanValidationRequestParams {
  final String apiKey;
  final String ibanValidate;

  const IbanValidationRequestParams({ this.apiKey=MainStrings.ibanValidationApiKey,  this.ibanValidate=""});
}
