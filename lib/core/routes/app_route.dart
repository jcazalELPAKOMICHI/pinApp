import 'package:flutter/material.dart';
import 'package:pin_app/features/post/presentation/screen/post_page.dart';

class AppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case PostPage.routeName:
        return MaterialPageRoute(builder: (context) => PostPage());
      default:
        return MaterialPageRoute(
          builder:
              (context) =>
                  Scaffold(body: Center(child: Text('Page not found!'))),
        );
    }
  }
}
