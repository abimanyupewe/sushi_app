import 'package:flutter/material.dart';
import 'package:sushi_app/utils/constant/image_string.dart';

class DataSushi {
  DataSushi();

  final List<Map<String, dynamic>> sushiPopuler = [
    {
      'servingTime': '5 min',
      'id': '64f8a1c1e1a1a1a1a1a1a1a1',
      'name': 'Nigiri Sushi',
      'price': 15.99,
      'rating': 4.8,
      'image': ImageApp.nigiriSushi,
      'description':
          'Nigiri Sushi is a classic Japanese sushi consisting of oval-shaped rice topped with a slice of fresh fish.',
      'ingredients': ['Rice', 'Fresh fish', 'Wasabi'],
      'chefImage': ImageApp.splashImage,
      'calories': 200,
    },
    {
      'servingTime': '7 min',
      'id': '64f8a1c1e1a1a1a1a1a1a1a2',
      'name': 'Maki Sushi',
      'price': 12.50,
      'rating': 4.5,
      'image': ImageApp.makiSushi,
      'description':
          'Maki Sushi is a rolled sushi filled with rice and other ingredients, wrapped in nori seaweed.',
      'ingredients': ['Rice', 'Nori', 'Fish', 'Vegetables'],
      'chefImage': ImageApp.splashImage,
      'calories': 180,
    },
    {
      'servingTime': '10 min',
      'id': '64f8a1c1e1a1a1a1a1a1a1a3',
      'name': 'Combo Sushi 2',
      'price': 25.00,
      'rating': 4.7,
      'image': ImageApp.comboSushi2,
      'description':
          'Combo Sushi 2 is a package containing various selected sushi types to enjoy together.',
      'ingredients': ['Nigiri', 'Maki', 'Uramaki', 'Sake'],
      'chefImage': ImageApp.splashImage,
      'calories': 450,
    },
    {
      'servingTime': '6 min',
      'id': '64f8a1c1e1a1a1a1a1a1a1a4',
      'name': 'Salmon Sushi',
      'price': 18.00,
      'rating': 4.9,
      'image': ImageApp.salmonSushi,
      'description':
          'Salmon Sushi is sushi topped with slices of fresh salmon on rice.',
      'ingredients': ['Rice', 'Salmon', 'Wasabi'],
      'chefImage': ImageApp.splashImage,
      'calories': 220,
    },
    {
      'servingTime': '12 min',
      'id': '64f8a1c1e1a1a1a1a1a1a1a5',
      'name': 'Combo Sushi 1',
      'price': 22.00,
      'rating': 4.6,
      'image': ImageApp.comboSushi1,
      'description':
          'Combo Sushi 1 is a package containing a combination of family favorite sushi.',
      'ingredients': ['Nigiri', 'Maki', 'Sushi Roll'],
      'chefImage': ImageApp.splashImage,
      'calories': 400,
    },
  ];

