import 'package:flutter/material.dart';

import 'components/banner_section.dart';
import 'components/best_offers_section.dart';
import 'components/home_appbar_widget.dart';
import 'components/services_section.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: const [
              HomeBanner(),
              SizedBox(height: 20),
              HomeServices(),
              SizedBox(height: 20),
              BestOffers(),
            ],
          ),
        ),
      ),
    );
  }
}
