import 'locales/da.dart';
import 'locales/en.dart';

/// Returns an array of strings from one-nineteen
getNumsNames(String locale) {
  switch (locale) {
    case "da":
      return dariNumNames;
    case "en":
      return numNames;
    default:
      return numNames;
  }
}

/// Returns an array of strings from one-nineteen
getTensNames(String locale) {
  switch (locale) {
    case "da":
      return dariTensNames;
    case "en":
      return tensNames;
    default:
      return tensNames;
  }
}

/// Returns zero based on locale
getZero(String locale) {
  switch (locale) {
    case "da":
      return dariZero;
    case "en":
      return zero;
    default:
      return zero;
  }
}

/// Returns hundred based on locale
getHundred(String locale) {
  switch (locale) {
    case "da":
      return dariHundred;
    case "en":
      return hundred;
    default:
      return hundred;
  }
}

/// Returns thousand based on locale
getThousand(String locale) {
  switch (locale) {
    case "da":
      return dariThousand;
    case "en":
      return thousand;
    default:
      return thousand;
  }
}

/// Returns million based on locale
getMillion(String locale) {
  switch (locale) {
    case "da":
      return dariMillion;
    case "en":
      return million;
    default:
      return million;
  }
}

/// Returns billion based on locale
getBillion(String locale) {
  switch (locale) {
    case "da":
      return dariBillion;
    case "en":
      return billion;
    default:
      return billion;
  }
}
