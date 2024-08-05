import 'package:flutter/material.dart';
import 'package:scrollable_tab/scrollable_tab.dart';
import 'model/coffee_model.dart';

List<TabHeaderItems<String>> getTabItems(List<Coffee> coffeeList) {
  final Map<String, List<String>> categoryMap = {};
  for (var coffee in coffeeList) {
    if (!categoryMap.containsKey(coffee.category)) {
      categoryMap[coffee.category] = [];
    }
    categoryMap[coffee.category]!.add(coffee.name);
  }

  return categoryMap.entries.map((entry) {
    return TabHeaderItems<String>(
      name: entry.key,
      items: entry.value,
    );
  }).toList();
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<TabHeaderItems<String>> tabItems = [];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    List<Coffee> coffeeList = Coffee.fromJsonList(jsonData);
    tabItems = getTabItems(coffeeList);
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text('Scrollable Tab View')),
      body: ScrollableTabView<String>(
        tabItems: tabItems,
        tabHeaderBuilder: (tabInfo) => Container(
          decoration: BoxDecoration(color:tabInfo.selected? Colors.black:null),
          child: Tab(
            child: Text(tabInfo.header.name,style:TextStyle(color: Colors.red) ,),
             ),
        ),
        groupHeaderBuilder: (header) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(

            header.name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),
          ),
        ),
        itemBuilder: (item) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            tileColor: Colors.green,
              title: Text(item)),
        ),
      ),
    );
  }
}
