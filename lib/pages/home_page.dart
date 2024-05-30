import 'package:cozy/models/City.dart';
import 'package:cozy/models/Space.dart';
import 'package:cozy/models/Tips.dart';
import 'package:cozy/providers/space_provider.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/bottom_nav_item.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(height: 24),
            // NOTE: TITLE/HEADER
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
              // NOTE: POPULAR CITIES
              _titlePopularCities(),
              SizedBox(height: 16),
              _listPopularCities(),
              SizedBox(height: 30),
              //NOTE:RECOMMENDED SPACE
              _titleSpace(),
              SizedBox(height: 16),
              _listSpace(context),
              SizedBox(height: 30),
              //NOTE: TIPS & GUIDANCE
              _titleGuidance(),
              SizedBox(height: 16),
              _listGuidance(),
              SizedBox(height: 100),
          ],
        )
        ),
        floatingActionButton: _bottomNavBar(context),
                floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Container _bottomNavBar(BuildContext context) {
    return Container(
                height: 65,
                width: MediaQuery.of(context).size.width - (2 * 24),
                margin: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: Color(0xFFF6F7F8),
                  borderRadius: BorderRadius.circular(23)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavbarItem(imageUrl: 'assets/icon_home.png', isActive: true),
                    BottomNavbarItem(imageUrl: 'assets/icon_mail.png', isActive: false),
                    BottomNavbarItem(imageUrl: 'assets/icon_card.png', isActive: false),
                    BottomNavbarItem(imageUrl: 'assets/icon_love.png', isActive: false),
                  ],
                ),
              );
  }

  Padding _listGuidance() {
    return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      TipsCard(tips: Tips(id: 1, imageUrl: 'assets/tips1.png', title: 'City Guidelines', description: 'Updated 20 Apr')),
                      SizedBox(height: 20),
                      TipsCard(tips: Tips(id: 2, imageUrl: 'assets/tips2.png', title: 'Jakarta Fairship', description: 'Updated 11 Dec'))

                    ],
                  ),
                  );
  }

  Padding _titleGuidance() {
    return Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Tips & Guidance',
                  style: blackTextStyle.copyWith(
                    fontSize: 16
                  ),
                ),
                );
  }

  Padding _titlePopularCities() {
    return Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16
                ),
              ),
              );
  }

  Container _listPopularCities() {
    return Container(
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
              );
  }

  Padding _listSpace(BuildContext context) {
        var spaceProvider = Provider.of<SpaceProvider>(context);
        spaceProvider.getrecommendedSpace();

    return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: FutureBuilder<List<Space>>(
                    future: spaceProvider.getrecommendedSpace(),
                    builder: (BuildContext context,AsyncSnapshot<List<Space>> snapshot) {
                      if (snapshot.hasData) {
                        List<Space> data = snapshot.data ?? [];
                        int index = 0;

                        return Column(
                          children: data.map((item){
                            index++;
                            return Container(
                              margin: EdgeInsets.only(
                                top: index ==  1 ? 0 : 30
                              ),
                              child: SpaceCard(space: item),
                            );
                          }).toList()
                        );
                      } else {
                        return Center(
                            child: CircularProgressIndicator(),
                        );
                      }
                    },
                    ) 
                );
  }

  Padding _titleSpace() {
    return Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Recommended Space',
                  style: regularTextStyle.copyWith(
                    fontSize: 16
                  ),
                ),
                );
  }
}