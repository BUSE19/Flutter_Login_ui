import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_screen/compenents/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChange;
  final bool isEmail;
  final bool isPassword;
  const RoundedInputField(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.onChange,
      required this.isEmail,
      required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChange,
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            //color: Color(0xFF3D56),
          ),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              gapPadding: 1.0,
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey.shade200)),
          fillColor: Colors.grey.shade200,
        ),
      ),
    );
  }
}
