import 'package:flutter/material.dart';
import '../helpers/size_config.dart';
import '../helpers/constants.dart';

class BottomSheetWidget extends StatefulWidget {
  final String title;
  final VoidCallback onClicked;

  const BottomSheetWidget({Key? key, required this.title, required this.onClicked}) : super(key: key);

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/products');
      },
      child: Container(
        alignment: Alignment.center,
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight * 0.1,
        decoration: const BoxDecoration(
          color: primaryColor,
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(24),
            fontWeight: FontWeight.bold,
            color: white
          ),
        ),
      ),
    );
  }
}
