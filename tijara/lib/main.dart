import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tijara/routes/app_routes.dart';
import 'package:tijara/views/auth/login/login_view.dart';
import 'package:tijara/views/home/home_view.dart';
import 'package:tijara/views/listing/listing_detail_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen_route',
      getPages: AppRoutes.appRoutes(),
    );
  }
}