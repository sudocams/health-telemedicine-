import 'package:flutter/material.dart';
import 'package:health_care/Helper/Constant.dart';
import 'package:health_care/Localization/app_translations.dart';
import 'package:health_care/Screens/OnBoarding/OnBoardingComonView.dart';


void main() => runApp(new OnBoardingMedicine());

class OnBoardingMedicine extends StatefulWidget {
  @override
  _OnBoardingMedicineState createState() => _OnBoardingMedicineState();
}

class _OnBoardingMedicineState extends State<OnBoardingMedicine> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:setLocalView(
        AppImage.onBoardImg2,
        AppTranslations.of(context).text(AppTitle.onBoardTitle2),
        AppTranslations.of(context).text(AppString.onBoard2Descript),
        )
    );
  }
}