import 'package:flutter/material.dart';

import '../model/my_list_model.dart';

class TrainLists extends StatelessWidget {
  TrainLists({super.key, required this.transactionList, required this.newFxn});

  final List<MyTransaction> transactionList;
  Function newFxn;

  final firstController = TextEditingController();

  final secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 200,
            child: Column(children: [
              TextField(
                controller: firstController,
              ),
              TextField(
                controller: secondController,
              ),
              ElevatedButton(
                onPressed: () {
                  String txtext = firstController.text;
                  double txamnt = double.parse(secondController.text);
                  newFxn(firstController.text,
                      double.parse(secondController.text)
                      );

                  print(txtext);
                  print(txamnt);
                },
                child: const Text('Submit'),
              ),
            ]),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      Container(
                        child: Text(transactionList[index].amount.toString()),
                      ),
                      Column(
                        children: [
                          Text(transactionList[index].title.toString()),
                          Text(transactionList[index].time.toString()),
                        ],
                      ),
                    ],
                  ),
                );
              },
              itemCount: transactionList.length,
            ),
          )
        ],
      ),
    );
  }
}
