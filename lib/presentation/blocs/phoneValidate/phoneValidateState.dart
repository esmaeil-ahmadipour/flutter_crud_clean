part of 'phoneValidateBloc.dart';

abstract class PhoneValidateState extends Equatable {
  final PhoneValidate? phoneValidate;
  final DioError? dioError;

  const PhoneValidateState([this.phoneValidate, this.dioError]);

  @override
  List<Object> get props => [];
}


class PhoneValidateInitial extends PhoneValidateState {
  const PhoneValidateInitial();
}

class PhoneValidateLoading extends PhoneValidateState {
  const PhoneValidateLoading();
}

class PhoneValidateDone extends PhoneValidateState {
  const PhoneValidateDone({PhoneValidate? phoneValidate, DioError? dioError})
      : super(phoneValidate, dioError);
}

class PhoneValidateError extends PhoneValidateState {
  const PhoneValidateError({DioError? dioError}): super(null, dioError);
}
