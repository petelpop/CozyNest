import 'package:cozy/models/City.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Explore Now',
                  style: blackTextStyle.copyWith(
                    fontSize: 24
                  ),
                  ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Mencari kosan yang cozy',
                  style: greyTextStyle.copyWith(
                    fontSize: 16
                  ),
                ),
                ),
                SizedBox(height: 30),
                Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Popular Cities',
                  style: regularTextStyle.copyWith(
                    fontSize: 16
                  ),
                ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.only(left: 14),
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CityCard(city: City(id: 1, image: 'assets/city1.png', text: 'Jakarta')),
                      CityCard(city: City(id: 2, image: 'assets/city2.png', text: 'bandung', isPopular: true)),
                      CityCard(city: City(id: 3, image: 'assets/city3.png', text: 'Surabaya'))
                    ],
                  ),
                )

            ],
          ),
        )
        ),
    );
  }
}