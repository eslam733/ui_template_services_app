import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/helper/dialogs/bottom_sheet.dart';
import 'package:kayaan/pages/account/view/account_item.dart';
import 'package:kayaan/pages/choose_language/view/choose_language_screen.dart';
import 'package:kayaan/pages/edit_profile/view/edit_profile_screen.dart';
import 'package:kayaan/pages/notifications/view/notifications_screen.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/appbar_widget.dart';
import '../../help/help_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: LocaleKeys.account.tr(),
        hasBackButton: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              AccountScreenItem(
                iconPath: "assets/images/aProfile.png",
                title: LocaleKeys.editProfile.tr(),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    EditProfileScreen.routeName,
                  );
                },
              ),
              AccountScreenItem(
                iconPath: "assets/images/aNotifications.png",
                title: LocaleKeys.notification.tr(),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    NotificationsScreen.routeName,
                  );
                },
              ),
              AccountScreenItem(
                iconPath: "assets/images/aLanguage.png",
                title: LocaleKeys.language.tr(),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    ChooseLanguageScreen.routeName,
                  );
                },
              ),
              AccountScreenItem(
                iconPath: "assets/images/aHelp.png",
                title: LocaleKeys.help.tr(),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    HelpScreen.routeName,
                  );
                },
              ),
              AccountScreenItem(
                iconPath: "assets/images/aLogout.png",
                title: LocaleKeys.logout.tr(),
                forgroundColor: Colors.red,
                onTap: () {
                  showConfirmationBottomSheet(
                    context,
                    title: LocaleKeys.logout.tr(),
                    hintText: LocaleKeys.logoutHint.tr(),
                    titleTextColor: const Color(0xffCE1126),
                    acceptButtonColor: const Color(0xffCE1126),
                    onYesPressed: () {},
                  );
                },
              ),
              AccountScreenItem(
                iconPath: "assets/images/aDeleteAcount.png",
                title: LocaleKeys.deleteAccount.tr(),
                onTap: () {
                  showConfirmationBottomSheet(
                    context,
                    title: LocaleKeys.deleteAccount.tr(),
                    hintText: LocaleKeys.deleteAccountHint.tr(),
                    acceptButtonColor: const Color.fromARGB(255, 253, 229, 232),
                    acceptButtonTextColor: const Color(0xffCE1126),
                    titleTextColor: const Color(0xff401145),
                    onYesPressed: () {},
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
