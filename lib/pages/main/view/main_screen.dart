import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/pages/main/view/components/current_sellected_screen.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class MainScreen extends StatefulWidget {
  static const routeName = "/main";
  final int index;
  const MainScreen(this.index, {super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int currentIndex;
  double opacity = 1;
  @override
  void initState() {
    super.initState();
    currentIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        opacity: opacity,
        duration: const Duration(milliseconds: 270),
        curve: Curves.easeIn,
        child: CurrentSellectedScreen(currentIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          child: BottomNavyBar(
            selectedIndex: currentIndex,
            itemCornerRadius: 24,
            curve: Curves.easeIn,
            onItemSelected: onItemSelected,
            items: [
              BottomNavyBarItem(
                icon: const Icon(EvaIcons.home),
                title: Text(LocaleKeys.main.tr()),
                activeColor: AppStyles.primaryColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(EvaIcons.fileTextOutline),
                title: Text(LocaleKeys.myOrders.tr()),
                activeColor: AppStyles.primaryColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.wallet),
                title: Text(LocaleKeys.wallet.tr()),
                activeColor: AppStyles.primaryColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(EvaIcons.person),
                title: Text(LocaleKeys.account.tr()),
                activeColor: AppStyles.primaryColor,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItemSelected(index) {
    if (index == currentIndex) return;
    setState(() {
      opacity = 0.6;
    });
    Future.delayed(const Duration(milliseconds: 80), () {
      setState(() {
        currentIndex = index;
      });
      Future.delayed(const Duration(milliseconds: 50), () {
        setState(() {
          opacity = 1;
        });
      });
    });
  }
}
