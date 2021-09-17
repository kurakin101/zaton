import 'dart:core';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:zaton/utils/Manager.dart';

// Наследуемся от виджета с состоянием,
// то есть виджет для изменения состояния которого не требуется пересоздавать его инстанс
class SplashScreen extends StatefulWidget {
  // переменная для хранения маршрута

  // конструктор, тело конструктора перенесено в область аргументов,
  // то есть сразу аргументы передаются в тело коструктора и устанавливаются внутренним переменным
  // Dart позволяет такое

  // все подобные виджеты должны создавать своё состояние,
  // нужно переопределять данный метод
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

// Создаём состояние виджета
class _SplashScreenState extends State<SplashScreen> {
  // Инициализация состояния
  @override
  void initState() {
    super.initState();
    // Создаём таймер, который должен будет переключить SplashScreen на HomeScreen через 2 секунды
    Timer(Duration(seconds: 2),
        // Для этого используется статический метод навигатора
        // Это очень похоже на передачу лямбда функции в качестве аргумента std::function в C++
            () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Manager()));        });
  }

  // Формирование виджета
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            ],
          ),
        ),
      ),
    );
  }
}
