part of 'ibanValidateBloc.dart';

abstract class IbanValidateEvent extends Equatable {
  final String? ibanNumber;
  const IbanValidateEvent({this.ibanNumber});

  @override
  List<Object> get props => [ibanNumber!];
}

class GetIbanValidateData extends IbanValidateEvent {
  const GetIbanValidateData(String ibanNumber) : super(ibanNumber: ibanNumber);

}
