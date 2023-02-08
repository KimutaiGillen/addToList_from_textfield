import 'package:flutter/material.dart';

import '../model/my_list_model.dart';
import 'list_train.dart';

class AddList extends StatefulWidget {
  const AddList({super.key});

  @override
  State<AddList> createState() => _AddListState();
}

class _AddListState extends State<AddList> {
  final List<MyTransaction> mytransactionList = [
    MyTransaction(id: '1', title: 'Rice', amount: 500, time: DateTime.now()),
    MyTransaction(id: '2', title: 'Flour', amount: 500, time: DateTime.now()),
  ];
  void addToList(
    String txtitle,
    double txAmnt,
  ) {
    final newFxn = MyTransaction(
        id: '3', title: txtitle, amount: txAmnt, time: DateTime.now());

    setState(() {
      mytransactionList.add(newFxn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TrainLists(transactionList: mytransactionList, newFxn: addToList),
      ],
    );
  }
}
