import 'constant.dart';

class AppImage {
  static String getImagePath(String name) {
    return Constants.ASSET_IMAGES + name;
  }

  static final String placeholder = getImagePath('placeholder.jpg');
  static final String google = getImagePath('google.png');
  static final String facebook = getImagePath('facebook.png');
}
