import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mc_crud_test/domain/entities/IbanValidate.dart';
import 'package:mc_crud_test/presentation/blocs/ibanValidate/ibanValidateBloc.dart';

// TODO: do cleaning widgets .
// TODO: do app localization for strings .
// TODO: when iban is validated , then after change iban , must  back to invalid .
class OnlineIbanValidationWidget extends StatelessWidget {
  const OnlineIbanValidationWidget({
    Key? key,
    required this.snapshot,
    this.extraInfo, required this.onChanged,
  }) : super(key: key);
  final AsyncSnapshot snapshot;
  final String? extraInfo;
  final ValueChanged<IbanValidate> onChanged;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IbanValidateBloc, IbanValidateState>(
      builder: (_, state) {
        if (state is IbanValidateInitial) {
          return MaterialButton(
              color: Theme.of(context).primaryColor,
              child: const SizedBox(
                width: 48,
                child: Center(
                  child: Text("Check"),
                ),
              ),
              onPressed: snapshot.hasError
                  ? null
                  : snapshot.data == null
                      ? null
                      : () {
                          BlocProvider.of<IbanValidateBloc>(context).add(
                              GetIbanValidateData(
                                  "${snapshot.data}"));
                          print("${extraInfo ?? ''}${snapshot.data}");
                          if (snapshot.data == "9363032541") {}
                        });
        }
        if (state is IbanValidateDone) {
          onChanged(state.ibanValidate!);
          return MaterialButton(
              color: Theme.of(context).primaryColor,
              child: const SizedBox(
                width: 48,
                child: Center(
                  child: Text("Ok"),
                ),
              ),
              onPressed: snapshot.hasError
                  ? null
                  : snapshot.data == null
                      ? null
                      : () {
                          BlocProvider.of<IbanValidateBloc>(context).add(
                              GetIbanValidateData(
                                  "${snapshot.data}"));
                          print("print  >> ${extraInfo ?? ''}${snapshot.data}");
                          if (snapshot.data == "9363032541") {}
                        });
        }
        if (state is IbanValidateError) {
          return MaterialButton(
              color: Theme.of(context).primaryColor,
              child: const SizedBox(
                width: 48,
                child: Center(
                  child: Icon(Icons.refresh),
                ),
              ),
              onPressed: snapshot.hasError
                  ? null
                  : snapshot.data == null
                      ? null
                      : () {
                          BlocProvider.of<IbanValidateBloc>(context).add(
                              GetIbanValidateData(
                                  "${snapshot.data}"));
                          print("${extraInfo ?? ''}${snapshot.data}");
                          if (snapshot.data == "9363032541") {}
                        });
        }
        return MaterialButton(
          color: Theme.of(context).primaryColor,
          onPressed: null,
          child: const SizedBox(
            width: 48,
            child: Center(
              child: CupertinoActivityIndicator(),
            ),
          ),
        );
      },
    );
  }
}
