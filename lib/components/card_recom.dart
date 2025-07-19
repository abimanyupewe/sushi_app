import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardRecom extends StatelessWidget {
  final Map<String, dynamic> sushi;
  const CardRecom({Key? key, required this.sushi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Container(width: 80, child: Image.asset(sushi['image'])),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                sushi['name'].toString(),
                style: GoogleFonts.plusJakartaSans(fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                '\$${(sushi['price'] ?? 0).toStringAsFixed(2)}',
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 18),
                  Text(
                    sushi['rating'].toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.favorite_border_outlined, size: 30, color: Colors.grey),
        ],
      ),
    );
  }
}
