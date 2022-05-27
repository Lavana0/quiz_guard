import 'package:flutter/material.dart';
import '../helpers/size_config.dart';
import '../helpers/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_sheet.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Quiz Guard",
        centerTitle: false,
        leadingIcon: false,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              margin: const EdgeInsets.only(bottom: 50.0),
              padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
              decoration: BoxDecoration(
                color: accentColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Center(
                child: Text(
                  "What is the tallest mountain in Africa?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            _buildAnswer("Mount Elgon"),
            _buildAnswer("Mount Kilimanjaro"),
            _buildAnswer("Mount Kenya"),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              width: SizeConfig.screenWidth * 0.6,
              height: 45,
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/products');
                },
                child: const Text(
                  "Next Question",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                style: TextButton.styleFrom(
                    primary: primaryColor,
                    backgroundColor: Colors.grey.shade200
                ),
              ),
            )
          ],
        ),
      ),
      bottomSheet: BottomSheetWidget(
        title: "My Scans",
        onClicked: () {
          Navigator.pushNamed(context, '/products');
        },
      ),
    );
  }

  Widget _buildAnswer(String answer){
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: accentColor,
        borderRadius: BorderRadius.circular(20.0),
        onTap: (){},
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: white,
            border: Border.all(color: primaryColor),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            answer,
            style: const TextStyle(
              color: textColor,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    );
  }

}
