import 'package:mc_crud_test/core/params/ibanValidationRequest.dart';
import 'package:mc_crud_test/core/params/phoneValidationRequest.dart';
import 'package:mc_crud_test/core/usecase/usecase.dart';
import 'package:mc_crud_test/data/data_sources/remote/remoteDataState.dart';
import 'package:mc_crud_test/domain/entities/IbanValidate.dart';
import 'package:mc_crud_test/domain/entities/phoneValidate.dart';
import 'package:mc_crud_test/domain/repositories/ibanValidateRepository.dart';
import 'package:mc_crud_test/domain/repositories/phoneValidateRepository.dart';

class GetPhoneValidateUsecase implements UseCase<RemoteDataState<PhoneValidate>,PhoneValidationRequestParams > {
final PhoneValidateRepository _phoneValidateRepository;

GetPhoneValidateUsecase(this._phoneValidateRepository);

  @override
  Future <RemoteDataState<PhoneValidate>> call({ PhoneValidationRequestParams? params}) {
return _phoneValidateRepository.getPhoneValidate(params: params!);
  }
}
