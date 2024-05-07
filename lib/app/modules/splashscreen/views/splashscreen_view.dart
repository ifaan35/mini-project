import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 3;
    Future.delayed(Duration(seconds: 5), () {
      Get.offAllNamed('/login');
    });
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/Bg-Spalsh Screen.jpg'),
                    fit: BoxFit.fill)),
          ),
          Padding(
            padding: EdgeInsets.only(top: height),
            child: Center(
              child: Column(
                children: [
                  Image.asset('assets/img/bunga ungu 1.png'),
                  Text(
                    'HELLO FELLAS.',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Text(
                      'Temukan segala jenis bunga dari berbagai belahan dunia!',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
