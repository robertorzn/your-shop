import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_store/components/button.dart';
import 'package:your_store/components/food_tile.dart';
import 'package:your_store/models/Food.dart';
import 'package:your_store/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<Food> foodMenu = [
    Food(
        name: "Sushi Eggs",
        price: "21.00",
        imagePath: "lib/images/salmon_sushi.png",
        rating: "4.9"),
    Food(name: "Tuna Sushi", price: "19.89", imagePath: "lib/images/tuna_sushi.png", rating: "4.7"),
    Food(
        name: "Wrapper Sushi",
        price: "22.00",
        imagePath: "lib/images/embrulhado.png",
        rating: "4.9"),
    Food(name: "Salmon Sushi", price: "17.33", imagePath: "lib/images/salmon.png", rating: "4.8"),
    Food(name: "Sushi", price: "13.45", imagePath: "lib/images/sushi_2.png", rating: "5.0"),
  ];

  void navigatetoFoodDetails(int index) {
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 14),
        child: Container(
          // color: Colors.blue,
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Center(
                    child: Text(
                      'TOKYO REST.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: const EdgeInsets.all(28.0),
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
              const SizedBox(height: 32.0),
              SizedBox(
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Busque em nosso cardápio',
                    hintStyle: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 28.0),
              const Text(
                'Os mais pedidos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 28.0),
              SizedBox(
                height: 270,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) => FoodTile(
                    food: foodMenu[index],
                    onTap: () => navigatetoFoodDetails(index),
                    isLast: foodMenu.last == foodMenu[index],
                  ),
                ),
              ),
              const SizedBox(height: 28.0),
              const Text(
                'Pedidos anteriormente',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 28.0),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(right: foodMenu.last == foodMenu[index] ? 0 : 20),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'lib/images/salmon_sushi.png',
                              height: 60,
                            ),
                            const SizedBox(width: 25),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Salmon eggs",
                                  style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                                ),
                                const SizedBox(width: 20),
                                Text(
                                  'R\$ 21.00',
                                  style: TextStyle(color: Colors.grey[700]),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.grey,
                            size: 28,
                          ),
                        )
                      ],
                    ),
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
