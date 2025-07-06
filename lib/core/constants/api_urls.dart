class ApiUrls {
  static const String _devBaseURL = 'http://10.0.2.2:8080/';
  static const String _prodBaseURL =
      'https://edumate-production-d74d.up.railway.app/';

  static const bool _isProduction = true;
  static String get _baseURL => _isProduction ? _prodBaseURL : _devBaseURL;

  static String get register => '${_baseURL}api/v1/auth/register';
  static String get login => '${_baseURL}api/v1/auth/login';
  static String get userProfile => '${_baseURL}api/v1/auth/me';
}
