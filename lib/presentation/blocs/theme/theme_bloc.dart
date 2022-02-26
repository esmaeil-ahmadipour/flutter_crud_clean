import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:mc_crud_test/core/utils/resources/app_themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(ThemeState initialState) : super(initialState);

  @override
  ThemeState get initialState =>
      ThemeInitial(MainTheme.appThemeData[AppTheme.light]!);

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeChanged) {
      yield ThemeInitial(MainTheme.appThemeData[event.theme]!);
    }
  }
}
