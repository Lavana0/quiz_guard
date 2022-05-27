import 'package:flutter/material.dart';
import '../helpers/size_config.dart';
import '../helpers/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_sheet.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(30.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Quiz Guard",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: SizeConfig.screenWidth * 0.6,
                height: 45,
                child: TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  style: TextButton.styleFrom(
                      primary: primaryColor,
                      backgroundColor: Colors.white
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
