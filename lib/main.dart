import 'package:butterflies_collection/butterfly_class.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Collection(),
        ),
      ),
    ),
  );
}

class Collection extends StatefulWidget {
  const Collection({Key? key}) : super(key: key);

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  int selectedIndex = 0; //изнач значение 0
  final Border highlightBorder = Border.all(color: Colors.blue, width: 3);
  final Border border = Border.all(width: 1, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const Center(
            child: Text(
              'Бабочки',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: butterflyList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index; //чтобы пометить что индекс элемента выбран
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                          border: index == selectedIndex ? highlightBorder : border,
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            butterflyList[index].name,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              butterflyList[selectedIndex].description, //получаем эл-т из списка
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              butterflyList[selectedIndex].photo,
            ),
          ),
        ],
      ),
    );
  }
}
