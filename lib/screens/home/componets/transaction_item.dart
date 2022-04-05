import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:third_app/providers/user_provider.dart';

class TransactionItem extends StatefulWidget {
  const TransactionItem({Key? key}) : super(key: key);

  @override
  State<TransactionItem> createState() => _TransactionItemState();
}

class _TransactionItemState extends State<TransactionItem> {
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = UserProvider();

    @override
    void didChangeDependencies() {
      super.didChangeDependencies();
      userProvider = Provider.of(context);
    }

    return Expanded(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: userProvider.data.length,
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 16, top: 8, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                    child: Icon(userProvider.data[index]['icon'], color: Colors.white),
                      decoration: BoxDecoration(
                        color: userProvider.data[index]['color'],
                          borderRadius: BorderRadius.circular(50),
                ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // IconButton(
                          //     onPressed: () =>
                          //         userProvider.removeElement(index),
                          //     icon: const Icon(Icons.delete)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userProvider.data[index]['title'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                userProvider.data[index]['content'],
                                style: const TextStyle(
                                    color: Color(0xffC0C5CA),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        userProvider.data[index]['balance'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    )
                  ],
                ))));
  }
}
