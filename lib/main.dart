import 'package:flutter/material.dart';
import 'package:foody_app/features/login/presentation/views/login_view.dart';
import 'package:foody_app/features/register/presentation/views/register_view.dart';
import 'package:foody_app/features/splash/presentation/views/splash_view.dart';
import 'package:foody_app/features/verify/presentation/views/verify_view.dart';

void main() {
  runApp(const FoodyApp());
}

class FoodyApp extends StatelessWidget {
  const FoodyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: VerifyView(),
      ),
    );
  }
}
