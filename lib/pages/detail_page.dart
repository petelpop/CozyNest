import 'package:cozy/theme.dart';
import 'package:cozy/widgets/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          top: false,
          child: Stack(
            children: [
              Image.asset(
                'assets/thumbnail.png',
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/btn_back.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Image.asset(
                      'assets/btn_wishlist.png',
                      width: 40,
                      height: 40,
                    )
                  ],
                ),
              ),
              ListView(
                children: [
                  SizedBox(height: 300),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        _titleDetailPage(),
                        SizedBox(height: 30),
                        Padding(
                          padding: EdgeInsets.only(left: 24),
                          child: Text(
                            'Main Facilities',
                            style: regularTextStyle.copyWith(
                              fontSize: 16
                              ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FacilityItem(name: 'Kitchen', total: 2, imageUrl: 'assets/icon_kitchen.png'),
                              FacilityItem(name: 'Bedroom', total: 3, imageUrl: 'assets/icon_bedroom.png'),
                              FacilityItem(name: 'Big Cupboard', total: 3, imageUrl: 'assets/icon_cupboard.png'),
                            ],
                          ),
                          )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }

  Padding _titleDetailPage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kuretakeso Hott',
              style: blackTextStyle.copyWith(fontSize: 22),
            ),
            SizedBox(height: 2),
            Text.rich(
              TextSpan(
                text: '\$52',
                style: purpleTextStyle.copyWith(fontSize: 16),
                children: [
                  TextSpan(
                      text: ' / month',
                      style: greyTextStyle.copyWith(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/icon_star.png',
              width: 20,
            ),
            SizedBox(width: 2),
            Image.asset(
              'assets/icon_star.png',
              width: 20,
            ),
            SizedBox(width: 2),
            Image.asset(
              'assets/icon_star.png',
              width: 20,
            ),
            SizedBox(width: 2),
            Image.asset(
              'assets/icon_star.png',
              width: 20,
            ),
            SizedBox(width: 2),
            Image.asset(
              'assets/icon_star.png',
              width: 20,
              color: Color(0xFF989BA1),
            ),
            SizedBox(width: 22),
          ],
        )
      ]),
    );
  }
}
