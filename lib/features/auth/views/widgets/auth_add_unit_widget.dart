import 'package:flutter/material.dart';
import 'package:ijarahub/core/models/unit_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ijarahub/core/utils/text_field_validator.dart';
import 'package:ijarahub/core/widgets/primary_button.dart';
import 'package:ijarahub/l10n/app_localizations.dart';

import '../../../../core/widgets/form_field_with_title.dart';

class AuthAddUnitWidget extends StatefulWidget {
  final Function(UnitModel unit) onUnitAdded;

  const AuthAddUnitWidget({super.key, required this.onUnitAdded});

  @override
  State<AuthAddUnitWidget> createState() => _AuthAddUnitWidgetState();
}

class _AuthAddUnitWidgetState extends State<AuthAddUnitWidget>
    with TextFieldValidationMixin {
  final TextEditingController _unitNameController = TextEditingController();
  final TextEditingController _bedroomsController = TextEditingController();
  final TextEditingController _bathroomsController = TextEditingController();
  final TextEditingController _squareFeetController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();

  final GlobalKey<FormState> _unitFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _unitNameController.dispose();
    _bedroomsController.dispose();
    _bathroomsController.dispose();
    _squareFeetController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _addUnit() {
    if (_unitFormKey.currentState!.validate()) {
      final unit = UnitModel(
        unitName: _unitNameController.text,
        bedrooms: int.tryParse(_bedroomsController.text) ?? 0,
        bathrooms: int.tryParse(_bathroomsController.text) ?? 0,
        squareFeet: int.tryParse(_squareFeetController.text) ?? 0,
        notes: _notesController.text,
      );
      widget.onUnitAdded(unit);
      _unitFormKey.currentState!.reset();
      _unitNameController.clear();
      _bedroomsController.clear();
      _bathroomsController.clear();
      _squareFeetController.clear();
      _notesController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    return Form(
      key: _unitFormKey,
      child: Column(
        children: [
          FormFieldWithTitle(
            textEditingController: _unitNameController,
            labelText: appLocalizations.unitNameNumber,
            title: appLocalizations.unitNameNumber,
            onChange: (text) {},
            validator: (text) => textFieldValidator(
              textForValidation: text,
              inputFieldType: InputFieldType.normal,
            ),
          ),
          SizedBox(height: 20.h),
          FormFieldWithTitle(
            textEditingController: _bedroomsController,
            labelText: appLocalizations.unitNumberOfBedrooms,
            title: appLocalizations.unitNumberOfBedrooms,
            textInputType: TextInputType.number,
            onChange: (text) {},
            validator: (text) => textFieldValidator(
              textForValidation: text,
              inputFieldType: InputFieldType.number,
            ),
          ),
          SizedBox(height: 20.h),
          FormFieldWithTitle(
            textEditingController: _bathroomsController,
            labelText: appLocalizations.unitNumberOfBathrooms,
            title: appLocalizations.unitNumberOfBathrooms,
            textInputType: TextInputType.number,
            onChange: (text) {},
            validator: (text) => textFieldValidator(
              textForValidation: text,
              inputFieldType: InputFieldType.number,
            ),
          ),
          SizedBox(height: 20.h),
          FormFieldWithTitle(
            textEditingController: _squareFeetController,
            labelText: appLocalizations.unitSquareFeet,
            title: appLocalizations.unitSquareFeet,
            textInputType: TextInputType.number,
            onChange: (text) {},
            validator: (text) => textFieldValidator(
              textForValidation: text,
              inputFieldType: InputFieldType.number,
            ),
          ),
          SizedBox(height: 20.h),
          FormFieldWithTitle(
            textEditingController: _notesController,
            labelText: appLocalizations.commonNotes,
            title: appLocalizations.commonNotes,
            addStar: false,
            multiline: true,

            height: 100.h,
            onChange: (text) {},
            validator: (text) => null,
          ),
          SizedBox(height: 20.h),
          PrimaryButton(
            padding: EdgeInsets.all(0.r),
            text: appLocalizations.propertyAddUnit,
            onTap: _addUnit,
          ),
        ],
      ),
    );
  }
}
