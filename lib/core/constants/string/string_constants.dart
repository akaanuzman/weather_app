class StringConstants {
  static StringConstants? _instance;
  static StringConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = StringConstants.init();
      return _instance!;
    }
  }

  StringConstants.init();

  final String today = "Today";
  final String sevenDays = "7 days";
  final String updating = "Updating";
}
