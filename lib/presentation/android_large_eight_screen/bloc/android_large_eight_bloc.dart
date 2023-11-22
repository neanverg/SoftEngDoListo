import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nean_verg_s_application2/presentation/android_large_eight_screen/models/android_large_eight_model.dart';
part 'android_large_eight_event.dart';
part 'android_large_eight_state.dart';

/// A bloc that manages the state of a AndroidLargeEight according to the event that is dispatched to it.
class AndroidLargeEightBloc
    extends Bloc<AndroidLargeEightEvent, AndroidLargeEightState> {
  AndroidLargeEightBloc(AndroidLargeEightState initialState)
      : super(initialState) {
    on<AndroidLargeEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeEightInitialEvent event,
    Emitter<AndroidLargeEightState> emit,
  ) async {}
}
