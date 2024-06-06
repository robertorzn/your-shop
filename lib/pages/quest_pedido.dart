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
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                    ),
                  ),
                  const SizedBox( height: 24.0 ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.red
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'lib/images/casa.png',
                                width: 44,
                                height: 44,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox( width: 16 ),                          
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Estou em casa',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'Entrega e/ou retiradas no local!',
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox( width: 16 ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox( height: 12.0 ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.red
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'lib/images/carrinho-de-compras.png',
                                width: 44,
                                height: 44,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox( width: 16 ),                          
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Estou no local',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'Pedir para minha mesa!',
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox( width: 16 ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox( height: 12.0 ),
                ],
              ),
            )
            // Expanded(
            //   child: Row(
            //     children: [
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           const SizedBox( height: 24.0 ),
            //           const Text(
            //             'Escolha seu local',
            //             style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //               fontSize: 24.0,
            //             ),
            //           ),
            //           const SizedBox( height: 24.0 ),
            //           Row(
            //             children: [
            //               Text('text'),
            //             ],
            //           ),
            //           Expanded(
            //             child: Container(
            //               color: Colors.red,  
            //               child: Text('Estou em casa'),
            //             ),
            //           ),
            //           // Expanded(
            //           //   child: Container(
            //           //       color: Colors.red,
            //           //       child: Text('Estou no local'),
            //           //   ),
            //           // ),
            //         ],
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}