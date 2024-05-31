import 'package:cozy/pages/error_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlSite(BuildContext context, String url) async{
        final Uri urlParsed = Uri.parse(url);

      if (await canLaunchUrl(urlParsed)) {
        launchUrl(urlParsed);
      } else {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ErrorPage()));
      }
    }
