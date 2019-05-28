import 'package:test/test.dart';
import 'package:number_to_words/number_to_words.dart';

void main() {
  test('it converts the number to Dari words', () {
    final number = NumberToWords.convert(3, "da");
    expect(number, "سه");
  });

  test('it converts the number to English words', () {
    final number = NumberToWords.convert(3, "en");
    expect(number, "three");
  });
}
