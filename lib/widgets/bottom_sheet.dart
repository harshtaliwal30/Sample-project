import 'package:dhravya_2/models/item_data.dart';
import 'package:dhravya_2/widgets/bottom_items.dart';
import 'package:flutter/material.dart';

class OpenBottomSheet extends StatefulWidget {
  @override
  _OpenBottomSheetState createState() => _OpenBottomSheetState();
}

class _OpenBottomSheetState extends State<OpenBottomSheet> {
  List list = [];
  @override
  void initState() {
    list = ItemData().listA;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                color: Colors.amber,
                onPressed: () {
                  setState(() {
                    list = ItemData().listA;
                  });
                },
                child: Text('A'),
              ),
              RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  setState(() {
                    list = ItemData().listB;
                  });
                },
                child: Text('B'),
              ),
              RaisedButton(
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    list = ItemData().listC;
                  });
                },
                child: Text('C'),
              ),
              RaisedButton(
                color: Colors.cyan,
                onPressed: () {
                  setState(() {
                    list = ItemData().listD;
                  });
                },
                child: Text('D'),
              ),
            ],
          ),
          Container(
            height: 340,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                childAspectRatio: 0.8,
              ),
              itemCount: list.length,
              itemBuilder: (builder, index) {
                return ShowBottomItems(list[index]);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  color: Colors.orange,
                  onPressed: () {
                    setState(() {
                      list = ItemData().listA;
                    });
                  },
                  child: Text('Refresh'),
                ),
                RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Close',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
