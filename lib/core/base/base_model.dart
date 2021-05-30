import 'package:weather_app/core/constants/image/image_constants.dart';

abstract class BaseModel{
  ImageConstants get imageConstants => ImageConstants.init();
}