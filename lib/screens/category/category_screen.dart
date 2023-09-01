import 'package:flutter/material.dart';
import 'package:money_mgt/screens/category/expense_category_list.dart';
import 'package:money_mgt/screens/category/income_category_list.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 74, 117, 138),
      body: SafeArea(
          child: Column(
        children: [
          TabBar(
            indicatorColor: Colors.white,
            controller: tabController,
            labelColor: Colors.black,
            unselectedLabelColor: const Color.fromARGB(255, 181, 179, 179),
            tabs: [
              Tab(text: 'INCOME'),
              Tab(
                text: 'EXPENSE',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                IncomeCategoryList(),
                ExpenseCategoryList(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
