import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mc_crud_test/data/data_sources/local/appDatabase.dart';
import 'package:mc_crud_test/data/data_sources/local/customerDao.dart';
import 'package:mc_crud_test/data/data_sources/remote/ibanValidateservice.dart';
import 'package:mc_crud_test/data/data_sources/remote/phoneValidateservice.dart';
import 'package:mc_crud_test/data/repositories/customerRepositoryImpl.dart';
import 'package:mc_crud_test/data/repositories/ibanValidateRepositoryImpl.dart';
import 'package:mc_crud_test/data/repositories/phoneValidateRepositoryImpl.dart';
import 'package:mc_crud_test/domain/entities/customer.dart';
import 'package:mc_crud_test/domain/repositories/customerRepository.dart';
import 'package:mc_crud_test/domain/repositories/ibanValidateRepository.dart';
import 'package:mc_crud_test/domain/repositories/phoneValidateRepository.dart';
import 'package:mc_crud_test/domain/usecases/getCustomersUsecase.dart';
import 'package:mc_crud_test/domain/usecases/getIibanValidateUsecase.dart';
import 'package:mc_crud_test/domain/usecases/getPhoneValidateUsecase.dart';
import 'package:mc_crud_test/domain/usecases/removeCustomer.dart';
import 'package:mc_crud_test/domain/usecases/saveCustomerUsecase.dart';
import 'package:mc_crud_test/presentation/blocs/customers/customersBloc.dart';


final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  final AppDatabase database =
      await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  // injector.registerLazySingleton(<AppDatabase>() => database);

  // Dio client
  injector.registerSingleton<Dio>(Dio());

  // Services
  injector.registerSingleton(IbanValidateApiService(injector()));
  injector.registerSingleton(PhoneValidateApiService(injector()));

  // Repositories
  injector.registerLazySingleton<PhoneValidateRepository>(()=>PhoneValidateRepositoryImpl(injector()));
  injector.registerLazySingleton<IbanValidateRepository>(()=>IbanValidateRepositoryImpl(injector()));
  injector.registerLazySingleton<CustomersRepository>(()=>CustomersRepositoryImpl(injector()));


  // UseCases
  injector.registerFactory(() => database);
  injector.registerLazySingleton(() =>GetCustomersUseCase(injector()));
  injector.registerLazySingleton(() => SaveCustomerUseCase(injector()));
  injector.registerLazySingleton(() => RemoveCustomerUseCase(injector()));
  injector.registerLazySingleton(() => GetPhoneValidateUsecase(injector()));
  injector.registerLazySingleton(() => GetIbanValidateUsecase(injector()));

  // BloCs
  injector.registerLazySingleton(()=>CustomersBloc(
    injector(),
    injector(),
    injector(),
  ));
}