  final List<Map<String, dynamic>> sushiRekomendasi = [
    {
      'servingTime': '8 min',
      'id': '64f8a1c1e1a1a1a1a1a1b1a1',
      'name': 'Sake Sushi',
      'price': 14.50,
      'rating': 4.4,
      'image': ImageApp.sakeSushi,
      'description': 'Sake Sushi is sushi topped with salmon on rice.',
      'ingredients': ['Rice', 'Salmon', 'Wasabi'],
      'chefImage': ImageApp.splashImage,
      'calories': 210,
    },
    {
      'servingTime': '6 min',
      'id': '64f8a1c1e1a1a1a1a1a1b1a2',
      'name': 'Tobiko Sushi',
      'price': 16.75,
      'rating': 4.3,
      'image': ImageApp.tobikoSushi,
      'description':
          'Tobiko Sushi is sushi topped with flying fish roe (tobiko) on rice.',
      'ingredients': ['Rice', 'Tobiko', 'Nori'],
      'chefImage': ImageApp.splashImage,
      'calories': 190,
    },
    {
      'servingTime': '9 min',
      'id': '64f8a1c1e1a1a1a1a1a1b1a3',
      'name': 'Uramaki Sushi',
      'price': 17.00,
      'rating': 4.5,
      'image': ImageApp.uramakiSushi,
      'description':
          'Uramaki Sushi is a rolled sushi with rice on the outside and nori on the inside.',
      'ingredients': ['Rice', 'Nori', 'Fish', 'Vegetables'],
      'chefImage': ImageApp.splashImage,
      'calories': 230,
    },
    {
      'servingTime': '15 min',
      'id': '64f8a1c1e1a1a1a1a1a1b1a4',
      'name': 'Sushi Family',
      'price': 35.00,
      'rating': 4.9,
      'image': ImageApp.sushiFamily,
      'description':
          'Sushi Family is a complete sushi package to enjoy with your family.',
      'ingredients': ['Nigiri', 'Maki', 'Sushi Roll', 'Uramaki'],
      'chefImage': ImageApp.splashImage,
      'calories': 600,
    },
    {
      'servingTime': '11 min',
      'id': '64f8a1c1e1a1a1a1a1a1b1a5',
      'name': 'Sushi Roll',
      'price': 19.50,
      'rating': 4.4,
      'image': ImageApp.sushiroll,
      'description':
          'Sushi Roll is a rolled sushi with various fillings inside.',
      'ingredients': ['Rice', 'Nori', 'Fish', 'Vegetables'],
      'chefImage': ImageApp.splashImage,
      'calories': 250,
    },
    {
      'servingTime': '8 min',
      'id': '64f8a1c1e1a1a1a1a1a1b1a6',
      'name': 'Sake Sushi',
      'price': 14.50,
      'rating': 4.4,
      'image': ImageApp.sakeSushi,
      'description':
          'Sake Sushi adalah sushi dengan topping ikan salmon di atas nasi.',
      'ingredients': ['Nasi', 'Salmon', 'Wasabi'],
      'chefImage': ImageApp.splashImage,
      'calories': 210,
    },
    {
      'servingTime': '6 min',
      'id': '64f8a1c1e1a1a1a1a1a1b1a7',
      'name': 'Tobiko Sushi',
      'price': 16.75,
      'rating': 4.3,
      'image': ImageApp.tobikoSushi,
      'description':
          'Tobiko Sushi adalah sushi dengan topping telur ikan terbang (tobiko) di atas nasi.',
      'ingredients': ['Nasi', 'Tobiko', 'Nori'],
      'chefImage': ImageApp.splashImage,
      'calories': 190,
    },
    {
      'servingTime': '9 min',
      'id': '64f8a1c1e1a1a1a1a1a1b1a8',
      'name': 'Uramaki Sushi',
      'price': 17.00,
      'rating': 4.5,
      'image': ImageApp.uramakiSushi,
      'description':
          'Uramaki Sushi adalah sushi gulung dengan nasi di bagian luar dan nori di dalam.',
      'ingredients': ['Nasi', 'Nori', 'Ikan', 'Sayuran'],
      'chefImage': ImageApp.splashImage,
      'calories': 230,
    },
    {
      'servingTime': '15 min',
      'id': '64f8a1c1e1a1a1a1a1a1b1a9',
      'name': 'Sushi Family',
      'price': 35.00,
      'rating': 4.9,
      'image': ImageApp.sushiFamily,
      'description':
          'Sushi Family adalah paket sushi lengkap untuk dinikmati bersama keluarga.',
      'ingredients': ['Nigiri', 'Maki', 'Sushi Roll', 'Uramaki'],
      'chefImage': ImageApp.splashImage,
      'calories': 600,
    },
    {
      'servingTime': '11 min',
      'id': '64f8a1c1e1a1a1a1a1a1b1b0',
      'name': 'Sushi Roll',
      'price': 19.50,
      'rating': 4.4,
      'image': ImageApp.sushiroll,
      'description':
          'Sushi Roll adalah sushi gulung dengan berbagai isian di dalamnya.',
      'ingredients': ['Nasi', 'Nori', 'Ikan', 'Sayuran'],
      'chefImage': ImageApp.splashImage,
      'calories': 250,
    },
  ];
}
