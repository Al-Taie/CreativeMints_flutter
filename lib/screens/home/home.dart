import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:third_app/screens/balance.dart';
import 'package:third_app/screens/home/componets/category.dart';
import 'package:third_app/screens/home/componets/rectangle.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   InkWell(
                    child: const Icon(Icons.menu),
                    onTap: () => Get.to(const Balance()),
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Icon(Icons.notifications_active_outlined),
                      ),
                      Container(
                        height: 42,
                        width: 42,
                        decoration: const BoxDecoration(
                            color: Colors.indigo,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://design4users.com/wp-content/uploads/2019/10/autumn-illustration-digital-art-1024x768.jpg.pagespeed.ce.iSEn_t8_b9.jpg')),
                            shape: BoxShape.circle),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                'Creative Mints',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                height: 48,
                decoration: BoxDecoration(
                    color: const Color(0xffEEF0FD),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Center(child: Icon(Icons.search)),
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Expanded(
                child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(4),
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Rectangle(
                        color: const Color(0xff1ACF92),
                        icon: Icons.monetization_on,
                        title: 'Transactions',
                        content: '7 Items',
                      ),
                      Rectangle(
                        color: const Color(0xffFF5949),
                        icon: Icons.wallet_giftcard,
                        title: 'Budget',
                        content: '4 Items',
                      ),
                      Rectangle(
                        color: const Color(0xffECAC48),
                        icon: Icons.star,
                        title: 'Recommendations',
                        content: '6 Items',
                      ),
                      Rectangle(
                        color: const Color(0xff2F26D8),
                        icon: Icons.credit_card,
                        title: 'Credit Card',
                        content: '3 Cards',
                      )
                    ]),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Choose a Categories',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Category(
                        icon: Icons.food_bank,
                        title: 'Branch\n'
                               'Service',
                        color: const Color(0xff53E4FE)
                    ),
                    const SizedBox(width: 8),
                    Category(
                        icon: Icons.payment,
                        title: 'Make a\n'
                               'payment',
                        color: const Color(0xff3964FF)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
