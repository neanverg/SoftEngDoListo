// ignore_for_file: must_be_immutable

part of 'calendar_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Calendar widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CalendarEvent extends Equatable {}

/// Event that is dispatched when the Calendar widget is first created.
class CalendarInitialEvent extends CalendarEvent {
  @override
  List<Object?> get props => [];
}
