import 'package:flutter/material.dart';


class AppBarPage extends StatefulWidget {
  const AppBarPage({super.key});

  @override
  State<AppBarPage> createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  late ScrollController scrollController;
  Color iconColor = Colors.transparent;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController =ScrollController();
    scrollController.addListener(()=>
    setState(() {
      iconColor = scrollController.offset>50?Colors.black:Colors.purple;
    })
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: CustomScrollView(
            controller: scrollController,
      slivers: [
        SliverAppBar(
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(size.height * .13),
              child: SearchBar(
                hintText: "search here",
                leading: Icon(Icons.search),
                constraints: BoxConstraints(
                  minHeight: size.height * .05,
                  minWidth: size.width * .5,
                  maxWidth: size.width * .8,
                ),
              )),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 40,
                color:iconColor,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notification_important_outlined,
                  size: 40,
                  color:iconColor,
                ))
          ],
          floating: true,
          pinned: true,
          centerTitle: true,
          title: Text(
            "AppBar",
            style: TextStyle(color:iconColor, fontWeight: FontWeight.bold,
            fontSize: 40
            ),
          ),
          backgroundColor: Colors.transparent,
          expandedHeight: size.height*.2,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/images/slider_one.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return ListTile(
              title: Text("Rimu Akter"),
              subtitle: Text("i am a student of CST"),
              trailing: Icon(Icons.more_vert),
            );
          }),
        )
      ],
    ));
  }
}
