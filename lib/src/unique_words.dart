import 'dart:math';

/// 生成唯一字符函数
String uniqueStr({int length = 15}) {
  final String base =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  Random rdm = Random();
  String str = '';
  for (var i = 0; i < length; i++) {
    if (i == 0) {
      str += base[rdm.nextInt(52)];
      continue;
    }
    str += base[rdm.nextInt(62)];
  }
  return str;
}
