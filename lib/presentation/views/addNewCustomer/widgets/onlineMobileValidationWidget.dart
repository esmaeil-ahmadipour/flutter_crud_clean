import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mc_crud_test/domain/entities/phoneValidate.dart';
import 'package:mc_crud_test/presentation/blocs/phoneValidate/phoneValidateBloc.dart';

// TODO: do cleaning widgets .
// TODO: do app localization for strings .
// TODO: when phone number is validated , then after change phone number , must  back to invalid .
class OnlineMobileValidationWidget extends StatelessWidget {
  const OnlineMobileValidationWidget({
    Key? key,
    required this.snapshot,
    this.extraInfo,
    required this.onChanged,
  }) : super(key: key);
  final AsyncSnapshot snapshot;
  final String? extraInfo;
  final ValueChanged<PhoneValidate> onChanged;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneValidateBloc, PhoneValidateState>(
      builder: (_, state) {
        if (state is PhoneValidateInitial) {
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
                          BlocProvider.of<PhoneValidateBloc>(context).add(
                              GetPhoneValidateData(
                                  "${snapshot.data}", extraInfo ?? ''));
                        });
        }
        if (state is PhoneValidateDone) {
          onChanged(state.phoneValidate!);
          return MaterialButton(
              color: Theme.of(context).primaryColor,
              child: const SizedBox(
                width: 48,
                child: Center(
                  child: Text("OK"),
                ),
              ),
              onPressed: snapshot.hasError
                  ? null
                  : snapshot.data == null
                      ? null
                      : () {
                          BlocProvider.of<PhoneValidateBloc>(context).add(
                              GetPhoneValidateData(
                                  "${snapshot.data}", extraInfo ?? ''));
                          print("${extraInfo ?? ''}${snapshot.data}");
                          if (snapshot.data == "9363032541") {}
                        });
        }
        if (state is PhoneValidateError) {
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
                          BlocProvider.of<PhoneValidateBloc>(context).add(
                              GetPhoneValidateData(
                                  "${snapshot.data}", extraInfo ?? ''));
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
