import 'package:flutter/material.dart';
import 'package:workoutlogin/view/screens/gender_screen.dart';
import '../../controller/auth_controller.dart';
import '../components/auth_components/auth_button.dart';
import '../components/auth_components/background_of_auth_screen.dart';
import '../components/auth_components/custom_text_field.dart';
import '../components/auth_components/login_clipper.dart';
import '../components/auth_components/register_clipper.dart';
import '../components/auth_components/social_media_button.dart';

import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({Key? key}) : super(key: key);

  final RegisterController registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade50,
      body: Stack(
        children: [
          Background(),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              top: registerController.showRegister.value
                  ? 20
                  : -MediaQuery.of(context).size.height / 1.2,
              left: 15,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: ClipPath(
                        clipper: LoginClipper(),
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.93,
                            height:
                                MediaQuery.of(context).size.width * 0.8 * 2.3,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 40, 0, 0),
                                  child: Text(
                                    "Welcome Back!",
                                    style: TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Auth"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                  child: Text(
                                    "   we're glad to see you again.\nEnter your email and password.",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black54),
                                  ),
                                ),
                                Form(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 30, 15, 0),
                                        child: CustomTextField(
                                          labelText: 'Email',
                                          icon: Icon(Icons.email),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 25, 15, 0),
                                        child: CustomTextField(
                                          labelText: "Password",
                                          icon: Icon(Icons.lock),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 30, 0, 0),
                                        child: Text(
                                          "Forgot Password?",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Auth",
                                              color: Colors.black38),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            100, 85, 15, 0),
                                        child: AuthButton(
                                          onTap: (){
                                            Get.to(GenderScreen());
                                          },
                                          text: 'Login',
                                          color1: Color(0xFFD89FFF),
                                          color2: Color(0xFF76D3FF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      MediaQuery.of(context).size.width / 1.25,
                                      126,
                                      0,
                                      0),
                                  child: GestureDetector(
                                    onTap: () {
                                      registerController.showRegister.value =
                                          !registerController
                                              .showRegister.value;
                                    },
                                    child: Obx(
                                      () => Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: registerController
                                                  .showRegister.value
                                              ? Color(0xFF9EBEFF)
                                              : Color(0xFF7FCEFF),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Obx(() => registerController
                                                .showRegister.value
                                            ? Icon(
                                                Icons.arrow_upward,
                                                color: Colors.white,
                                              )
                                            : Icon(
                                                Icons.arrow_downward,
                                                color: Colors.white,
                                              )),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              bottom: registerController.showRegister.value
                  ? -MediaQuery.of(context).size.height / 1.2
                  : 0,
              left: 20,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: ClipPath(
                        clipper: RegisterClipper(),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.93,
                          height: MediaQuery.of(context).size.width * 0.8 * 2.3,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Form(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 50, 0, 0),
                                      child: GestureDetector(
                                        onTap: () {
                                          registerController.toggleRegister();
                                        },
                                        child: Obx(
                                          () => Container(
                                            height: 35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                              color: registerController
                                                      .showRegister.value
                                                  ? Color(0xFFD2A2FF)
                                                  : Color(0xFFD89FFF),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Obx(
                                              () => registerController
                                                      .showRegister.value
                                                  ? Icon(
                                                      Icons.arrow_upward,
                                                      color: Colors.white,
                                                    )
                                                  : Icon(
                                                      Icons.arrow_downward,
                                                      color: Colors.white,
                                                    ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 48, 0, 0),
                                      child: Text(
                                        "Registration",
                                        style: TextStyle(
                                            fontSize: 45,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Auth"),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 20, 0, 0),
                                      child: Text(
                                        "To save your hero's progess,\nplease create an account",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 30, 15, 0),
                                      child: CustomTextField(
                                        labelText: "Name",
                                        icon: Icon(Icons.person),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 25, 15, 0),
                                      child: CustomTextField(
                                        labelText: 'Email',
                                        icon: Icon(Icons.email),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 25, 15, 0),
                                      child: CustomTextField(
                                        labelText: "Password",
                                        icon: Icon(Icons.lock),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 25, 15, 0),
                                      child: CustomTextField(
                                        labelText: "Confirm Password",
                                        icon: Icon(Icons.lock),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 60, 15, 0),
                                      child: AuthButton(
                                        onTap: (){
                                          Get.to(GenderScreen());
                                        },
                                        color1: Color(0xFFD89FFF),
                                        color2: Color(0xFF76D3FF),
                                        text: 'Signup',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              bottom: registerController.showRegister.value ? 110 : 700,
              left: registerController.showRegister.value ? 65 : 130,
              child: SocialMediaButton(
                image: registerController.showRegister.value
                    ? "assets/images/wgoogle.png"
                    : "assets/images/pgoogle.png",
                color: registerController.showRegister.value
                    ? Color(0xFFD89FFF)
                    : Colors.white,
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              bottom: registerController.showRegister.value ? 60 : 650,
              left: registerController.showRegister.value ? 135 : 210,
              child: SocialMediaButton(
                image: registerController.showRegister.value
                    ? "assets/images/wfacebook.png"
                    : "assets/images/facebook.png",
                color: registerController.showRegister.value
                    ? Color(0xFF7185FF)
                    : Colors.white,
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              bottom: registerController.showRegister.value ? 20 : 595,
              left: registerController.showRegister.value ? 210 : 290,
              child: SocialMediaButton(
                image: registerController.showRegister.value
                    ? "assets/images/w.instagram.png"
                    : "assets/images/instagram.png",
                color: registerController.showRegister.value
                    ? Color(0xFF44B2FD)
                    : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
