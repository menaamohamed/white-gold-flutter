import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:white2_gold/core/extention/empty_sized_box.dart';
import 'package:white2_gold/features/auth/register/logic/register_provider.dart';

class CustomDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final registerProvider = context.watch<RegisterProvider>();
    return Column(
      children: [
        // Country Dropdown
        registerProvider.countryLoading
            ? _drewDropCountry(registerProvider)
            : CircularProgressIndicator(color: Colors.black),
        15.sbH,
        registerProvider.regionsLoading
            ? registerProvider.regions != null &&
                      registerProvider.regions!.isNotEmpty
                  ? _buildRegionDropdown(registerProvider)
                  : Text("لا يتوافر بيانات ")
            : CircularProgressIndicator(color: Colors.grey),
      ],
    );
  }

  Widget _drewDropCountry(RegisterProvider register) {
    return DropdownButtonFormField(
      alignment: Alignment.center,
      isExpanded: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey,
        border: InputBorder.none,
      ),
      value: register.countrySelcted,
      items: register.contries!.map((value) {
        return DropdownMenuItem(
          value: value.id,
          child: Text(value.name.toString()),
        );
      }).toList(),
      onChanged: (newValue) {
        register.countrySelcted = newValue;
        register.regionsLoading = false;
        register.getAllRegions(countryId: newValue);
      },
    );
  }

  Widget _buildRegionDropdown(RegisterProvider registerProvider) {
    return DropdownButtonFormField(
      alignment: Alignment.center,
      isExpanded: true,
      padding: const EdgeInsets.all(10),
      value: registerProvider.regionsSelcted,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade300,
        border: InputBorder.none,
      ),
      items: registerProvider.regions!.map((value) {
        return DropdownMenuItem(
          value: value.id,
          child: Text(
            value.name.toString(),
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            maxLines: 1,
          ),
        );
      }).toList(),
      onChanged: (newValue) {
        registerProvider.regionsSelcted = newValue;
      },
    );
  }
}
