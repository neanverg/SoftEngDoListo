// ignore_for_file: must_be_immutable

part of 'android_large_five_bloc.dart';

/// Represents the state of AndroidLargeFive in the application.
class AndroidLargeFiveState extends Equatable {
  AndroidLargeFiveState({
    this.searchController,
    this.androidLargeFiveModelObj,
  });

  TextEditingController? searchController;

  AndroidLargeFiveModel? androidLargeFiveModelObj;

  @override
  List<Object?> get props => [
        searchController,
        androidLargeFiveModelObj,
      ];
  AndroidLargeFiveState copyWith({
    TextEditingController? searchController,
    AndroidLargeFiveModel? androidLargeFiveModelObj,
  }) {
    return AndroidLargeFiveState(
      searchController: searchController ?? this.searchController,
      androidLargeFiveModelObj:
          androidLargeFiveModelObj ?? this.androidLargeFiveModelObj,
    );
  }
}
