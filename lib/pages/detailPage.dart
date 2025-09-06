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
        appBar: AppBar(title: Text('Detail Sushi')),
        body: Center(child: Text('Data sushi tidak ditemukan')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(sushi['name'])),
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Padding(
                padding: const EdgeInsets.all(50),
                child: Image.asset(sushi['image'], width: 200),
              )),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    sushi['name'],
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text(sushi['rating'].toString()),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),
              if (sushi['description'] != null)
                Text(sushi['description'], style: TextStyle(fontSize: 16)),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (sushi['servingTime'] != null) ...[
                      Row(
                        children: [
                          Icon(Icons.access_time, size: 25, color: Colors.red),
                          SizedBox(width: 4),
                          Text(
                            sushi['servingTime'],
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                    if (sushi['calories'] != null) ...[
                      Row(
                        children: [
                          SizedBox(width: 25),
                          Icon(
                            Icons.local_fire_department,
                            size: 16,
                            color: Colors.red,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '${sushi['calories']} kcal',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
              SizedBox(height: 16),
              if (sushi['ingredients'] != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ingredients:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    ...List<Widget>.from(
                      (sushi['ingredients'] as List).map(
                        (ingredient) => Text('- $ingredient'),
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '\$ ${(sushi['price'] ?? 0).toStringAsFixed(2)}',
                              style: TextStyle(fontSize: 20, color: Colors.red),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            Text('1', style: TextStyle(fontSize: 18)),
                            SizedBox(width: 10),
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle add to cart action
                          },
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            margin: EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Add to Cart',
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
                            // Handle add to cart action
                          },
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            margin: EdgeInsets.only(top: 20),
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
