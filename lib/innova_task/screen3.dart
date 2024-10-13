import 'package:flutter/material.dart';
import 'package:innova_flutter/routes.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    final String title = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: NetworkImage('https://picsum.photos/200/300'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Christmas blend',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff218261)),
            ),
            Text(
              'Espresso shots topped with cold water produce a light layer of crema, then served over ice. The result: a wonderfuly rich cup with depth and nuance.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: const Color(0xffb1b1b1bf).withOpacity(.75),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Quantity:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff218261),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (quantity < 1) {
                                  quantity = 0;
                                } else {
                                  quantity--;
                                }
                              });
                            },
                            icon: const Icon(Icons.remove)),
                        Text(quantity.toString()),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            icon: const Icon(Icons.add)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                Navigator.pushNamed(context, Routes.screen7);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xff218261),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  'Add to cart',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
