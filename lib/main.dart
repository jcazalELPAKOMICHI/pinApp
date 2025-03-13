import 'package:flutter/material.dart';
import 'package:pin_app/app.dart';
import 'package:pin_app/bootstrap.dart';
import 'package:pin_app/core/injectable/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await bootstrap(App.new);
}
