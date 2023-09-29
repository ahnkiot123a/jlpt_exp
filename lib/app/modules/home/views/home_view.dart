import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            // controller: _tabController,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.green),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            padding: EdgeInsets.all(6),
            tabs: [
              Tab(text: 'Tab1'),
              Tab(text: 'Tab2'),
              Tab(text: 'Tab3'),
            ],
          ),
          title: Text('Tabs Demo', style: TextStyle(color: Colors.black87),),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );

  }
}
