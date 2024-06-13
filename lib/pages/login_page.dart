import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_store/components/button.dart';
import 'package:your_store/theme/colors.dart';
import 'package:your_store/theme/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const SizedBox(height: 12.0),
                  Text(
                    'Bem vindo!',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                ],
              ),
              SizedBox(
                height: 340,
                child: Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: Image.asset('lib/images/salmon_sushi.png'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    titleHomePage,
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Text(
                    subTitleHomePage,
                    style: TextStyle(color: Colors.grey[200], height: 2),
                  ),
                  const SizedBox(height: 24.0),
                  Button(
                    text: "Fazer um pedido!",
                    onTap: () {
                      Navigator.pushNamed(context, '/menu');
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
