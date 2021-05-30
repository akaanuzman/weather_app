import '../app/app_constants.dart';

class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = ImageConstants.init();
      return _instance!;
    }
  }

  ImageConstants.init();

  String get rainy2d => _getImagePath("rainy_2d");
  String get rainy => _getImagePath("rainy");
  String get snow2d => _getImagePath("snow_2d");
  String get snow => _getImagePath("snow");
  String get sunny2d => _getImagePath("sunny_2d");
  String get sunny => _getImagePath("sunny");
  String get thunder2d => _getImagePath("thunder_2d");
  String get thunder => _getImagePath("thunder");

  String _getImagePath(String name) => "${AppConstants.IMAGE_PATH}$name.png";
}
