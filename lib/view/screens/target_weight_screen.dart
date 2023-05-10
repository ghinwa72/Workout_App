import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../../../Constants/Images.dart';
import '../../controller/weight_controller.dart';
import 'goal_screen.dart';

class TargetWeightScreen extends StatelessWidget {
  final WeightController _controller = Get.put(WeightController());
  final WeightController controller = Get.find();

  final double previousPointerValue;

   TargetWeightScreen({Key? key, required this.previousPointerValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                      text: 'target',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                        fontSize: 20.sp,
                        color: Colors.orange,
                        letterSpacing: 1,
                      ),
                    ),
                    TextSpan(
                      text: ' Weight ?',
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
              child: Obx(
                    () => Transform.scale(
                  scale: _controller.scaleFactor.value,
                  child: Image.asset(
                    _controller.weight.value <= 64
                        ? Images.one
                        : _controller.weight.value <= 78
                        ? Images.two
                        : _controller.weight.value <= 92
                        ? Images.three
                        : _controller.weight.value <= 106
                        ? Images.four
                        : _controller.weight.value <= 120
                        ? Images.five
                        : _controller.weight.value <= 134
                        ? Images.six
                        : _controller.weight.value <= 148
                        ? Images.seven
                        : _controller.weight.value <=
                        162
                        ? Images.eight
                        : _controller
                        .weight.value <=
                        176
                        ? Images.nine
                        : _controller.weight
                        .value <=
                        190
                        ? Images.ten
                        : _controller.weight
                        .value <=
                        204
                        ? Images.eleven
                        : _controller
                        .weight
                        .value <=
                        218
                        ? Images
                        .twelve
                        : _controller.weight.value <=
                        232
                        ? Images
                        .thertine
                        : Images
                        .fourtine,
                    height: 45.h,
                    width: 200,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Obx(
                  () => Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 30.h,
                    width: MediaQuery.of(context).size.width,
                    child:  Transform.scale(
                      origin: Offset(0, 10.h),
                      scale: 1.3,
                      child: SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(
                            canRotateLabels: true,
                            labelsPosition: ElementsPosition.inside,
                            minimum: controller.minimum,
                            maximum: controller.maximum,
                            axisLineStyle: AxisLineStyle(
                              thickness: 0,
                              color: Colors.grey.shade400,
                              cornerStyle: CornerStyle.bothCurve,
                            ),
                            showLabels: false,
                            majorTickStyle: MajorTickStyle(
                              thickness: 4,
                              length: 15,
                              lengthUnit: GaugeSizeUnit.logicalPixel,
                            ),
                            endAngle: 0,
                            startAngle: 180,
                            minorTicksPerInterval: 2,
                            minorTickStyle: MinorTickStyle(
                              length: 15,
                              thickness: 4,
                            ),
                            pointers: <GaugePointer>[
                              MarkerPointer(
                                color: Colors.orange,
                                enableDragging: true,
                                enableAnimation: true,
                                markerType: MarkerType.triangle,
                                markerWidth: 15,
                                markerHeight: 15,
                                markerOffset: 25,
                                value: previousPointerValue,
                                onValueChanged: (value) =>
                                    controller.onSliderChanged(value),
                              ),
                              MarkerPointer(
                                color: Colors.red,
                                enableDragging: true,
                                enableAnimation: true,
                                markerType: MarkerType.triangle,
                                markerWidth: 15,
                                markerHeight: 15,
                                markerOffset: 25,
                                value: controller.weight.value,
                                onValueChanged: (value) =>
                                    controller.onSliderChanged(value),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, 0.h),
                    child: Center(
                      child: Obx(
                            () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '${controller.weight.value.toInt()}',
                              style: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'BebasNeue',
                              ),
                            ),
                            Text(
                              ' KG',
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'BebasNeue',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, 10.h),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(GoalScreen());
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
          ],
        ),
      ),
    );
  }
}

