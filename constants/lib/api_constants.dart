
enum Mode { live, test, dev }

class APIConfigURL {
  static Mode mode = Mode.live;

  static String ssoBaseUrl = 'https://sso.api.dev.ebs.io/';
  static String baseUrl = 'https://chat.api.dev.ebs.io/api/v2/';

  static String xApiKey = 'e54f6ed4520845d5a9ff4c0b26d5a378';

  static initConfigs() {

  }
}