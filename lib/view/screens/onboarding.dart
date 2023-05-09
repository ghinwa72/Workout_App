import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:workoutlogin/view/screens/Weight.dart';
import '../../../Constants/Images.dart';
import '../../Model/onboarding_list_model.dart';
import '../../controller/onboarding_controller.dart';
import 'package:lottie/lottie.dart';

class OnBoarding extends GetView<OnboardingControllerImp> {
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
                        Colors.white.withOpacity(0.40),
                        Colors.white,
                        Colors.white,
                        Colors.white,
                      ],
                      // adjust stops to control gradient blending
                    ),
                  ),
                  child: Stack(
                    children: [
                      Transform.translate(
                        offset: Offset(0, 19.h),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset("assets/images/highlighting.png"),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            onBoardingList[i].title,
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 1.8.h,
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
                        offset: Offset(28.w, 38.h),
                        child: GestureDetector(
                          onTap: () {
                            controller.currentPage == 2
                                ? Get.to(ImageScaleDemo())
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
                                  left: 15.w,
                                  child: Lottie.asset(
                                    Images.fire,
                                    height: 8.h,
                                  ),
                                ),
                                Positioned(
                                  left: 16.w,
                                  top: 7.h,
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
