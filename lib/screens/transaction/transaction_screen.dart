import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 70, 113, 134),
      body: SafeArea(
          child: ListView.separated(
              padding: EdgeInsets.all(10),
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 20,
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 30,
                        child: Text(
                          '12 apl',
                          textAlign: TextAlign.center,
                        )),
                    title: Text('32517'),
                    subtitle: Text(' travel'),
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return SizedBox(
                  height: 10,
                );
              },
              itemCount: 10)),
    );
  }
}
