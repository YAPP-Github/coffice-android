import 'package:cafe_app/cafe_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await NaverMapSdk.instance.initialize(
      clientId: 'lr0sf4t46c',
      onAuthFailed: (error) {
        if (kDebugMode) {
          print('Auth failed: $error');
        }
      });
  runApp(const CafeApp());
}
