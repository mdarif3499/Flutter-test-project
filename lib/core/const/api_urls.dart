class ApiUrls {
  static const String _baseUrl = "https://dummyjson.com";
  // static const String _baseUrl = "http://10.0.30.163:5000";
  static const String loginUrl = "$_baseUrl/auth/login";

  static String productsUrl(int limit, int skip) =>
      "$_baseUrl/products?limit=$limit&skip=$skip";
  static String postsUrl(int limit, int skip) => "$_baseUrl/posts?limit=$limit&skip=$skip";

}
