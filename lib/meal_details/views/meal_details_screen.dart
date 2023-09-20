import 'package:flutter/material.dart';

class MealDetailsScreen extends StatefulWidget {
  @override
  State<MealDetailsScreen> createState() => _MealDetailsScreenState();
}

class _MealDetailsScreenState extends State<MealDetailsScreen> {
  double price = 21.00;
  double sizePrice = 0;
  int quantity = 1;
  int selectedSizeIndex = 100;
  List<int> selectedIndexes = [];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15))),
                child: Image.network(
                  "https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
                  height: 200,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("بيتزا بالخضار",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("بيتزا بالخضار مميزة",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${price + sizePrice} د.أ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    if (quantity != 10) {
                                      quantity++;
                                      setState(() {});
                                    }
                                  },
                                  icon: Icon(Icons.add)),
                              Text(quantity.toString()),
                              IconButton(
                                  onPressed: () {
                                    if (quantity != 1) {
                                      quantity--;
                                      setState(() {});
                                    }
                                  },
                                  icon: Icon(Icons.remove)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.grey,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text("اختر الحجم المناسب",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("(اختياري)",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey))
                    ],
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "صنف${index + 1}",
                                style: TextStyle(fontSize: 18),
                              ),
                              Spacer(),
                              Text("${index * 9}د.أ"),
                              Radio(
                                  value: index,
                                  groupValue: selectedSizeIndex,
                                  onChanged: (v) {
                                    selectedSizeIndex = index;
                                    if (index == 0) {
                                      sizePrice = 0;
                                    } else if (index == 1) {
                                      sizePrice = 9;
                                    } else {
                                      sizePrice = 18;
                                    }

                                    setState(() {});
                                  })
                            ],
                          ),
                        );
                      })
                ],
              ),
              Divider(
                thickness: 5,
                color: Colors.grey,
              ),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1,
                      mainAxisExtent: 400),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                        color: Colors.red, child: Text("Some Text $index"));
                  }),
              Column(
                children: [
                  Row(
                    children: [
                      Text("اختر الاضافات ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("(اختياري)",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey))
                    ],
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "صنف${index + 1}",
                                style: TextStyle(fontSize: 18),
                              ),
                              Spacer(),
                              Text("${index * 9}د.أ"),
                              Checkbox(
                                  value: selectedIndexes.contains(index),
                                  onChanged: (v) {
                                    if (selectedIndexes.contains(index)) {
                                      selectedIndexes.remove(index);
                                    } else {
                                      selectedIndexes.add(index);
                                    }

                                    setState(() {});
                                  })
                            ],
                          ),
                        );
                      })
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
