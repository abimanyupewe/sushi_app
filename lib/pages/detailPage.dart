import 'package:flutter/material.dart';
import 'package:sushi_app/data/sushi_data.dart';

class DetailPage extends StatelessWidget {
  final String id;
  const DetailPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataSushi = DataSushi();
    final allSushi = [...dataSushi.sushiPopuler, ...dataSushi.sushiRekomendasi];
    final sushiList = allSushi.where((item) => item['id'] == id).toList();
    final sushi = sushiList.isNotEmpty ? sushiList.first : null;

    if (sushi == null) {
      return Scaffold(
        appBar: AppBar(title: Text('Detail')),
        body: Center(child: Text('Sushi not found')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(sushi != null ? sushi['name'] : 'Detail')),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: Image.asset(sushi['image'], width: 300),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    sushi['name'],
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 24),
                      Text(
                        sushi['rating'].toString(),
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              if (sushi['description'] != null)
                Text(sushi['description'], style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey.shade200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (sushi['servingTime'] != null)
                      Row(
                        children: [
                          Icon(Icons.access_time, size: 20, color: Colors.red),
                          SizedBox(width: 4),
                          Text(
                            '${sushi['servingTime']}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    if (sushi['calories'] != null)
                      Row(
                        children: [
                          Icon(
                            Icons.local_fire_department,
                            size: 20,
                            color: Colors.red,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '${sushi['calories']} kcal',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              if (sushi['ingredients'] != null && sushi['ingredients'] is List)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ingredients',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    ...sushi['ingredients'].map<Widget>((ingredient) {
                      return Text(ingredient, style: TextStyle(fontSize: 16));
                    }).toList(),
                  ],
                ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Price :'),
                            Text(
                              '\$ ${(sushi['price'] ?? 0).toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            Text("1", style: TextStyle(fontSize: 20)),
                            SizedBox(width: 10),
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle order action
                          },
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Add Cart',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle order action
                          },
                          child: Container(
                            width: 155,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
