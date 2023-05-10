import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../../../Constants/Images.dart';
import '../../controller/days_controller.dart';
import '../../controller/weight_controller.dart';
import 'target_weight_screen.dart';

class DaysScreen extends StatelessWidget {
  final WeightController _controller = Get.put(WeightController());
  final WeightController controller = Get.find();
  final DaysController myController = Get.put(DaysController());

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
              width: 75.w,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'What ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                        fontSize: 20.sp,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                    TextSpan(
                      text: 'days',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                        fontSize: 20.sp,
                        color: Colors.orange,
                        letterSpacing: 1,
                      ),
                    ),
                    TextSpan(
                      text: ' would you\n like to work out ?',
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
            Transform.translate(
              offset: Offset(0, 1.5.h),
              child: Image.asset(
                Images.calender,
                height: 45.h,
                width: 200,
              ),
            ),
            Transform.translate(
              offset: Offset(8.w, -9.h),
              child: GetBuilder<DaysController>(
                  init: DaysController(),
                  builder: (myController) {
                    return Column(
                      children: [
                        Transform.translate(
                          offset: Offset(0, 15.h),
                          child: Container(
                            alignment: Alignment.center,
                            height: 5.h,
                            width: double.infinity,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (c, i) {
                                return GestureDetector(
                                  onTap: () => myController.onItemPressed(i),
                                  child: CircleAvatar(
                                    backgroundColor:
                                        myController.selectedItems.contains(i)
                                            ? Colors.orange
                                            : Colors.grey.shade300,
                                    child: i == 0
                                        ? Text(
                                            'S',
                                            style: TextStyle(
                                              color: myController.selectedItems
                                                      .contains(i)
                                                  ? Colors.black
                                                  : Colors.black54,
                                            ),
                                          )
                                        : i == 1
                                            ? Text(
                                                'M',
                                                style: TextStyle(
                                                  color: myController
                                                          .selectedItems
                                                          .contains(i)
                                                      ? Colors.black
                                                      : Colors.black54,
                                                ),
                                              )
                                            : i == 2
                                                ? Text(
                                                    'T',
                                                    style: TextStyle(
                                                      color: myController
                                                              .selectedItems
                                                              .contains(i)
                                                          ? Colors.black
                                                          : Colors.black54,
                                                    ),
                                                  )
                                                : i == 3
                                                    ? Text(
                                                        'W',
                                                        style: TextStyle(
                                                          color: myController
                                                                  .selectedItems
                                                                  .contains(i)
                                                              ? Colors.black
                                                              : Colors.black54,
                                                        ),
                                                      )
                                                    : i == 4
                                                        ? Text(
                                                            'T',
                                                            style: TextStyle(
                                                              color: myController
                                                                      .selectedItems
                                                                      .contains(
                                                                          i)
                                                                  ? Colors.black
                                                                  : Colors
                                                                      .black54,
                                                            ),
                                                          )
                                                        : i == 5
                                                            ? Text(
                                                                'F',
                                                                style:
                                                                    TextStyle(
                                                                  color: myController
                                                                          .selectedItems
                                                                          .contains(
                                                                              i)
                                                                      ? Colors
                                                                          .black
                                                                      : Colors
                                                                          .black54,
                                                                ),
                                                              )
                                                            : Text(
                                                                'S',
                                                                style:
                                                                    TextStyle(
                                                                  color: myController
                                                                          .selectedItems
                                                                          .contains(
                                                                              i)
                                                                      ? Colors
                                                                          .black
                                                                      : Colors
                                                                          .black54,
                                                                ),
                                                              ),
                                  ),
                                );
                              },
                              separatorBuilder: (c, i) {
                                return SizedBox(
                                  width: 2.w,
                                );
                              },
                              itemCount: 7,
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(-7.w, -5.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${myController.selectedItems.length} times',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Kanit',
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                ),
                              ),
                              Text(
                                'per week',
                                style: TextStyle(
                                  //fontWeight: FontWeight.bold,
                                  fontFamily: 'Kanit',
                                  fontSize: 11.sp,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(-8.w, -28.h),
                          child: Text(
                            '${myController.selectedItems.length}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kanit',
                              fontSize: 50.sp,
                              color: Colors.black,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Transform.translate(
              offset: Offset(0.w, 1.h),
              child: GestureDetector(
                onTap: () {
                  // Get.to(WorkoutPage());
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
            ),
          ],
        ),
      ),
    );
  }
}
