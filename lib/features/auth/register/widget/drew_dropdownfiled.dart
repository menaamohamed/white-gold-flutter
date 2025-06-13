import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:white2_gold/features/auth/register/logic/register_provider.dart';

class CustomDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final registerProvider = context.watch<RegisterProvider>();

    if (registerProvider.countryLoading) {
      if (registerProvider.contries != null &&
          registerProvider.contries!.isNotEmpty) {
        return DropdownButtonFormField(
          alignment: Alignment.center,
          isExpanded: true,
          padding: const EdgeInsets.all(10),
          value: registerProvider.countrySelcted,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade300,
            border: InputBorder.none,
          ),
          items: registerProvider.contries!.map((value) {
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
            registerProvider.countrySelcted = newValue;
          },
        );
      } else {
        return Text("لا يتوافر بيانات ");
      }
    } else {
      return CircularProgressIndicator(); // Loading indicator
    }
  }
}
