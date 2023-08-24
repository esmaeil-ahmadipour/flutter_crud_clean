import 'package:mc_crud_test/core/usecase/usecase.dart';
import 'package:mc_crud_test/domain/entities/customer.dart';
import 'package:mc_crud_test/domain/repositories/customerRepository.dart';

class GetCustomersUseCase implements UseCase< void,List<Customer>> {
  final CustomersRepository _customersRepository;

  GetCustomersUseCase(this._customersRepository);

  @override
  Future<List<Customer>> call({void params}) {
    return _customersRepository.getAllCustomers();
  }
}