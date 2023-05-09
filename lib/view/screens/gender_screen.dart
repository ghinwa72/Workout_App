import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import '../../controller/gender_controller.dart';

class GenderScreen extends StatelessWidget {
  GenderScreen({Key? key}) : super(key: key);

  final GenderController genderController = Get.put(GenderController());
  final PageController controller = PageController();

  List<String> _images = [
    "assets/images/female.png",
    "assets/images/male.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Text(
                "Please select gender",
                style: TextStyle(
                    fontFamily: "Auth",
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Center(
              child: Text(
                "Create workout plan that suits you \nbest",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Column(
              children: [
                CarouselSlider.builder(
                  itemCount: _images.length,
                  itemBuilder: (BuildContext context, int index, real) {
                    return Obx(
                      () => AnimatedContainer(

                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        transform: Matrix4.identity()
                          ..scale(genderController.currentIndex == index
                              ? 1.0
                              : 0.77),
                        child: Stack(
                          children: [
                            Positioned(
                              top: genderController.currentIndex == 0 ? 50 : 45,
                              left:
                                  genderController.currentIndex == 0 ? 15 : 30,
                              child: Transform.rotate(
                                angle: -9,
                                child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    height: 320,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: genderController.currentIndex ==
                                              index
                                          ? genderController.currentIndex == 0
                                              ? Color(0xFFD89FFF)
                                              : Color(0xFF76D3FF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(100),
                                    )),
                              ),
                            ),
                            Obx(
                              () => Opacity(
                                opacity: genderController.currentIndex == index
                                    ? 1.0
                                    : 0.5,
                                child: Image.asset(
                                  _images[index],
                                  height:
                                      MediaQuery.of(context).size.height / 1.9,
                                  width: MediaQuery.of(context).size.width / 1.5,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            genderController.currentIndex == index
                                ? Positioned(
                                    bottom: 50,
                                    left: genderController.currentIndex == 0
                                        ? 8
                                        : 62,
                                    child: Text(
                                      genderController.currentIndex == 0
                                          ? "Female"
                                          : "Male",
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.shade500,
                                      ),
                                    ),
                                  )
                                : Container(
                                    width: 0,
                                  )
                          ],
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 500,
                    viewportFraction: 0.4,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) =>
                        genderController.onPageChanged(index, controller),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Container(
              height: 48,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFD89FFF),
                    Color(0xFF76D3FF),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
              ),
              child: Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: "Auth"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
