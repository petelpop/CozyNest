import 'package:cozy/pages/home_page.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/error.png',
                width: 300,
                height: 85,
              ),
              const SizedBox(height: 70),
              Text(
                'Where are you going?',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
              const SizedBox(height: 14),
              Text(
                'Seems like the page that you\nwere requested is already gone',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: purpleColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                  minimumSize: const Size(210, 50)
                ),
                child: Text(
                  'Go Back',
                  style: whiteTextStyle.copyWith(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
