class Config {
  static final Config _instance = Config._internal();

  Map configJson = {};

  factory Config() {
    return _instance;
  }

  Config._internal();

  setConfig(Map json) {
    configJson = json;
  }

  int get connectTimeOut => configJson['url']['connect_timeout'];
  int get receiveTimeout => configJson['url']['receive_timeout'];
}
