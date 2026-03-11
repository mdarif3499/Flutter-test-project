class ApiEndpoint {
  ApiEndpoint._internal();

  static const String _baseEndpoint = "https://ijarahub-app-dev.nexill.com/api/";


  static String viewProperties(String userId) => _endpoint("users/$userId/properties");
  static String propertiesUnit(String propertyId) => _endpoint("properties/$propertyId/units");


  ///Notification
  static String notificationAll() => _endpoint("notifications/all");
  static String notificationPropertiesId(String propertyId) => _endpoint("properties/$propertyId/notifications");
  static String notificationUnitId(String unitId) => _endpoint("units/$unitId/notifications");



// todo: properties endpoints
  // static String properties() => _endpoint("properties");
  // static String propertyDetails(String propertyId) => _endpoint("properties/$propertyId");
  static String addPropertyUnits(String propertyId) => _endpoint("properties/$propertyId/units");



  //todo: maintenance endpoints
  static String maintenanceRequests(String id) => _endpoint("maintenance-requests/$id");


  static String _endpoint(String endpoint) {
    return "$_baseEndpoint$endpoint";
  }



///////////////////////////////////////////////////////////
}
