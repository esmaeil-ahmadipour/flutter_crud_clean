import 'package:mc_crud_test/core/params/ibanValidationRequest.dart';
import 'package:mc_crud_test/core/usecase/usecase.dart';
import 'package:mc_crud_test/data/data_sources/remote/remoteDataState.dart';
import 'package:mc_crud_test/domain/entities/IbanValidate.dart';
import 'package:mc_crud_test/domain/repositories/ibanValidateRepository.dart';

class GetIbanValidateUsecase implements UseCase<RemoteDataState<IbanValidate>,IbanValidationRequestParams> {
final IbanValidateRepository _ibanValidateRepository;

GetIbanValidateUsecase(this._ibanValidateRepository);

  @override
  Future <RemoteDataState<IbanValidate>> call({ IbanValidationRequestParams? params}) {
return _ibanValidateRepository.getIbanValidate(params: params!);
  }
}
