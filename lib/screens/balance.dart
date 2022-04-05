import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:third_app/screens/home/componets/balance_item.dart';
import 'package:third_app/screens/home/componets/transaction_item.dart';
import 'package:third_app/screens/home/home.dart';

import 'home/componets/rectangle.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xff2F26D8),
        body: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Container(
                      height: MediaQuery.of(context).size.height/2.33,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xff2F26D8),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  child: const Icon(Icons.arrow_back_ios, color: Colors.white),
                                  onTap: () => Get.to(const Home()),
                                ),
                                 const Icon(Icons.notifications_active_outlined, color: Colors.grey,),
                              ],
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Your Balance',
                              style: TextStyle(
                                  fontSize: 20,
                                color: Colors.grey
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                          '\$547,000.00',
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.white
                          ),
                          ),
                            const SizedBox(height: 24),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                BalanceItem(
                                  color: const Color(0xff3F6DF6),
                                  backgroundColor: const Color(0xffC3F1FE),
                                  fontColor: Colors.black,
                                  icon: Icons.monetization_on,
                                  title: '\$5,000',
                                  content: 'Expense',
                                ),
                                BalanceItem(
                                  color: const Color(0xffF2A814),
                                  backgroundColor: const Color(0xffFFE6D7),
                                  fontColor: Colors.black,
                                  icon: Icons.money_rounded,
                                  title: '\$15,000',
                                  content: 'Spend to Goals',
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32),
                              topRight: Radius.circular(32))
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Transactions",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21),
                                  ),
                                  TextButton(
                                      onPressed: null,
                                      child: const Text(
                                        "See All",
                                        style: TextStyle(
                                            backgroundColor: Color(0xffF2F0FD),
                                            color: Color(0xff4160CB),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                  )
                                ],
                              ),
                            ),
                            TransactionItem(),
                          ],
                        ),
                      ),
                    ),
                  ],
                )));
  }
}


