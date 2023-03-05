import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Future NavigateAndFinish(context, Widget widget) =>
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => widget,
        ),
        (route) => false);

// ignore: non_constant_identifier_names
Future NavigateTo(context, Widget widget) =>
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => widget,
    ));

class txtFrmField extends StatelessWidget {
  txtFrmField({
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onPressed,
    this.obSecure = false,
    this.keyType = TextInputType.text,
    this.controller,
    this.validator,
    super.key,
  });
  String? labelText;
  String? hintText;
  IconData? prefixIcon;
  IconData? suffixIcon;
  VoidCallback? onPressed;
  bool obSecure;
  TextInputType keyType;
  TextEditingController? controller;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obSecure,
      keyboardType: keyType,
      style: const TextStyle(
        fontSize: 20,
      ),
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffF3F5F7),
          labelText: labelText,
          hintText: hintText,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: IconButton(
              onPressed: onPressed,
              icon: Icon(
                suffixIcon,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          contentPadding: EdgeInsets.all(25)),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity / 2,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [
            Color(0xff5151C6),
            Color(0xff888BF4),
          ],
        ),
      ),
      child: MaterialButton(
        height: 52,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
