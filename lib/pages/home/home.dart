import 'package:flutter/material.dart';
import 'package:sushi_app/components/card_populer.dart';
import 'package:sushi_app/components/card_recom.dart';
import 'package:sushi_app/data/sushi_data.dart';
import 'package:sushi_app/utils/constant/colors.dart';
import 'package:sushi_app/utils/constant/image_string.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/pages/detailPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DataSushi dataSushi = DataSushi();
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    final filteredPopuler = dataSushi.sushiPopuler
        .where(
          (sushi) => sushi['name'].toString().toLowerCase().contains(
            searchText.toLowerCase(),
          ),
        )
        .toList();
    final filteredRekomendasi = dataSushi.sushiRekomendasi
        .where(
          (sushi) => sushi['name'].toString().toLowerCase().contains(
            searchText.toLowerCase(),
          ),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Icon(Icons.notifications_active_outlined, size: 30),
          ),
        ],
        leading: Icon(Icons.menu),
        elevation: 0,
        title: Text(
          "A Sushi",
          style: TextStyle(
            color: Colors.grey[900],
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          // promo
          SliverAppBar(
            expandedHeight: 190,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            "Get 30% Promo Tobiko Sushi",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailPage(id: '64f8a1c1e1a1a1a1a1a1b1a7'),
                              ),
                            );
                          },
                          child: Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColor.purpleSoft,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Get a promo",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.arrow_right_alt_outlined,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset(ImageApp.tobikoSushi),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // search
          SliverAppBar(
            expandedHeight: 80,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 5,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Search a sushi',
                  ),
                  onChanged: (value) {
                    setState(() {
                      searchText = value;
                    });
                  },
                ),
              ),
            ),
          ),
          // popular
          SliverAppBar(
            pinned: true,
            expandedHeight: 350,
            toolbarHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, bottom: 10),
                    child: Text(
                      'Popular Sushi',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    height: 260,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: filteredPopuler.length,
                      itemBuilder: (context, index) {
                        return CardPopuler(sushi: filteredPopuler[index]);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 25,
                      bottom: 10,
                    ),
                    child: Text(
                      'For you',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: CardRecom(sushi: filteredRekomendasi[index]),
              );
            }, childCount: filteredRekomendasi.length),
          ),
        ],
      ),

      // ListView(
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     Column(
      //       children: [

      //         SizedBox(height: 15),

      //         SizedBox(height: 15),
      //         Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(left: 25, bottom: 10),
      //               child: Text(
      //                 'Popular Sushi',
      //                 style: GoogleFonts.plusJakartaSans(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.w600,
      //                 ),
      //               ),
      //             ),
      //             Container(
      //               padding: EdgeInsets.symmetric(horizontal: 25),
      //               height: 260,
      //               child: ListView.builder(
      //                 scrollDirection: Axis.horizontal,
      //                 itemCount: dataSushi.sushiPopuler.length,
      //                 itemBuilder: (context, index) {
      //                   return CardPopuler(
      //                     sushi: dataSushi.sushiPopuler[index],
      //                   );
      //                 },
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(
      //                 top: 10,
      //                 left: 25,
      //                 bottom: 10,
      //               ),
      //               child: Text(
      //                 'For you',
      //                 style: GoogleFonts.plusJakartaSans(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.w600,
      //                 ),
      //               ),
      //             ),
      //             Container(
      //               padding: EdgeInsets.symmetric(horizontal: 25),
      //               child: ListView.builder(
      //                 shrinkWrap: true,
      //                 itemCount: dataSushi.sushiRekomendasi.length,
      //                 itemBuilder: (context, index) {
      //                   return CardRecom(
      //                     sushi: dataSushi.sushiRekomendasi[index],
      //                   );
      //                 },
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
