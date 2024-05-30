import 'package:cozy/models/Space.dart';
import 'package:cozy/pages/detail_page.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SpaceCard extends StatelessWidget {

  final Space space;

  SpaceCard({super.key, required this.space});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              height: 110,
              width: 130,
              child: Stack(
                children: [
                  Image.network(
                    space.imageUrl,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 18,
                                  height: 18,
                                  ),
                                  Text(
                                    '${space.rating}/5',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 13
                                    ),
                                  )
                              ],
                            ),
                              ),
                        ),
                      ) 
                ]),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: blackTextStyle.copyWith(
                  fontSize: 18
                  ),
                ),
              SizedBox(height: 2),
              Text.rich(
                TextSpan(
                  text: '\$${space.price}',
                  style: purpleTextStyle.copyWith(
                    fontSize: 16
                  ),
                  children: [
                    TextSpan(
                    text: ' / month',
                    style: greyTextStyle.copyWith(
                      fontSize: 16
                    )
                  ),
                  ]
                )
              ),
              SizedBox(height: 16),
              Text(
                '${space.city}, ${space.country}',
                style: greyTextStyle.copyWith(
                  fontSize: 14
                ),
                )
            ],
          )
        ],
      ),
    );
  }
}