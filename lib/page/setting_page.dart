import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('서비스 이용약관'),
        Text('개인정보 처리방침'),
        Text('위치서비스 이용약관'),
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const LicensePage()));
          },
          child: Text('오픈소스라이선스'),
        ),
        Text('버전정보'),
        Text('로그아웃'),
        Text('회원탈퇴'),
      ],
    );
  }
}
