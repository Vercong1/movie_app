import 'package:flutter/material.dart';
import 'package:movie_app/Theme/app_colors.dart';
import 'package:movie_app/widgets/autf/autf_widget.dart';
import 'package:movie_app/widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: AppColors.mainDartBlue),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainDartBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      routes: {
        '/': (context) => AutfWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
      initialRoute: '/main_screen',
      onGenerateRoute: (RouteSettings settings) {
        // Начало исключения
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(child: Text('Произошла ошибка')),
          );
        });
      }, // Исключение для ошибок навигации (через pop можно возвращаться в предыдущее окно ( урок31))
    );
  }
}
