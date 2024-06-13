import 'package:flutter/material.dart';

class QuestPedido extends StatelessWidget {
  const QuestPedido({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 340,
              child: Padding(
                padding: const EdgeInsets.all(48.0),
                child: Image.asset('lib/images/delivery.gif'),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Escolha seu local',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(height: 18.0),
                  InkWell(
                    borderRadius: BorderRadius.circular(10.0),
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), color: Colors.grey[50]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset(
                                    'lib/images/casa.png',
                                    width: 44,
                                    height: 44,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Entrega ou retirada no local!',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 16.0),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 12.0),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  InkWell(
                    borderRadius: BorderRadius.circular(10.0),
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), color: Colors.grey[50]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset(
                                    'lib/images/carrinho-de-compras.png',
                                    width: 44,
                                    height: 44,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cardápio',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    SizedBox(height: 4.0),
                                    Text(
                                      'Consumo no local!',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 16.0),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 12.0),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
