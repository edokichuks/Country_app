class AppApiData {
  static const String scheme = 'https';
  static const String host = 'restcountries.com';
  static Uri baseUri(String path) => Uri(
        scheme: scheme,
        host: host,
        path: '/v3.1/$path',
      );
}


// https://restcountries.com/v3.1/all