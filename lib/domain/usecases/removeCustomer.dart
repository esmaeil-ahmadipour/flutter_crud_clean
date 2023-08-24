import 'package:mc_crud_test/core/usecase/usecase.dart';
import 'package:mc_crud_test/domain/entities/customer.dart';
import 'package:mc_crud_test/domain/repositories/customerRepository.dart';


class RemoveCustomerUseCase implements UseCase<void, Customer> {
  final CustomersRepository _customersRepository;

  RemoveCustomerUseCase(this._customersRepository);

  @override
  Future<void> call({Customer? params}) {
    return _customersRepository.removeCustomer(params);
  }
}