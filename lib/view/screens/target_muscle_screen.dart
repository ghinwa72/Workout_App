import 'package:flutter/material.dart';

import '../../controller/color_changing_controller.dart';
import '../components/target_muscle_components/first_joint.dart';
import '../components/target_muscle_components/last_joint.dart';
import '../components/target_muscle_components/target_muscle_container.dart';
import 'package:get/get.dart';

class TargetMuscleScreen extends StatelessWidget {
  TargetMuscleScreen({Key? key}) : super(key: key);
  final ColorChangingController controller = Get.put(ColorChangingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text(
              "Please choose your target area",
              style: TextStyle(
                  fontFamily: "Auth",
                  fontSize: 40,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Center(
              child: Text(
                "Focus on your target area and save 25% of your time",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade500),
              ),
            ),
          ),
          Stack(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: GestureDetector(
                            onTap: () {
                              controller.enable1.toggle();
                            },
                            child: Obx(
                              () => TargetMuscleContainer(
                                text: "Arm",
                                color: controller.enable1.value
                                    ? Color(0xFF76D3FF)
                                    : Colors.grey.shade300,
                                textColor: controller.enable1.value
                                    ? Colors.white70
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: GestureDetector(
                            onTap: () {
                              controller.enable2.toggle();
                            },
                            child: Obx(
                              () => TargetMuscleContainer(
                                text: "Abs",
                                color: controller.enable2.value
                                    ? Color(0xFF76D3FF)
                                    : Colors.grey.shade300,
                                textColor: controller.enable2.value
                                    ? Colors.white70
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: GestureDetector(
                            onTap: () {
                              controller.enable3.toggle();
                            },
                            child: Obx(
                              () => TargetMuscleContainer(
                                text: "Butt",
                                color: controller.enable3.value
                                    ? Color(0xFF76D3FF)
                                    : Colors.grey.shade300,
                                textColor: controller.enable3.value
                                    ? Colors.white70
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.enable4.toggle();
                          },
                          child: Obx(
                            () => TargetMuscleContainer(
                              text: "Legs",
                              color: controller.enable4.value
                                  ? Color(0xFF76D3FF)
                                  : Colors.grey.shade300,
                              textColor: controller.enable4.value
                                  ? Colors.white70
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Image(
                    image: AssetImage("assets/images/female.png"),
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width / 1.7,
                    fit: BoxFit.fitHeight,
                  ),
                ],
              ),
              Obx(() => FirstJoint(
                    top: 150,
                    color: controller.enable1.value
                        ? Color(0xFF76D3FF)
                        : Colors.grey.shade300,
                  )),
              Positioned(
                top: 123,
                left: 133,
                child: Transform.rotate(
                  angle: 15.2,
                  child: Obx(
                    () => AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        width: 110,
                        height: 2,
                        color: controller.enable1.value
                            ? Color(0xFF76D3FF)
                            : Colors.grey.shade300),
                  ),
                ),
              ),
              Obx(() => LastJoint(
                    top: 90,
                    left: 235,
                    color: controller.enable1.value
                        ? Color(0xFF76D3FF)
                        : Colors.grey.shade300,
                  )),
              Obx(() => FirstJoint(
                    top: 220,
                    color: controller.enable2.value
                        ? Color(0xFF76D3FF)
                        : Colors.grey.shade300,
                  )),
              Positioned(
                top: 202,
                left: 138,
                child: Transform.rotate(
                  angle: 12.3,
                  child: Obx(
                    () => AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        width: 140,
                        height: 2,
                        color: controller.enable2.value
                            ? Color(0xFF76D3FF)
                            : Colors.grey.shade300),
                  ),
                ),
              ),
              Obx(() => LastJoint(
                    top: 176,
                    left: 274,
                    color: controller.enable2.value
                        ? Color(0xFF76D3FF)
                        : Colors.grey.shade300,
                  )),
              Obx(() => FirstJoint(
                    top: 290,
                    color: controller.enable3.value
                        ? Color(0xFF76D3FF)
                        : Colors.grey.shade300,
                  )),
              Positioned(
                top: 254,
                left: 128,
                child: Transform.rotate(
                  angle: 15.1,
                  child: Obx(
                    () => AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        width: 125,
                        height: 2,
                        color: controller.enable3.value
                            ? Color(0xFF76D3FF)
                            : Colors.grey.shade300),
                  ),
                ),
              ),
              Obx(() => LastJoint(
                    top: 212,
                    left: 238,
                    color: controller.enable3.value
                        ? Color(0xFF76D3FF)
                        : Colors.grey.shade300,
                  )),
              Obx(() => FirstJoint(
                    top: 360,
                    color: controller.enable4.value
                        ? Color(0xFF76D3FF)
                        : Colors.grey.shade300,
                  )),
              Positioned(
                top: 328,
                left: 128,
                child: Transform.rotate(
                  angle: 15.1,
                  child: Obx(
                    () => AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      width: 115,
                      height: 2,
                      color: controller.enable4.value
                          ? Color(0xFF76D3FF)
                          : Colors.grey.shade300,
                    ),
                  ),
                ),
              ),
              Obx(() => LastJoint(
                    top: 292,
                    left: 225,
                    color: controller.enable4.value
                        ? Color(0xFF76D3FF)
                        : Colors.grey.shade300,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 12, 50, 20),
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
          ),
        ],
      ),
    );
  }
}
