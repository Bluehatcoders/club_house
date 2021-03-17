import 'package:club_house/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'common/widget/round_button.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.only(
          left: 50,
          right: 50,
          bottom: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTitle(),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: buildContents(),
            ),
            buildBottom(context),
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Text(
      'welcome'.tr,
      style: TextStyle(
        fontSize: 25,
      ),
    );
  }

  Widget buildContents() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'working_hard'.tr,
            style: TextStyle(
              height: 1.8,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'you_should_invite'.tr,
            style: TextStyle(
              height: 1.8,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'team_creator'.tr,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottom(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RoundButton(
          color: Get.theme.accentColor,
          onPressed: () {
            logger.d("Clicked");
          },
          child: Container(
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'got_username'.tr,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'have_invite'.tr,
              style: TextStyle(
                color: Get.theme.accentColor,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'sin_in'.tr,
              style: TextStyle(
                color: Get.theme.accentColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
