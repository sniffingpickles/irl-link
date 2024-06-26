import 'package:flutter/material.dart';

class Themes {
  final ThemeData darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      background: const Color(0xFF0e0e10),
      secondary: const Color(0xFF18181b),
      error: const Color(0xFFEC0808),

      //buttons color
      tertiary: Colors.deepPurpleAccent[200],
      tertiaryContainer: Colors.grey[850],
    ),
    textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.white)),
    primaryIconTheme: const IconThemeData(color: Colors.white),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[600]!),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[600]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.deepPurpleAccent[200]!),
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.white;
          }
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          return Colors.white;
        },
      ),
      trackColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.deepPurpleAccent[200];
          }
          if (states.contains(MaterialState.disabled)) {
            return Colors.grey[850];
          }
          return Colors.grey[850];
        },
      ),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: Colors.deepPurpleAccent[200],
      inactiveTrackColor: Colors.grey[850],
      thumbColor: Colors.white,
      // overlayColor: Colors.deepPurpleAccent[200],
      // trackHeight: 2,
      // thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
      // overlayShape: const RoundSliderOverlayShape(overlayRadius: 16),
    ),
  );

  final ThemeData lightTheme = ThemeData.light().copyWith(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      background: const Color(0xFFffffff),
      secondary: const Color(0xFFefeff1),
      error: const Color(0xFFEC0808),

      //buttons color
      tertiary: Colors.deepPurpleAccent[200],
      tertiaryContainer: Colors.grey[850],
    ),
    textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.black)),
    primaryIconTheme: const IconThemeData(color: Colors.black),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.white;
          }
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          return Colors.white;
        },
      ),
      trackColor: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.deepPurpleAccent[200];
          }
          if (states.contains(MaterialState.disabled)) {
            return Colors.grey[850];
          }
          return Colors.grey[850];
        },
      ),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: Colors.deepPurpleAccent[200],
      inactiveTrackColor: Colors.grey[850],
      thumbColor: Colors.deepPurpleAccent[400],
      // overlayColor: Colors.deepPurpleAccent[200],
      // trackHeight: 2,
      // thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
      // overlayShape: const RoundSliderOverlayShape(overlayRadius: 16),
    ),
  );
}
