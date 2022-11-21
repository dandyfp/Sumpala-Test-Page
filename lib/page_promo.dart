import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sumpalatestpage/config/app_color.dart';
import 'package:sumpalatestpage/config/app_color.dart';
import 'package:sumpalatestpage/config/app_format.dart';
import 'package:sumpalatestpage/models/data_model.dart';
import 'package:sumpalatestpage/widgets/bottom_nav_bar.dart';
import 'package:sumpalatestpage/widgets/card_promo.dart';

import 'config/app_color.dart';
import 'controller/controller_card_promo.dart';

class PagePromo extends StatelessWidget {
  PagePromo({super.key});

  final controllerPromo = Get.put(PromoController());
  String deskripsi = "deskripsi pendek tentang promo atau CTA promo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 83,
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          'List Promo',
          style:
              GoogleFonts.urbanist(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      body: FutureBuilder<List<DataModel>>(
        future: controllerPromo.getPromo(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (!snapshot.hasData) {
            return const Center(
              child: Text('KOSONG'),
            );
          }

          print(snapshot.data);

          //CARD PROMO
          return ListView.builder(
            padding: const EdgeInsets.only(top: 35),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              DataModel promo = snapshot.data![index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 14, 0, 0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                promo.image!,
                                height: 35,
                                width: 32,
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${promo.name}',
                                    style: GoogleFonts.lato(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 300,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      controller: ScrollController(),
                                      child: Text(
                                        textAlign: TextAlign.start,
                                        promo.description!,
                                        style: GoogleFonts.lato(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    promo.startDate == null
                                        ? ''
                                        : AppFormat.date('${promo.startDate}'),
                                    style: GoogleFonts.lato(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: primaryColor),
                                  ),
                                  const Text(' - '),
                                  Text(
                                    promo.endDate == null
                                        ? ''
                                        : AppFormat.date2('${promo.endDate}'),
                                    style: GoogleFonts.lato(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: primaryColor),
                                  ),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      'Lihat detail',
                                      style: GoogleFonts.nunito(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: primaryColor),
                                    ),
                                    Icon(Icons.navigate_next),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Color(0xff1E9670),
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/carticon.png',
              height: 40,
              width: 35,
            ),
            Text(
              'Belanja',
              style:
                  GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
