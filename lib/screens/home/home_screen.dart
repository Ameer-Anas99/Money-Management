import 'package:flutter/material.dart';
import 'package:money_mgt/screens/bottom/bottomnavigationbar.dart';
import 'package:money_mgt/screens/category/category_screen.dart';
import 'package:money_mgt/screens/transaction/transaction_screen.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final pages = [TransactionScreen(), CategoryScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MONEY MANAGER'),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
        titleTextStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
      ),
      bottomNavigationBar: BottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, _) {
            return pages[updatedIndex];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value == 0) {
            print('object');
          } else {
            print('add c');
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
