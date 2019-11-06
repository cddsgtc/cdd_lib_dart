import '../lib/cdd_lib.dart';
import 'package:test/test.dart';

void main() {
  String str1 = uniqueStr();
  String str2 = uniqueStr();
  String str3 = uniqueStr(length: 10);
  group('uniqueStr test:', () {
    print('str1: $str1\nstr2: $str2\nstr3: $str3');
    test('默认的长度是 is 15', () {
      expect(str1.length, equals(15));
    });
    test('生成的不同的字符不同', () {
      expect(str1 != str2, equals(true));
    });
    test('传递参数lenght=10，那么长度应该是10', () {
      expect(str3.length, equals(10));
    });
    test('返回类型是String', () {
      expect(str1.runtimeType, equals(String));
    });
  });
}
