import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 5,
      child: Container(
        height: 66,
        child: Row(
          children: <Widget>[
            //icon left
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          'asset/homeicon.png',
                          height: 24,
                          width: 24,
                        ),
                        Text(
                          'Beranda',
                          style: GoogleFonts.lato(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          'asset/paymenticon.png',
                          height: 24,
                          width: 24,
                        ),
                        Text(
                          'Transaksi',
                          style: GoogleFonts.lato(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //icon right
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Image.asset(
                        'asset/botleicon.png',
                        height: 24,
                        width: 24,
                      ),
                      Text(
                        'Sample',
                        style: GoogleFonts.lato(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Image.asset(
                        'asset/discicon.png',
                        height: 24,
                        width: 24,
                      ),
                      Text(
                        'Promo',
                        style: GoogleFonts.lato(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
