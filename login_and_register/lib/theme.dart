import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8e4955),
      surfaceTint: Color(0xff8e4955),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffd9dd),
      onPrimaryContainer: Color(0xff3b0714),
      secondary: Color(0xff436833),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc4efac),
      onSecondaryContainer: Color(0xff062100),
      tertiary: Color(0xff715189),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfff2daff),
      onTertiaryContainer: Color(0xff2a0c41),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      onSurfaceVariant: Color(0xff524345),
      outline: Color(0xff847374),
      outlineVariant: Color(0xffd7c1c3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xffffb2bc),
      primaryFixed: Color(0xffffd9dd),
      onPrimaryFixed: Color(0xff3b0714),
      primaryFixedDim: Color(0xffffb2bc),
      onPrimaryFixedVariant: Color(0xff72333e),
      secondaryFixed: Color(0xffc4efac),
      onSecondaryFixed: Color(0xff062100),
      secondaryFixedDim: Color(0xffa8d292),
      onSecondaryFixedVariant: Color(0xff2c4f1d),
      tertiaryFixed: Color(0xfff2daff),
      onTertiaryFixed: Color(0xff2a0c41),
      tertiaryFixedDim: Color(0xffdeb8f7),
      onTertiaryFixedVariant: Color(0xff583a6f),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6d2f3a),
      surfaceTint: Color(0xff8e4955),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa85f6a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff284b1a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff597e47),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff54366b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8868a0),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      onSurfaceVariant: Color(0xff4e3f41),
      outline: Color(0xff6b5b5d),
      outlineVariant: Color(0xff887678),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xffffb2bc),
      primaryFixed: Color(0xffa85f6a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8b4752),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff597e47),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff416531),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff8868a0),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6e4f86),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff440e1b),
      surfaceTint: Color(0xff8e4955),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6d2f3a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff082900),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff284b1a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff311448),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff54366b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2d2122),
      outline: Color(0xff4e3f41),
      outlineVariant: Color(0xff4e3f41),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xffffe6e8),
      primaryFixed: Color(0xff6d2f3a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff511925),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff284b1a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff123405),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff54366b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3c1f53),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb2bc),
      surfaceTint: Color(0xffffb2bc),
      onPrimary: Color(0xff561d28),
      primaryContainer: Color(0xff72333e),
      onPrimaryContainer: Color(0xffffd9dd),
      secondary: Color(0xffa8d292),
      onSecondary: Color(0xff163808),
      secondaryContainer: Color(0xff2c4f1d),
      onSecondaryContainer: Color(0xffc4efac),
      tertiary: Color(0xffdeb8f7),
      onTertiary: Color(0xff402357),
      tertiaryContainer: Color(0xff583a6f),
      onTertiaryContainer: Color(0xfff2daff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101418),
      onSurface: Color(0xffe0e2e8),
      onSurfaceVariant: Color(0xffd7c1c3),
      outline: Color(0xff9f8c8e),
      outlineVariant: Color(0xff524345),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff8e4955),
      primaryFixed: Color(0xffffd9dd),
      onPrimaryFixed: Color(0xff3b0714),
      primaryFixedDim: Color(0xffffb2bc),
      onPrimaryFixedVariant: Color(0xff72333e),
      secondaryFixed: Color(0xffc4efac),
      onSecondaryFixed: Color(0xff062100),
      secondaryFixedDim: Color(0xffa8d292),
      onSecondaryFixedVariant: Color(0xff2c4f1d),
      tertiaryFixed: Color(0xfff2daff),
      onTertiaryFixed: Color(0xff2a0c41),
      tertiaryFixedDim: Color(0xffdeb8f7),
      onTertiaryFixedVariant: Color(0xff583a6f),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb8c1),
      surfaceTint: Color(0xffffb2bc),
      onPrimary: Color(0xff33030f),
      primaryContainer: Color(0xffc97a86),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffadd796),
      onSecondary: Color(0xff041b00),
      secondaryContainer: Color(0xff749b61),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffe2bdfc),
      onTertiary: Color(0xff24063b),
      tertiaryContainer: Color(0xffa683be),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101418),
      onSurface: Color(0xfff9faff),
      onSurfaceVariant: Color(0xffdbc6c7),
      outline: Color(0xffb29ea0),
      outlineVariant: Color(0xff917f80),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff73343f),
      primaryFixed: Color(0xffffd9dd),
      onPrimaryFixed: Color(0xff2c000a),
      primaryFixedDim: Color(0xffffb2bc),
      onPrimaryFixedVariant: Color(0xff5d222e),
      secondaryFixed: Color(0xffc4efac),
      onSecondaryFixed: Color(0xff031500),
      secondaryFixedDim: Color(0xffa8d292),
      onSecondaryFixedVariant: Color(0xff1c3e0e),
      tertiaryFixed: Color(0xfff2daff),
      onTertiaryFixed: Color(0xff1f0136),
      tertiaryFixedDim: Color(0xffdeb8f7),
      onTertiaryFixedVariant: Color(0xff46295d),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f9),
      surfaceTint: Color(0xffffb2bc),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffb8c1),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff2ffe5),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffadd796),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fb),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe2bdfc),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101418),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffff9f9),
      outline: Color(0xffdbc6c7),
      outlineVariant: Color(0xffdbc6c7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff4e1622),
      primaryFixed: Color(0xffffdfe2),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb8c1),
      onPrimaryFixedVariant: Color(0xff33030f),
      secondaryFixed: Color(0xffc8f3b0),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffadd796),
      onSecondaryFixedVariant: Color(0xff041b00),
      tertiaryFixed: Color(0xfff5e0ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe2bdfc),
      onTertiaryFixedVariant: Color(0xff24063b),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
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
