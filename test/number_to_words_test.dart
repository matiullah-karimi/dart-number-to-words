import 'package:test/test.dart';
import 'package:number_to_words/number_to_words.dart';

void main() {
  test('it converts the number to Dari words', () {
    String words = NumberToWords.convert(3, "da");
    expect(words.trim(), "سه");
  });

  test('it converts the number to English words', () {
    String words = NumberToWords.convert(3, "en");
    expect(words.trim(), "three");
  });
}
