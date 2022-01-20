import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:univfinder/model/schools.dart';
import 'package:univfinder/screens/components/account.dart';
import 'package:univfinder/screens/components/home_components/single_school.dart';
import 'package:univfinder/screens/components/news.dart';
import 'package:univfinder/screens/components/search.dart';
import 'package:univfinder/screens/components/widget/image_viewer.dart';
import 'package:univfinder/screens/tabs_main_body.dart';

import 'routes.dart';
import 'screens/components/home.dart';
import 'screens/landing_page.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // Set to true
      locale: DevicePreview.locale(context),
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      initialRoute: Routes.landingPage,
      onGenerateRoute: (RouteSettings settings) {
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.landingPage:
              return const LandingPage();
            case Routes.tabsPage:
              return const TabsMainBody();
            case Routes.home:
              return const Home();
            case Routes.search:
              return const SearchPage();
            case Routes.news:
              return const NewsPage();
            case Routes.account:
              return const AccountPage();
            case Routes.singleschool:
              final args = settings.arguments as Schools;

              return SingleSchool(args);
            case Routes.imageViewer:
              final args = settings.arguments;
              if (args is String) {
                return ImageViewer(args);
              } else {
                return const ImageViewer('null');
              }

            default:
              return const SizedBox.shrink();
          }
        });
      },
    );
  }
}
