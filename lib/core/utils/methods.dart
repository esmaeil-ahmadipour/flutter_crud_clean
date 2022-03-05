bool isNonLatinEmailAddress(String text) {
  text = text.replaceAll("@", "");
  text = text.replaceAll(".", "");
  for (var element in text.codeUnits) {
    if (!(element >= 65 && element <= 90) &&
        !(element >= 97 && element <= 122) &&
        !(element >= 48 && element <= 57)) {
      return true;
    }
  }
  return false;
}