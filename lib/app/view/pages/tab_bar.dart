import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _ToolBarPageState();
}

class _ToolBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar:AppBar(
          title: Text("TabBar"),
          centerTitle: true,
          bottom:TabBar(tabs: [
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.verified_outlined),),
            Tab(icon: Icon(Icons.add_shopping_cart),),
          ],
            dividerColor: Colors.transparent,
            indicatorColor: Colors.purple,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        body: TabBarView(children: [
         Text("Home"),
          Text("Verified"),
          Text("Cart"),
        ]),
      ),
    );
  }
}

