import 'package:cozy/models/City.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CityCard extends StatelessWidget {

  final City city;

  CityCard({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          height: 150,
          width: 120,
          color: Color(0xFFF6F7F8),
          child: Column(
            children: [
              Stack(
                children:[ Image.asset(
                  city.image,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                  ),
                  city.isPopular ?  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icon_star.png',
                          width: 22,
                          height: 22,
                          ),
                          ),
                    ),
                  ) 
                  : Container(),
                ]
              ),
                SizedBox(height: 11),
                Text(
                  city.text,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}