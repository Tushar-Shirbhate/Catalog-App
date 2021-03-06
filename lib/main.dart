import 'package:flutter/material.dart';
import 'package:tushar4/core/store.dart';
import 'package:tushar4/pages/cart_page.dart';
import 'package:tushar4/pages/home_detail_page.dart';
import 'package:tushar4/pages/login_page.dart';
import 'package:tushar4/utils/routes.dart';
import 'package:tushar4/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_strategy/url_strategy.dart';
import 'pages/home_page.dart';


void main(){
  setPathUrlStrategy();
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key?   key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      // routeInformationParser: VxInformationParser(),
      // routerDelegate: VxNavigator(routes:{
      //   "/": (_, __)=> MaterialPage(child: LoginPage()),
      //   MyRoutes.homeRoute: (_, __) => MaterialPage(child: HomePage()),
      //   MyRoutes.homeDetailsRoute: (uri, _) {
      //     final catalog = (VxState.store as MyStore)
      //     .catalog!
      //     .getById(int.parse(uri.queryParameters["id"]));
      //     return MaterialPage(
      //         child:HomeDetailPage(
      //           catalog: catalog,
      //         ));
      //   },
      //   MyRoutes.loginRoute: (_, __) => MaterialPage(child: LoginPage()),
      //   MyRoutes.cartRoute: (_, __) => MaterialPage(child: CartPage()),
      // }),
      initialRoute: MyRoutes.homeRoute,
      routes:{
        "/": (context)=> LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}