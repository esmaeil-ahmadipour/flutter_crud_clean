part of 'customersBloc.dart';

abstract class CustomersState extends Equatable {
  final List<Customer>? customers;

  const CustomersState({this.customers});

  @override
  List<Object> get props => [customers!];
}
class CustomersLoading extends CustomersState {
  const CustomersLoading();
}

class CustomersDone extends CustomersState {
  const CustomersDone(List<Customer> customers) : super(customers: customers);
}