part of 'customersBloc.dart';

abstract class CustomersEvent extends Equatable {
   final Customer? customer;

  const CustomersEvent({this.customer});

  @override
  List<Object> get props => [customer!];
}

class GetAllCustomers extends CustomersEvent {
  const GetAllCustomers();
}

class RemoveCustomer extends CustomersEvent {
  const RemoveCustomer(Customer customer) : super(customer: customer);
}

class SaveCustomer extends CustomersEvent {
  const SaveCustomer(Customer customer) : super(customer: customer);
}


