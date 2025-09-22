enum AddressType { home, office, other }

class AddressModel {
  final String id;
  final String label;
  final String fullAdderss;
  final String city;
  final String state;
  final String zipCode;
  final bool isDefault;
  final AddressType type;

  AddressModel({
    required this.id,
    required this.label,
    required this.fullAdderss,
    required this.city,
    required this.state,
    required this.zipCode,
    this.isDefault = false,
    this.type = AddressType.home,
  });

  String get typeString => type.name;
}
