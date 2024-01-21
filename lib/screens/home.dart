import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '/components/drawer_component.dart';
import '/constants/app_color.dart';
import '../controllers/StoreController.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final storeController = Get.put(StoreController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('My counter'),
        backgroundColor: AppColors.myThirdColor,
      ),
      drawer: DrawerComponent(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.18,
              ),
              // Container(
              //   width: 300,
              //   padding: EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //       color: AppColors.myPrimaryColor,
              //       borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(20),
              //           topRight: Radius.circular(20))),
              //   child: Center(
              //       child: Text(
              //     'la ilaha illa allah',
              //     style: TextStyle(
              //       fontSize: 25,
              //       // color: Colors.white,
              //       fontWeight: FontWeight.w900,
              //     ),
              //   )
              //       // Text('la ilaha illa allah')
              //       ),
              // ),
              Container(
                width: 300,
                height: 200,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: AppColors.mySecondaryColor,
                    // borderRadius: BorderRadius.circular(0)
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Obx(() => SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                              '${storeController.zikrNbr.value.toString()}',
                              style: TextStyle(
                                // color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                              ),
                                ),
                             
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              Container(
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: AppColors.myPrimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        storeController.minusZikrNumber();
                      },
                      child: Container(
                        width: 120,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Text('Supprimer',
                          style: TextStyle(
                                  // color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                          ),
                        )
                        // Icon(FontAwesomeIcons.circleMinus,
                        //     // color: Colors.white,
                        //      size: 40)
                             ,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        storeController.plusZikrNumber();
                      },
                      child: Container(
                        width: 120,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Colors.white
                        ),
                        child:Center(
                          child: Text('Ajouter',style: TextStyle(
                                  // color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                )),
                        )
                        //  Icon(
                        //   FontAwesomeIcons.circlePlus,
                        //   // color: Colors.white,
                        //   size: 40,
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
