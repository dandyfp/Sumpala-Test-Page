import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sumpalatestpage/controller/controller_card_promo.dart';
import 'package:sumpalatestpage/models/data_model.dart';

import '../config/app_color.dart';

class CardPromo extends StatelessWidget {
  const CardPromo(
    DataModel pro, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataModel promos = DataModel();
    return Card(
      margin: const EdgeInsets.all(26),
      elevation: 1,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.surfaceVariant,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Container(
        height: 105,
        width: 500,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 14, 0, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.network(
                    promos.image!,
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
                        '${promos.name}',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'deskripsi pendek tentang promo atau CTA promo',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
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
                  Text(
                    '${promos.startDate} - ${promos.endDate}',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: primaryColor),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Text(
                          'Lihat detail',
                          style: TextStyle(
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
    );
  }
}
