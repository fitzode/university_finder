import 'package:flutter/widgets.dart';

class Routes {
  //*auth user
  static const String splashscreen = 'splash';
  static const String landingPage = 'landing_page';
  static const String joinusPage = 'join_us';

  static const String login = 'login';
  static const String signup = 'signup';
  static const String tabsPage = 'tabsPage';
  static const String home = "home";
  static const String search = "search";
  static const String news = "news";
  static const String account = "account";
  static const String singleschool = "singleschool";
  static const String imageViewer = "imageViewer";
  


  static Route<T> fadeThrough<T>(RouteSettings settings, WidgetBuilder page,
      {int duration = 300}) {
    return PageRouteBuilder<T>(
      settings: settings,
      transitionDuration: Duration(milliseconds: duration),
      pageBuilder: (context, animation, secondaryAnimation) => page(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}
