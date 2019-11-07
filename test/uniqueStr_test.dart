import 'package:cdd_lib/cdd_lib.dart';
import 'package:test/test.dart';

void toTest({String startStr, String str1, String str2, String str3}) {
  group(startStr, () {
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

void main() async {
  GenerateUniqueString gstr = GenerateUniqueString();
  String str1 = gstr.getString();
  String str2 = gstr.getString();
  String str3 = gstr.getString(length: 10);
  await toTest(
      startStr: 'GenerateUniqueString test:',
      str1: str1,
      str2: str2,
      str3: str3);
  print('second test');
  toTest(
      startStr: 'uniqueStr test:',
      str1: uniqueStr(),
      str2: uniqueStr(),
      str3: uniqueStr(length: 10));
}
