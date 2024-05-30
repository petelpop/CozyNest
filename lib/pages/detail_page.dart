import 'package:cozy/theme.dart';
import 'package:cozy/url.dart';
import 'package:cozy/widgets/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          top: false,
          child: Stack(
            children: [
              Image.asset(
                'assets/thumbnail.png',
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover,
              ),
              ListView(
                children: [
                  const SizedBox(height: 300),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        _titleDetailPage(),
                        const SizedBox(height: 30),
                        _titleFacilities(),
                        const SizedBox(height: 12),
                        _mainFacilities(),
                        const SizedBox(height: 29),
                        _titlePhotos(),
                        const SizedBox(height: 12),
                        _listPhotos(),
                        SizedBox(height: 30),
                        _locationTitle(),
                        SizedBox(height: 6),
                        _locationDetail(context),
                        SizedBox(height: 40),
                        _buttonBook(context),
                        SizedBox(height: 40)
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Image.asset(
                        'assets/btn_back.png',
                        width: 40,
                        height: 40,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Image.asset(
                      'assets/btn_wishlist.png',
                      width: 40,
                      height: 40,
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Row _buttonBook(BuildContext context) {
    return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: (){}, 
                              child: Text(
                                'Book Now',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 18
                                ),
                                ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(MediaQuery.of(context).size.width - 24*2, 50),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                                backgroundColor: purpleColor
                              ),
                              ),
                          ],
                        );
  }

  Padding _locationDetail(BuildContext context) {
    return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Jln. Kappan Sukses No. 20\nPalembang',
                                style: greyTextStyle.copyWith(
                                  fontSize: 14
                                ),
                                ),
                                InkWell(
                                  onTap: () {
                                    // launchUrlSite(context, 'https://maps.app.goo.gl/318VpccG8LHH28az8');
                                    launchUrlSite(context, 'qwejreioj');
                                  },
                                  child: Image.asset(
                                    'assets/btn_map.png',
                                    width: 40,
                                    height: 40
                                    ),
                                ),
                            ],
                          ),
                        );
  }

  Padding _locationTitle() {
    return Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Text(
                          'Location',
                          style: regularTextStyle.copyWith(
                            fontSize: 16
                          ),
                        ),
                        );
  }

  Container _listPhotos() {
    return Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(width: 24),
                            Image.asset(
                              'assets/photo1.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 18),
                            Image.asset(
                              'assets/photo2.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 18),
                            Image.asset(
                              'assets/photo3.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 24),
                          ],
                        ),
                      );
  }

  Padding _titlePhotos() {
    return Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          'Photos',
                          style: blackTextStyle.copyWith(fontSize: 16),
                        ),
                      );
  }

  Padding _titleFacilities() {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Text(
        'Main Facilities',
        style: regularTextStyle.copyWith(fontSize: 16),
      ),
    );
  }

  Padding _mainFacilities() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FacilityItem(
              name: 'Kitchen', total: 2, imageUrl: 'assets/icon_kitchen.png'),
          FacilityItem(
              name: 'Bedroom', total: 3, imageUrl: 'assets/icon_bedroom.png'),
          FacilityItem(
              name: 'Big Cupboard',
              total: 3,
              imageUrl: 'assets/icon_cupboard.png'),
        ],
      ),
    );
  }

  Padding _titleDetailPage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kuretakeso Hott',
              style: blackTextStyle.copyWith(fontSize: 22),
            ),
            const SizedBox(height: 2),
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
            const SizedBox(width: 2),
            Image.asset(
              'assets/icon_star.png',
              width: 20,
            ),
            const SizedBox(width: 2),
            Image.asset(
              'assets/icon_star.png',
              width: 20,
            ),
            const SizedBox(width: 2),
            Image.asset(
              'assets/icon_star.png',
              width: 20,
            ),
            const SizedBox(width: 2),
            Image.asset(
              'assets/icon_star.png',
              width: 20,
              color: const Color(0xFF989BA1),
            ),
            const SizedBox(width: 22),
          ],
        )
      ]),
    );
  }
}
