import 'dart:math';

/// 生成不重复字符函数
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

/// 生成不重复字符串类
class GenerateUniqueString {
  int length;
  static final String base =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  final Random rdm = Random();

  GenerateUniqueString({this.length = 15});

  String getString({int length}) {
    length ??= this.length;
    if (length <= 0) {
      length = 15;
    }
    String str = '';
    var timeStamp =
        DateTime.now().millisecondsSinceEpoch.toString().substring(8, 13);
    if (length > 15) {
      for (int i = 0; i < 5; i++) {
        str += base[int.parse(timeStamp[i])];
      }
      length = length - 5;
    }
    for (int i = 0; i < length; i++) {
      if (i == 0) {
        str = base[rdm.nextInt(52)] + str;
        continue;
      }
      str += base[rdm.nextInt(62)];
    }
    return str;
  }
}
