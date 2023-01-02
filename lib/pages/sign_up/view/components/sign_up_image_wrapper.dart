import 'package:flutter/material.dart';
import '../../../../resources/constants/syles.dart';

class SignUpImageWrapper extends StatelessWidget {
  const SignUpImageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomStart,
      children: [
        CircleAvatar(
          radius: 50,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(60)),
            child: Image.asset("assets/images/profile_placeholder.png"),
          ),
        ),
        Positioned(
          bottom: 8,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.edit_outlined,
                color: Color(0xff9ABF44),
                size: 13,
              ),
            ),
          ),
        )
      ],
    );
  }
}
