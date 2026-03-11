class PhoneNumberClean {
  static String phoneNumberCreator(
    String phoneDialCode,
    String userTypedNumber,
  ) {
    final String phoneNumber = '$phoneDialCode${userTypedNumber.trim()}';
    return phoneNumber.replaceAll(RegExp(r'[^0-9]'), '');
  }
}
