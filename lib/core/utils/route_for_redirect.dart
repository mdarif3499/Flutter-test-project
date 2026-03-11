// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import '../routing/app_routes.dart';




class RouteForRedirect {
  final String route;
  final Map<String, String> queryParams;
  final Map<String, String> pathParameters;
  const RouteForRedirect({
    this.route = AppRoutes.initial,
    this.queryParams = const {},
    this.pathParameters = const {},
  });

  factory RouteForRedirect.fromMap(dynamic mapData) {
    final Map<String, dynamic> map = Map<String, dynamic>.from(mapData);

    return RouteForRedirect(
      route: map['route'] as String,
      queryParams: Map<String, String>.from((map['queryParams'])),
      pathParameters: Map<String, String>.from((map['pathParameters'])),
    );
  }

  RouteForRedirect copyWith({
    String? route,
    Map<String, String>? queryParams,
    Map<String, String>? pathParameters,
  }) {
    return RouteForRedirect(
      route: route ?? this.route,
      queryParams: queryParams ?? this.queryParams,
      pathParameters: pathParameters ?? this.pathParameters,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'route': route,
      'queryParams': queryParams,
      'pathParameters': pathParameters,
    };
  }

  String toJson() => json.encode(toMap());

  factory RouteForRedirect.fromJson(String source) =>
      RouteForRedirect.fromMap(Map<String, dynamic>.from(json.decode(source)));

  @override
  String toString() =>
      'RouteForRedirect(route: $route, queryParams: $queryParams, pathParameters: $pathParameters)';

  @override
  bool operator ==(covariant RouteForRedirect other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other.route == route &&
        mapEquals(other.queryParams, queryParams) &&
        mapEquals(other.pathParameters, pathParameters);
  }

  @override
  int get hashCode =>
      route.hashCode ^ queryParams.hashCode ^ pathParameters.hashCode;
}
