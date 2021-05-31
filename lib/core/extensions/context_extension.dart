import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension ColorExtension on BuildContext {
  // ColorScheme
  Color get colorSchemePrimary => theme.colorScheme.primary;
  Color get colorSchemePrimaryVariant => theme.colorScheme.primaryVariant;
  Color get colorSchemeSecondary => theme.colorScheme.secondary;
  Color get colorSchemeSecondaryVariant => theme.colorScheme.secondaryVariant;
  Color get colorSchemeSurface => theme.colorScheme.surface;
  Color get colorSchemeBackground => theme.colorScheme.background;
  Color get colorSchemeError => theme.colorScheme.error;
  Color get colorSchemeOnPrimary => theme.colorScheme.onPrimary;
  Color get colorSchemeOnSecondary => theme.colorScheme.onSecondary;
  Color get colorSchemeOnSurface => theme.colorScheme.onSurface;
  Color get colorSchemeOnBackground => theme.colorScheme.onBackground;
  Color get colorSchemeOnError => theme.colorScheme.onError;

  // Colors
  Color get scaffoldBackgroundColor => theme.scaffoldBackgroundColor;
  Color get primaryColor => theme.primaryColor;
  Color get accentColor => theme.accentColor;
  Color get errorColor => theme.errorColor;
}

extension ColorOpacity on BuildContext {
  // Opacity
  Color colorSchemePrimaryWithOpacity(double opacity) =>
      colorSchemePrimary.withOpacity(opacity);

  Color colorSchemePrimaryVariantWithOpacity(double opacity) =>
      colorSchemePrimaryVariant.withOpacity(opacity);

  Color colorSchemeSecondaryWithOpacity(double opacity) =>
      colorSchemeSecondary.withOpacity(opacity);

  Color colorSchemeSecondaryVariantWithOpacity(double opacity) =>
      colorSchemeSecondaryVariant.withOpacity(opacity);

  Color colorSchemeSurfaceWithOpacity(double opacity) =>
      colorSchemeSurface.withOpacity(opacity);

  Color colorSchemeBackgroundWithOpacity(double opacity) =>
      colorSchemeBackground.withOpacity(opacity);

  Color colorSchemeErrorWithOpacity(double opacity) =>
      colorSchemeError.withOpacity(opacity);

  Color colorSchemeOnPrimaryWithOpacity(double opacity) =>
      colorSchemeOnPrimary.withOpacity(opacity);

  Color colorSchemeOnSecondaryWithOpacity(double opacity) =>
      colorSchemeOnSecondary.withOpacity(opacity);

  Color colorSchemeOnSurfaceWithOpacity(double opacity) =>
      colorSchemeOnSurface.withOpacity(opacity);

  Color colorSchemeOnBackgroundWithOpacity(double opacity) =>
      colorSchemeOnBackground.withOpacity(opacity);

  Color colorSchemeOnErrorWithOpacity(double opacity) =>
      colorSchemeOnError.withOpacity(opacity);

  Color scaffoldBackgroundColorWithOpacity(double opacity) =>
      scaffoldBackgroundColor.withOpacity(opacity);

  Color primaryColorWithOpacity(double opacity) =>
      primaryColor.withOpacity(opacity);

  Color accentColorWithOpacity(double opacity) =>
      accentColor.withOpacity(opacity);

  Color errorColorWithOpacity(double opacity) =>
      errorColor.withOpacity(opacity);
}
