import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPopuler extends StatelessWidget {
  final Map<String, dynamic> sushi;
  const CardPopuler({Key? key, required this.sushi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(width: 120, child: Image.asset(sushi['image'])),
          ),
          SizedBox(height: 20),
          Text(
            sushi['name'].toString(),
            style: GoogleFonts.plusJakartaSans(fontSize: 20),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${(sushi['price'] ?? 0).toStringAsFixed(2)}',
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
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
        ],
      ),
    );
  }
}
