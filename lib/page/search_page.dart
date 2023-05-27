import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return NaverMap(
      options: const NaverMapViewOptions(),
      onMapReady: (controller) {
        if (kDebugMode) {
          print("네이버 맵 로딩됨!");
        }
      },
    );
  }

}
