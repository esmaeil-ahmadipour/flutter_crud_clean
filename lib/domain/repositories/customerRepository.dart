import 'package:mc_crud_test/domain/entities/customer.dart';

abstract class CustomersRepository {
  // Database methods
  Future<List<Customer>> getAllCustomers();
  Future<void> saveCustomer(Customer? customer);
  Future<void> removeCustomer(Customer? customer);
}