import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_islam_counter/constants/app_color.dart';
import 'package:my_islam_counter/screens/home.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.mySecondaryColor,
      child: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          ListTile(
            title: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: Text(
                  'Retourner à l\'accueil',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                )),
            onTap: () {
              Get.offAndToNamed('/');
              // Get.snackbar(
              //     'History', 'Cette fonctionnalité sera bientôt disponible',backgroundColor: AppColors.myPrimaryColor);
            },
          )
        ],
      ),
    );
  }
}
