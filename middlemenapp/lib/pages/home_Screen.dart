import 'package:flutter/material.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/widgets/space_widget.dart';
import 'package:middlemenmodified/widgets/text_widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.bgColorgetstart,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SpaceWidget(
                height: 30,
              ),
              ListTile(
                leading: Transform.translate(
                  offset: const Offset(-16, 0),
                  child: const Icon(
                    Icons.segment_outlined,
                    color: CustomColors.bgColor,
                    size: 30,
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-16, 0),
                  child: const TextWidget(
                    text: "Hi, Adeel👋",
                    textcolor: CustomColors.arrowdownColor,
                    fontsize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Transform.translate(
                  offset: const Offset(-16, 0),
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
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1669882305273-674eff6567af?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZSUyMGltYWdlfGVufDB8fDB8fHww"),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    isDense: true,
                    fillColor: CustomColors.textformFeildColor,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xff000026))),
                    hintText: "Search total no of leads",
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                        // color: CustomColors.homeSearchbarColor
                        ),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                      color: CustomColors.blkColor,
                    ),
                    suffixIcon: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.mic,
                            size: 20,
                            color: Color(0xff000026),
                          ),
                          const SpaceWidget(
                            width: 5,
                          ),
                          Icon(
                            MdiIcons.filter,
                            size: 20,
                            color: const Color(0xff000026),
                          ),
                          const SpaceWidget(
                            width: 5,
                          ),
                        ],
                      ),
                    )),
              ),
              const SpaceWidget(
                height: 50,
              ),
              const Image(image: AssetImage("assets/images/group-comp.png")),
              const TextWidget(
                text: "Welcome to Middle Men",
                textcolor: CustomColors.getstrwelcome,
                fontsize: 22,
                fontWeight: FontWeight.w400,
              ),
              const TextWidget(
                text: "The platform for MLM",
                // textcolor: CustomColors.homesubtextColor,
                textcolor: CustomColors.homesubtextColor,
                fontsize: 16,
                fontWeight: FontWeight.w200,
              ),
            ],
          ),
        ));
  }
}
