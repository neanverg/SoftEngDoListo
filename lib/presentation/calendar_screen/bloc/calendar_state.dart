// ignore_for_file: must_be_immutable

part of 'calendar_bloc.dart';

/// Represents the state of Calendar in the application.
class CalendarState extends Equatable {
  CalendarState({this.calendarModelObj});

  CalendarModel? calendarModelObj;

  @override
  List<Object?> get props => [
        calendarModelObj,
      ];
  CalendarState copyWith({CalendarModel? calendarModelObj}) {
    return CalendarState(
      calendarModelObj: calendarModelObj ?? this.calendarModelObj,
    );
  }
}
