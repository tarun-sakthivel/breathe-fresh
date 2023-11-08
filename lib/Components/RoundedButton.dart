import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.title,
    required this.color,
    @required this.onPessed,
  });
  final Color color;
  final String title;
  final dynamic onPessed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          //to make this as the froster glass design then you have to add the function of material button inside the froster class !
          onPressed: onPessed,
          minWidth: 300,
          height: 30,

          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white,
                wordSpacing: 2.0,
                letterSpacing: 1.5,
                fontSize: 22.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
