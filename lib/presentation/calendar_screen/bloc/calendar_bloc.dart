import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:nean_verg_s_application2/presentation/calendar_screen/models/calendar_model.dart';
part 'calendar_event.dart';
part 'calendar_state.dart';

/// A bloc that manages the state of a Calendar according to the event that is dispatched to it.
class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc(CalendarState initialState) : super(initialState) {
    on<CalendarInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CalendarInitialEvent event,
    Emitter<CalendarState> emit,
  ) async {}
}
