import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../Constants/Images.dart';
import '../../controller/color_controller.dart';
import '../../controller/image_scale_controller.dart';
import 'Illness.dart';


class Goal extends StatelessWidget {
  final ImageScaleController _controller = Get.put(ImageScaleController());
  final ImageScaleController controller = Get.find();
  final ColorController myController = Get.put(ColorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 7.h,
            ),
            Container(
              width: 60.w,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'What\'s your ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                        fontSize: 20.sp,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                    TextSpan(
                      text: 'main',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                        fontSize: 20.sp,
                        color: Colors.orange,
                        letterSpacing: 1,
                      ),
                    ),
                    TextSpan(
                      text: ' goal ?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                        fontSize: 20.sp,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 60.h,
              width: 100.w,
              child: GetBuilder<ColorController>(
                init:ColorController(),
                builder: (myController) {
                  return ListView.separated(
                    itemBuilder: (c, i) {
                      return GestureDetector(
                        onTap: () => myController.onItemPressed(i),
                        child: Container(
                          height: 15.h,
                          margin: EdgeInsets.only(
                            left: 4.w,
                            right: 4.w,
                          ),
                          decoration: BoxDecoration(
                            color: myController.selectedItemIndex == i
                                ? Colors.orange
                                : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20.sp),
                          ),
                          child: i==0?Transform.scale(
                            scale: 0.9,
                            origin: Offset(5.w, 0),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Transform.translate(
                                  offset: Offset(0.w, -60),
                                  child: Text(
                                    'Lose Weight',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Kanit',
                                      fontSize: 18.sp,
                                      color: Colors.black,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(0.w, -20),
                                  child: Text(
                                    'Achive a healthy\nweight faster',
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      //fontFamily: 'Kanit',
                                      fontSize: 12.sp,
                                      color: Colors.black45,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(53.w, -0.8.h),
                                  child: Transform.scale(
                                    scale: 1.25,
                                    child: Image.asset(
                                      Images.lose_weight,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ):i==1?Transform.scale(
                            scale: 0.9,
                            origin: Offset(5.w, 0),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Transform.translate(
                                  offset: Offset(0.w, -60),
                                  child: Text(
                                    'Build Muscle',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Kanit',
                                      fontSize: 18.sp,
                                      color: Colors.black,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(0.w, -35),
                                  child: Text(
                                    'Significant muscle size',
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      //fontFamily: 'Kanit',
                                      fontSize: 12.sp,
                                      color: Colors.black45,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(57.w, 0.h),
                                  child: Transform.scale(
                                    scale: 1.13,
                                    child: Image.asset(
                                      Images.build_muscle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ):Transform.scale(
                            scale: 0.9,
                            origin: Offset(5.w, 0),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Transform.translate(
                                  offset: Offset(0.w, -60),
                                  child: Text(
                                    'Get Toned',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Kanit',
                                      fontSize: 18.sp,
                                      color: Colors.black,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(0.w, -35),
                                  child: Text(
                                    'Noticeable muscle & shape',
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      //fontFamily: 'Kanit',
                                      fontSize: 12.sp,
                                      color: Colors.black45,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(62.w, 0.h),
                                  child: Transform.scale(
                                    scale: 1.1,
                                    child: Image.asset(
                                      Images.get_fitter,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (c, i) {
                      return SizedBox(
                        height: 2.h,
                      );
                    },
                    itemCount: 3,
                  );
                }
              ),
            ),
            SizedBox(height: 10.h,),
            GestureDetector(
              onTap: (){
                Get.to(Illness());
              },
              child: Container(
                alignment: Alignment.center,
                height: 8.h,
                width: 90.w,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15.sp)),
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kanit',
                    fontSize: 20.sp,
                    color: Colors.black,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
