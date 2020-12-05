import 'package:flutter/material.dart';
import 'package:health_care/Helper/Constant.dart';
import 'package:health_care/Localization/app_translations.dart';
import 'package:health_care/Screens/OnBoarding/OnBoardingComonView.dart';



void main() => runApp(new OnBoardingDoctor());

class OnBoardingDoctor extends StatefulWidget {
  @override
  _OnBoardingDoctorState createState() => _OnBoardingDoctorState();
}

class _OnBoardingDoctorState extends State<OnBoardingDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:setLocalView(
        AppImage.onBoardImg1,
        AppTranslations.of(context).text(AppTitle.onBoardTitle1),
        AppTranslations.of(context).text(AppString.onBoard1Descript),
        )
    );
  }
}