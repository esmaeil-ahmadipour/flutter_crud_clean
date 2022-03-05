import 'package:mc_crud_test/data/data_sources/local/appDatabase.dart';
import 'package:mc_crud_test/domain/entities/customer.dart';
import 'package:mc_crud_test/domain/repositories/customerRepository.dart';


class CustomersRepositoryImpl implements CustomersRepository {
  final AppDatabase _appDatabase;

  const CustomersRepositoryImpl(this._appDatabase);

  @override
  Future<List<Customer>> getAllCustomers() async {
    return _appDatabase.customerDao.getCustomersList();
  }

  @override
  Future<void> removeCustomer(customer) async {
    return _appDatabase.customerDao.deleteCustomer(customer!);
  }

  @override
  Future<void> saveCustomer(customer) async {
    return _appDatabase.customerDao.insertCustomer(customer!);
  }
}
