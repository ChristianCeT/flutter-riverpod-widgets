import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider((ref) => false);

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//Un simple int mantener una pieza de estado
final selectedColorProvider = StateProvider((ref) => 0);

//Un estado más elaborado: Statenotifier
//Primer valor el control y la instancia del estado
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//Puede ser Controller - Mantiene una instancia de AppTheme
class ThemeNotifier extends StateNotifier<AppTheme> {
  //Crear primer instancia con valores por defecto
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorNotifier(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
