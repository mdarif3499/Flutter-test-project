import 'package:get/get.dart';

import '../../l10n/app_localizations.dart';

// ROLE_LAND_LORD_USER
// ROLE_TENENT_USER
// ROLE_PROPERTY_MANAGER_USER

enum UserRolesEnum {
  landLord("ROLE_LAND_LORD_USER"),
  tenant("ROLE_TENENT_USER"),
  propertyManager("ROLE_PROPERTY_MANAGER_USER"),
  maintancePerson("ROLE_MAINTANCE_PERSON_USER"),
  user("ROLE_USER");

  final String _key;
  const UserRolesEnum(this._key);

  String get key => _key;

  String get text {
    final context = Get.context;
    if (context != null) {
      final localizations = AppLocalizations.of(context);
      if (localizations != null) {
        switch (_key) {
          case "ROLE_LAND_LORD_USER":
            return localizations.roleLandlord;
          case "ROLE_TENENT_USER":
            return localizations.roleTenant;
          case "ROLE_PROPERTY_MANAGER_USER":
            return localizations.rolePropertyManager;
          case "ROLE_MAINTANCE_PERSON_USER":
            return localizations.roleMaintenancePerson;
          case "ROLE_USER":
            return localizations.roleUser;

          default:
            return localizations.roleUnknown;
        }
      }
    }

    return _key;
  }

  static UserRolesEnum fromString(String roleString) {
    for (var role in values) {
      if (role._key == roleString) {
        return role;
      }
    }
    return user;
  }
}
