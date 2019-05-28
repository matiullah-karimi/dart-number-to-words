import 'numbers_helper.dart';

class NumberToWords {
  static String _convertLessThanOneThousand(int number, String locale) {
    String soFar;
    final numNames = getNumsNames(locale);
    final tensNames = getTensNames(locale);

    if (number % 100 < 20) {
      soFar = numNames[number % 100];
      number = (number ~/ 100).toInt();
    } else {
      soFar = numNames[number % 10];
      number = (number ~/ 10).toInt();

      soFar = tensNames[number % 10] + soFar;
      number = (number ~/ 10).toInt();
    }
    if (number == 0) {
      return soFar;
    }

    return numNames[number] + " ${getHundred(locale)} " + soFar;
  }

  static String convert(int number, String locale) {
    // 0 to 999 999 999 999
    if (number == 0) {
      return getZero(locale);
    }

    String snumber = number.toString().padLeft(12, "0");
    // XXXnnnnnnnnn
    int billions = int.parse(snumber.substring(0, 3));
    // nnnXXXnnnnnn
    int millions = int.parse(snumber.substring(3, 6));
    // nnnnnnXXXnnn
    int hundredThousands = int.parse(snumber.substring(6, 9));
    // nnnnnnnnnXXX
    int thousands = int.parse(snumber.substring(9, 12));

    String tradBillions = _getBillions(billions, locale);
    String result = tradBillions;

    String tradMillions = _getMillions(millions, locale);
    result = result + tradMillions;

    String tradHundredThousands = _getThousands(hundredThousands, locale);
    result = result + tradHundredThousands;

    String tradThousand;
    tradThousand = _convertLessThanOneThousand(thousands, locale);
    result = result + tradThousand;

    // remove extra spaces!
    return result.replaceAll("^\\s+", "").replaceAll("\\b\\s{2,}\\b", " ");
  }

  static String _getBillions(int billions, String locale) {
    String tradBillions;
    switch (billions) {
      case 0:
        tradBillions = "";
        break;
      case 1:
        tradBillions = _convertLessThanOneThousand(billions, locale) +
            " ${getBillion(locale)} ";
        break;
      default:
        tradBillions = _convertLessThanOneThousand(billions, locale) +
            " ${getBillion(locale)} ";
    }
    return tradBillions;
  }

  static String _getMillions(int millions, String locale) {
    String tradMillions;
    switch (millions) {
      case 0:
        tradMillions = "";
        break;
      case 1:
        tradMillions = _convertLessThanOneThousand(millions, locale) +
            " ${getMillion(locale)} ";
        break;
      default:
        tradMillions = _convertLessThanOneThousand(millions, locale) +
            " ${getMillion(locale)} ";
    }
    return tradMillions;
  }

  static String _getThousands(int hundredThousands, String locale) {
    String tradHundredThousands;
    switch (hundredThousands) {
      case 0:
        tradHundredThousands = "";
        break;
      case 1:
        tradHundredThousands =
            _convertLessThanOneThousand(hundredThousands, locale) +
                " ${getThousand(locale)} ";
        break;
      default:
        tradHundredThousands =
            _convertLessThanOneThousand(hundredThousands, locale) +
                " ${getThousand(locale)} ";
    }

    return tradHundredThousands;
  }

  static bool isNumeric(String nums) {
    if (nums == null || nums.trim().isEmpty) {
      return false;
    }

    return double.tryParse(nums) != null;
  }
}

