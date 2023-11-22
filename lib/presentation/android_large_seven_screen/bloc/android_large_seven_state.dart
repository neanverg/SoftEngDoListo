// ignore_for_file: must_be_immutable

part of 'android_large_seven_bloc.dart';

/// Represents the state of AndroidLargeSeven in the application.
class AndroidLargeSevenState extends Equatable {
  AndroidLargeSevenState({this.androidLargeSevenModelObj});

  AndroidLargeSevenModel? androidLargeSevenModelObj;

  @override
  List<Object?> get props => [
        androidLargeSevenModelObj,
      ];
  AndroidLargeSevenState copyWith(
      {AndroidLargeSevenModel? androidLargeSevenModelObj}) {
    return AndroidLargeSevenState(
      androidLargeSevenModelObj:
          androidLargeSevenModelObj ?? this.androidLargeSevenModelObj,
    );
  }
}
