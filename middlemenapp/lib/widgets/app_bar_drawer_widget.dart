import 'package:flutter/material.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/pages/profile.dart';
import 'package:middlemenmodified/widgets/text_widget.dart';

class DrawerAppbarWidget extends StatelessWidget {
  const DrawerAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: const Drawer(),
      title: ListTile(
        title: Transform.translate(
          offset: const Offset(-20, 0),
          child: const TextWidget(
            text: "Hi, Adeel👋",
            textcolor: CustomColors.arrowdownColor,
            fontsize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Transform.translate(
          offset: const Offset(-20, 0),
          child: const Row(
            children: [
              Icon(
                Icons.location_on,
                color: CustomColors.homemapiconColor,
                size: 15,
              ),
              TextWidget(
                text: "Karachi, Pakistan",
                textcolor: CustomColors.blkColor,
                fontsize: 8,
                fontWeight: FontWeight.w400,
              )
            ],
          ),
        ),
        trailing: Transform.translate(
          offset: const Offset(25, 0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
            },
            child: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://plus.unsplash.com/premium_photo-1669882305273-674eff6567af?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZSUyMGltYWdlfGVufDB8fDB8fHww"),
            ),
          ),
        ),
      ),
    );
  }
}
