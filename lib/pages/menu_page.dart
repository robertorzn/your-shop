import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_store/components/button.dart';
import 'package:your_store/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 24.0),
        child: Container(
          // color: Colors.blue,
          padding: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(30),
                splashColor: transparentEffectPrimaryColor,
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 24.0),
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cupom de 35%',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Button(
                      text: "Quero agora!",
                      onTap: () {},
                    ),
                  ],
                ),
                Image.asset(
                  'lib/images/many_sushi.png',
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
