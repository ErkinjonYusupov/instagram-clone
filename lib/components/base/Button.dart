import 'package:intagram_clone_ui/config/Imports.dart';

class Button extends StatelessWidget {
  Color color, textColor;
  String? text;
  IconData? icon;
  Button({
    super.key,
    required this.color,
    required this.textColor,
    this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 16),
      decoration:  BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(3))),
      child:  
      text == null ? Icon(icon,size: 20,):
      Text(
        text!,
        textAlign: TextAlign.center,
        style:  TextStyle(color: textColor, fontWeight: FontWeight.w700),
      ),
     
      
    );
  }
}

class Statics extends StatelessWidget {
  String count;
  String text;
  Statics({
    super.key,
    required this.text,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        Text(text, style: const TextStyle(fontWeight: FontWeight.w400)),
      ],
    );
  }
}
