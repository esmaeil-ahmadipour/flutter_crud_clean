part of 'ibanValidateBloc.dart';

abstract class IbanValidateState extends Equatable {
  final IbanValidate? ibanValidate;
  final DioError? dioError;

  const IbanValidateState([this.ibanValidate, this.dioError]);

  @override
  List<Object> get props => [];
}

class IbanValidateInitial extends IbanValidateState {
  const IbanValidateInitial();
}

class IbanValidateLoading extends IbanValidateState {
  const IbanValidateLoading();
}

class IbanValidateDone extends IbanValidateState {
  const IbanValidateDone({IbanValidate? ibanValidate, DioError? dioError})
      : super(ibanValidate, dioError);
}

class IbanValidateError extends IbanValidateState {
  const IbanValidateError({DioError? dioError}) : super(null, dioError);
}
