// ignore_for_file: constant_identifier_names

class Constants {
  static const String ASSET_IMAGES = "assets/images/";
  static final RegExp phoneNumberRegex = RegExp(r'^[1-9]\d{8,9}$');
  static final RegExp emailRegex =
      RegExp(r'^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$');
}
