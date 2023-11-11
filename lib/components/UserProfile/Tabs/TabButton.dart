import 'package:intagram_clone_ui/config/Imports.dart';

class TabBuuton extends StatelessWidget {
  String icon;
  Function onTap;
  bool selected;
  TabBuuton(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.selected});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: SvgPicture.asset(
              icon,
              color: selected ?  context.theme.primaryColor : kulrang.withOpacity(0.8),
            )),
      ),
    );
  }
}