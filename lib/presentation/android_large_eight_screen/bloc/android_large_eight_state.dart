// ignore_for_file: must_be_immutable

part of 'android_large_eight_bloc.dart';

/// Represents the state of AndroidLargeEight in the application.
class AndroidLargeEightState extends Equatable {
  AndroidLargeEightState({this.androidLargeEightModelObj});

  AndroidLargeEightModel? androidLargeEightModelObj;

  @override
  List<Object?> get props => [
        androidLargeEightModelObj,
      ];
  AndroidLargeEightState copyWith(
      {AndroidLargeEightModel? androidLargeEightModelObj}) {
    return AndroidLargeEightState(
      androidLargeEightModelObj:
          androidLargeEightModelObj ?? this.androidLargeEightModelObj,
    );
  }
}
