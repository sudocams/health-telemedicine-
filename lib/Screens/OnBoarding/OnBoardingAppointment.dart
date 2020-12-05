import 'package:flutter/material.dart';
import 'package:health_care/Helper/Constant.dart';
import 'package:health_care/Helper/SharedManager.dart';
import 'package:health_care/Localization/app_translations.dart';
import 'package:health_care/Screens/LoginPage/LoginPage.dart';
import 'package:health_care/Screens/OnBoarding/OnBoardingComonView.dart';


void main() => runApp(new OnBoardingAppointment());


class OnBoardingAppointment extends StatefulWidget {
  @override
  _OnBoardingAppointmentState createState() => _OnBoardingAppointmentState();
}

class _OnBoardingAppointmentState extends State<OnBoardingAppointment> {
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      body: Container(
        color: Colors.white,
        padding: new EdgeInsets.all(20),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           setLocalView(
              AppImage.onBoardImg3,
              AppTranslations.of(context).text(AppTitle.onBoardTitle3),
              AppTranslations.of(context).text(AppString.onBoard3Descript),
              ),
            SizedBox(height: 120,),
            new InkWell(
              onTap: (){
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>LoginPage()),ModalRoute.withName('/login'));
              },
                  child: new Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: new Material(
                    color: AppColor.themeColor,
                    borderRadius: BorderRadius.circular(22.5),
                    elevation: 5.0,
                    child: new Center(
                      child: new Text(AppTranslations.of(context).text(AppTitle.getStarted),
                      textDirection: SharedManager.shared.direction,
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                    ),
                  ),
                ),
            ),
          ],
        ),
      )
    );
  }
}

