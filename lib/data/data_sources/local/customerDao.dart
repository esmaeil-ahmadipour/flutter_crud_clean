import 'package:floor/floor.dart';
import 'package:mc_crud_test/core/utils/resources/mainStrings.dart';
import 'package:mc_crud_test/domain/entities/customer.dart';

@dao
abstract class CustomerDao {
  @Query('SELECT * FROM ${MainStrings.customersTableName}')
  Future<List<Customer>> getCustomersList();

  @Insert(onConflict: OnConflictStrategy.fail)
  Future<void> insertCustomer(Customer customer);

  @delete
  Future<void> deleteCustomer(Customer customer);
}