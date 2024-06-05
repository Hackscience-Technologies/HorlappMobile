import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff006591),
      surfaceTint: Color(0xff006591),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4eb9f8),
      onPrimaryContainer: Color(0xff00273c),
      secondary: Color(0xff40627a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc6e5ff),
      onSecondaryContainer: Color(0xff284b62),
      tertiary: Color(0xff81459a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffd896f1),
      onTertiaryContainer: Color(0xff3e0057),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff6faff),
      onBackground: Color(0xff171c20),
      surface: Color(0xfff6faff),
      onSurface: Color(0xff171c20),
      surfaceVariant: Color(0xffdae4ed),
      onSurfaceVariant: Color(0xff3f4850),
      outline: Color(0xff6f7881),
      outlineVariant: Color(0xffbec8d1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3135),
      inverseOnSurface: Color(0xffedf1f6),
      inversePrimary: Color(0xff89ceff),
      primaryFixed: Color(0xffc9e6ff),
      onPrimaryFixed: Color(0xff001e2f),
      primaryFixedDim: Color(0xff89ceff),
      onPrimaryFixedVariant: Color(0xff004c6e),
      secondaryFixed: Color(0xffc9e6ff),
      onSecondaryFixed: Color(0xff001e2f),
      secondaryFixedDim: Color(0xffa8cbe7),
      onSecondaryFixedVariant: Color(0xff274a61),
      tertiaryFixed: Color(0xfff8d8ff),
      onTertiaryFixed: Color(0xff320047),
      tertiaryFixedDim: Color(0xffebb2ff),
      onTertiaryFixedVariant: Color(0xff672c80),
      surfaceDim: Color(0xffd6dae0),
      surfaceBright: Color(0xfff6faff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f9),
      surfaceContainer: Color(0xffeaeef4),
      surfaceContainerHigh: Color(0xffe5e8ee),
      surfaceContainerHighest: Color(0xffdfe3e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff004768),
      surfaceTint: Color(0xff006591),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff007cb1),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff23465d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff567892),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff62287b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff995cb2),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6faff),
      onBackground: Color(0xff171c20),
      surface: Color(0xfff6faff),
      onSurface: Color(0xff171c20),
      surfaceVariant: Color(0xffdae4ed),
      onSurfaceVariant: Color(0xff3b444c),
      outline: Color(0xff576068),
      outlineVariant: Color(0xff727c84),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3135),
      inverseOnSurface: Color(0xffedf1f6),
      inversePrimary: Color(0xff89ceff),
      primaryFixed: Color(0xff007cb1),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00628d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff567892),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3d6078),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff995cb2),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff7e4397),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dae0),
      surfaceBright: Color(0xfff6faff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f9),
      surfaceContainer: Color(0xffeaeef4),
      surfaceContainerHigh: Color(0xffe5e8ee),
      surfaceContainerHighest: Color(0xffdfe3e8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff002538),
      surfaceTint: Color(0xff006591),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004768),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff002538),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff23465d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3c0054),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff62287b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6faff),
      onBackground: Color(0xff171c20),
      surface: Color(0xfff6faff),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdae4ed),
      onSurfaceVariant: Color(0xff1c252c),
      outline: Color(0xff3b444c),
      outlineVariant: Color(0xff3b444c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3135),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffdceeff),
      primaryFixed: Color(0xff004768),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003048),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff23465d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff063046),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff62287b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff490b63),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dae0),
      surfaceBright: Color(0xfff6faff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f9),
      surfaceContainer: Color(0xffeaeef4),
      surfaceContainerHigh: Color(0xffe5e8ee),
      surfaceContainerHighest: Color(0xffdfe3e8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff89ceff),
      surfaceTint: Color(0xff89ceff),
      onPrimary: Color(0xff00344d),
      primaryContainer: Color(0xff32a5e3),
      onPrimaryContainer: Color(0xff000f19),
      secondary: Color(0xffa8cbe7),
      onSecondary: Color(0xff0c344a),
      secondaryContainer: Color(0xff20435a),
      onSecondaryContainer: Color(0xffb6d9f6),
      tertiary: Color(0xffebb2ff),
      onTertiary: Color(0xff4e1167),
      tertiaryContainer: Color(0xffc585de),
      onTertiaryContainer: Color(0xff20002f),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff0f1418),
      onBackground: Color(0xffdfe3e8),
      surface: Color(0xff0f1418),
      onSurface: Color(0xffdfe3e8),
      surfaceVariant: Color(0xff3f4850),
      onSurfaceVariant: Color(0xffbec8d1),
      outline: Color(0xff88929b),
      outlineVariant: Color(0xff3f4850),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e8),
      inverseOnSurface: Color(0xff2c3135),
      inversePrimary: Color(0xff006591),
      primaryFixed: Color(0xffc9e6ff),
      onPrimaryFixed: Color(0xff001e2f),
      primaryFixedDim: Color(0xff89ceff),
      onPrimaryFixedVariant: Color(0xff004c6e),
      secondaryFixed: Color(0xffc9e6ff),
      onSecondaryFixed: Color(0xff001e2f),
      secondaryFixedDim: Color(0xffa8cbe7),
      onSecondaryFixedVariant: Color(0xff274a61),
      tertiaryFixed: Color(0xfff8d8ff),
      onTertiaryFixed: Color(0xff320047),
      tertiaryFixedDim: Color(0xffebb2ff),
      onTertiaryFixedVariant: Color(0xff672c80),
      surfaceDim: Color(0xff0f1418),
      surfaceBright: Color(0xff353a3e),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff171c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2f),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff93d2ff),
      surfaceTint: Color(0xff89ceff),
      onPrimary: Color(0xff001827),
      primaryContainer: Color(0xff32a5e3),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffaccfeb),
      onSecondary: Color(0xff001827),
      secondaryContainer: Color(0xff7395af),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffedb8ff),
      onTertiary: Color(0xff2a003c),
      tertiaryContainer: Color(0xffc585de),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0f1418),
      onBackground: Color(0xffdfe3e8),
      surface: Color(0xff0f1418),
      onSurface: Color(0xfff9fbff),
      surfaceVariant: Color(0xff3f4850),
      onSurfaceVariant: Color(0xffc2ccd5),
      outline: Color(0xff9aa4ad),
      outlineVariant: Color(0xff7b848d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e8),
      inverseOnSurface: Color(0xff262b2f),
      inversePrimary: Color(0xff004d70),
      primaryFixed: Color(0xffc9e6ff),
      onPrimaryFixed: Color(0xff00131f),
      primaryFixedDim: Color(0xff89ceff),
      onPrimaryFixedVariant: Color(0xff003a56),
      secondaryFixed: Color(0xffc9e6ff),
      onSecondaryFixed: Color(0xff00131f),
      secondaryFixedDim: Color(0xffa8cbe7),
      onSecondaryFixedVariant: Color(0xff143950),
      tertiaryFixed: Color(0xfff8d8ff),
      onTertiaryFixed: Color(0xff220032),
      tertiaryFixedDim: Color(0xffebb2ff),
      onTertiaryFixedVariant: Color(0xff54196d),
      surfaceDim: Color(0xff0f1418),
      surfaceBright: Color(0xff353a3e),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff171c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2f),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff9fbff),
      surfaceTint: Color(0xff89ceff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff93d2ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff9fbff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffaccfeb),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fa),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffedb8ff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0f1418),
      onBackground: Color(0xffdfe3e8),
      surface: Color(0xff0f1418),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff3f4850),
      onSurfaceVariant: Color(0xfff9fbff),
      outline: Color(0xffc2ccd5),
      outlineVariant: Color(0xffc2ccd5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e8),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff002d44),
      primaryFixed: Color(0xffd1eaff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff93d2ff),
      onPrimaryFixedVariant: Color(0xff001827),
      secondaryFixed: Color(0xffd1eaff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffaccfeb),
      onSecondaryFixedVariant: Color(0xff001827),
      tertiaryFixed: Color(0xfffadeff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffedb8ff),
      onTertiaryFixedVariant: Color(0xff2a003c),
      surfaceDim: Color(0xff0f1418),
      surfaceBright: Color(0xff353a3e),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff171c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2f),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
