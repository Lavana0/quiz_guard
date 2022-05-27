import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../helpers/constants.dart';
import '../../helpers/size_config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final bool centerTitle;
  final bool leadingIcon;
  final IconData? actionIcon;
  final VoidCallback? function;
  const CustomAppBar({Key? key, required this.title, this.actionIcon, this.function, required this.centerTitle, required this.leadingIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AppBar(
      automaticallyImplyLeading: false,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light
      ),
      leading: leadingIcon ? IconButton(
        icon: Icon(Icons.arrow_back, size: getProportionateScreenWidth(22)),
        color: white,
        onPressed: (){
          Navigator.pop(context);
        },
      ) : null,
      title: Text(
        "${title}",
        style: TextStyle(
          fontSize: getProportionateScreenWidth(22),
          fontWeight: FontWeight.bold,
          color: white,
        ),
      ),
      backgroundColor: primaryColor,
      elevation: 0,
      centerTitle: centerTitle,
      actions: [
        IconButton(
          icon: Icon(actionIcon, size: getProportionateScreenWidth(20)),
          color: white,
          onPressed: (){
            function;
          }
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
