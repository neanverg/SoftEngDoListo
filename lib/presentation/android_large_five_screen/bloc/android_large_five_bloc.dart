import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nean_verg_s_application2/presentation/android_large_five_screen/models/android_large_five_model.dart';
part 'android_large_five_event.dart';
part 'android_large_five_state.dart';

/// A bloc that manages the state of a AndroidLargeFive according to the event that is dispatched to it.
class AndroidLargeFiveBloc
    extends Bloc<AndroidLargeFiveEvent, AndroidLargeFiveState> {
  AndroidLargeFiveBloc(AndroidLargeFiveState initialState)
      : super(initialState) {
    on<AndroidLargeFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeFiveInitialEvent event,
    Emitter<AndroidLargeFiveState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
