


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoHomepage extends StatefulWidget {
  const CupertinoHomepage({super.key});

  @override
  State<CupertinoHomepage> createState() => _CupertinoHomepageState();
}

class _CupertinoHomepageState extends State<CupertinoHomepage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    bool? switchValue = false;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.back),
        middle: Text("Cupertino"),
      ),
      child: SafeArea(
        child: Column(
        children: [
          CupertinoFormSection(children: [
            CupertinoFormRow(
              error: Text("error"),
              prefix:Row(
                children: [
                  Icon(CupertinoIcons.person),
                  Text("Person")
                ],
              ),
              child:CupertinoButton.filled(
                  disabledColor:CupertinoColors.systemOrange,
                focusColor:CupertinoColors.systemOrange,
                borderRadius: BorderRadius.circular(25),
                onPressed:(){
                    showCupertinoDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CupertinoAlertDialog(
                          title:const Text("Alert Dialouge"),
                          content:const Text("Are you sure?"),
                          actions: [
                            const CupertinoDialogAction(child: Text("Yes")),
                            CupertinoDialogAction(
                                child: const Text("No"),
                                  onPressed: (){
                                  Navigator.pop(context);
                                  },
                            ),
                          ],
                        );
                      },
                    );
                },
                child: Text("Click",style: TextStyle(color: CupertinoColors.white,fontSize: 20),),
              ),
            ),
            SizedBox(height: 30,),
            CupertinoContextMenuAction(
                trailingIcon:CupertinoIcons.wifi ,
                child: Text("wi-fi")),
            SizedBox(height: 30,),
            SelectableText(
              maxLines: 5,
              "selectable text \n my name is Rimu",style: TextStyle(fontSize: 20,color: CupertinoColors.black),
            toolbarOptions: ToolbarOptions(
              copy: true,
              cut: true,
              paste: true,
              selectAll: true
            ),
            ),

          ]),
        
        ],
            ),
      ),

    );
  }
}
