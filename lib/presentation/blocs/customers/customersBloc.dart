import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mc_crud_test/domain/entities/customer.dart';
import 'package:mc_crud_test/domain/usecases/getCustomersUsecase.dart';
import 'package:mc_crud_test/domain/usecases/removeCustomer.dart';
import 'package:mc_crud_test/domain/usecases/saveCustomerUsecase.dart';

part 'customersEvent.dart';

part 'customersState.dart';

class CustomersBloc extends Bloc<CustomersEvent, CustomersState> {
  final GetCustomersUseCase _getCustomersUseCase;
  final SaveCustomerUseCase _saveCustomerUseCase;
  final RemoveCustomerUseCase _removeCustomerUseCase;

  CustomersBloc(
    this._getCustomersUseCase,
    this._saveCustomerUseCase,
    this._removeCustomerUseCase,
  ) : super(const CustomersLoading());

  @override
  Stream<CustomersState> mapEventToState(CustomersEvent event) async* {
    if (event is GetAllCustomers) {
      yield* _getAllCustomers();
    }
    if (event is RemoveCustomer) {
      await _removeCustomerUseCase(params: event.customer);
      yield* _getAllCustomers();
    }
    if (event is SaveCustomer) {
      await _saveCustomerUseCase(params: event.customer);
      yield* _getAllCustomers();
    }
  }

  Stream<CustomersState> _getAllCustomers() async* {
    final customersList = await _getCustomersUseCase();
    yield CustomersDone(customersList);
  }

}
