import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeGray400_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray400Light => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumGray400Light13 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallBlue500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue500,
      );
  static get bodySmallBlue800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue800,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumGothicA1 => theme.textTheme.titleMedium!.gothicA1;
}

extension on TextStyle {
  TextStyle get robotoSlab {
    return copyWith(
      fontFamily: 'Roboto Slab',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get gothicA1 {
    return copyWith(
      fontFamily: 'Gothic A1',
    );
  }
}
