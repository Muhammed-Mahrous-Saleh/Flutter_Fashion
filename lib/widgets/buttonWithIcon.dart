import 'package:fashions/screens/categories_screen.dart';
import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  final Color buttonColor;
  final Color buttonTextColor;
  final GlobalKey<FormState> formKey;
  final String buttonText;
  final Color borderSideColor;
  final IconData buttonIcon;
  const ButtonWithIcon(
      {super.key,
      required this.buttonColor,
      required this.buttonTextColor,
      required this.buttonText,
      required this.formKey,
      required this.buttonIcon,
      this.borderSideColor = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(buttonColor),
        ),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const Categories()),
              ModalRoute.withName('//'),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(buttonIcon, color: buttonTextColor),
              SizedBox(width: 12),
              Text(
                buttonText,
                style: TextStyle(color: buttonTextColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
