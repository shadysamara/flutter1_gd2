import 'package:flutter/material.dart';
import 'package:flutter_application_2/excersise2/data/category_data.dart';
import 'package:flutter_application_2/excersise2/data/category_model.dart';

class ExersiceScreen extends StatefulWidget {
  const ExersiceScreen({super.key});

  @override
  State<ExersiceScreen> createState() => _ExersiceScreenState();
}

class _ExersiceScreenState extends State<ExersiceScreen> {
  List<Category> categories = catsMap.map((e) => Category(e)).toList();
  int selectedIndex = 100;
  List<Product> products = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("Categories"),
      ),
      body: Column(
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      selectedIndex = index;
                      products = categories[index].products ?? [];
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            categories[index].name ?? '',
                            style: TextStyle(fontSize: 20),
                          ),
                          decoration: BoxDecoration(
                              color: index == selectedIndex
                                  ? Colors.grey
                                  : Colors.red,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Visibility(
                          visible: selectedIndex == index,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 3,
                            child: Text(
                              categories[index].name ?? '',
                              // style: TextStyle(color: Colors.transparent),
                            ),
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Text(
                      products[index].name ?? '',
                      style: TextStyle(fontSize: 20),
                    );
                  }))
        ],
      ),
    );
  }
}
