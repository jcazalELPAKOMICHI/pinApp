import 'app_route_import.dart';

class AppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case PostPage.routeName:
        return MaterialPageRoute(builder: (context) => PostPage());
      case PostDetailPage.routeName:
        final post = routeSettings.arguments as PostEntity;
        return MaterialPageRoute(
          builder: (context) => PostDetailPage(post: post),
        );
      default:
        return MaterialPageRoute(
          builder:
              (context) =>
                  Scaffold(body: Center(child: Text('Page not found!'))),
        );
    }
  }
}
