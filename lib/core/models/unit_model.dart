class UnitModel {
  final String? id;
  final String unitName;
  final int bedrooms;
  final int bathrooms;
  final int squareFeet;
  final String notes;

  UnitModel({
    this.id,
    required this.unitName,
    required this.bedrooms,
    required this.bathrooms,
    required this.squareFeet,
    required this.notes,
  });
  factory UnitModel.fromMap(Map<String, dynamic> map) {
    return UnitModel(
      id: map['id'] != null ? map['id'] as String : null,
      unitName: map['unitName'] as String,
      bedrooms: map['bedrooms'] as int,
      bathrooms: map['bathrooms'] as int,
      squareFeet: map['squareFeet'] as int,
      notes: map['notes'] as String,
    );
  }
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'unitName': unitName,
      'bedrooms': bedrooms,
      'bathrooms': bathrooms,
      'squareFeet': squareFeet,
      'notes': notes,
    };
  }

  @override
  String toString() {
    return 'UnitModel(id: $id, unitName: $unitName, bedrooms: $bedrooms, bathrooms: $bathrooms, squareFeet: $squareFeet, notes: $notes)';
  }

  @override
  bool operator ==(covariant UnitModel other) {
    if (identical(this, other)) return true;
    return other.id == id &&
        other.unitName == unitName &&
        other.bedrooms == bedrooms &&
        other.bathrooms == bathrooms &&
        other.squareFeet == squareFeet &&
        other.notes == notes;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        unitName.hashCode ^
        bedrooms.hashCode ^
        bathrooms.hashCode ^
        squareFeet.hashCode ^
        notes.hashCode;
  }
}
