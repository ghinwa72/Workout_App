import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:workoutlogin/view/screens/weight_screen.dart';
import '../../../Constants/Images.dart';
import '../../Model/onboarding_list_model.dart';
import '../../controller/onboarding_controller.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends GetView<OnboardingControllerImp> {
  @override
  Widget build(BuildContext context) {
    OnboardingControllerImp controller = Get.put(OnboardingControllerImp());

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          width: Get.width,
          alignment: Alignment.center,
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: controller.lottieController,
                  onPageChanged: (val) {
                    controller.onPageChanged(val);
                  },
                  itemCount: onBoardingList.length,
                  itemBuilder: (c, i) {
                    return Image.asset(
                      '${onBoardingList[i].image}',
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black54.withOpacity(0.10),
                        Colors.black.withOpacity(0.70),
                        Colors.black.withOpacity(0.80),
                        Colors.black.withOpacity(0.90),
                      ],
                      // adjust stops to control gradient blending
                    ),
                  ),
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: Offset(0, 17.h),
                        child: Container(
                          height: 30.h,
                          child: PageView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            controller: controller.pageController,
                            onPageChanged: (val) {
                              controller.onPageChanged(val);
                            },
                            itemCount: onBoardingList.length,
                            itemBuilder: (c, i) {
                              return Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
<<<<<<< HEAD:lib/view/screens/onboarding_screen.dart
                                        Positioned(
                                          left: -20,
                                          top: 10,
                                          child: Image.asset(
                                              "assets/images/color.png"),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            onBoardingList[i].title,
                                          ],
                                        ),
=======
                                        onBoardingList[i].title,
>>>>>>> 38a56fe461f147787c593b540cda4b5ffd29db23:lib/view/screens/onboarding.dart
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 5.w,
                                      ),
                                      child: Text(
                                        "${onBoardingList[i].describtion}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey.shade500),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(28.w, 40.h),
                        child: GestureDetector(
                          onTap: () {
                            controller.currentPage == 2
                                ? Get.to(WeightScreen())
                                : controller.next();
                          },
                          child: Container(
                            height: 50.h,
                            width: 45.w,
                            decoration: BoxDecoration(
                              color: Color(0xffD89FFF),
                              borderRadius: BorderRadius.circular(200.sp),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 18.w,
                                  top: 1.5.h,
                                  child: Transform.scale(
                                    scale: 1.5,
                                    child: Lottie.asset(
                                      Images.fire,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16.w,
                                  top: 6.5.h,
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      fontFamily: 'Acme',
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
