import 'package:collection/collection.dart';

class PropertyModel {
  final String id;
  final String name;
  final String address;
  final String city;
  final String zipCode;
  final String state;
  final List<String> units;
  final List<Map<String, String>> documents;
  final double? totalRent;
  final int? occupiedUnitsCount;
  final int? vacantUnitsCount;

  PropertyModel({
    required this.id,
    required this.name,
    required this.address,
    required this.city,
    required this.zipCode,
    required this.state,
    required this.units,
    required this.documents,
    this.totalRent,
    this.occupiedUnitsCount,
    this.vacantUnitsCount,
  });

  factory PropertyModel.fromMap(Map<String, dynamic> map) {
    return PropertyModel(
      id: map['id'] as String,
      name: map['name'] as String,
      address: map['address'] as String,
      city: map['city'] as String,
      zipCode: map['zipCode'] as String,
      state: map['state'] as String,
      units: List<String>.from(map['units'] as List<dynamic>),
      documents: List<Map<String, String>>.from(
        (map['documents'] as List<dynamic>).map(
          (doc) => Map<String, String>.from(doc as Map),
        ),
      ),
      totalRent: (map['totalRent'] as num?)?.toDouble(),
      occupiedUnitsCount: map['occupiedUnitsCount'] as int?,
      vacantUnitsCount: map['vacantUnitsCount'] as int?,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'address': address,
      'city': city,
      'zipCode': zipCode,
      'state': state,
      'units': units,
      'documents': documents,
      'totalRent': totalRent,
      'occupiedUnitsCount': occupiedUnitsCount,
      'vacantUnitsCount': vacantUnitsCount,
    };
  }

  @override
  String toString() {
    return 'PropertyModel(id: $id, name: $name, address: $address, city: $city, zipCode: $zipCode, state: $state, units: $units, documents: $documents, totalRent: $totalRent, occupiedUnitsCount: $occupiedUnitsCount, vacantUnitsCount: $vacantUnitsCount)';
  }

  @override
  bool operator ==(covariant PropertyModel other) {
    if (identical(this, other)) return true;
    return other.id == id &&
        other.name == name &&
        other.address == address &&
        other.city == city &&
        other.zipCode == zipCode &&
        other.state == state &&
        ListEquality().equals(other.units, units) &&
        ListEquality().equals(other.documents, documents) &&
        other.totalRent == totalRent &&
        other.occupiedUnitsCount == occupiedUnitsCount &&
        other.vacantUnitsCount == vacantUnitsCount;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        address.hashCode ^
        city.hashCode ^
        zipCode.hashCode ^
        state.hashCode ^
        units.hashCode ^
        documents.hashCode ^
        totalRent.hashCode ^
        occupiedUnitsCount.hashCode ^
        vacantUnitsCount.hashCode;
  }
}
