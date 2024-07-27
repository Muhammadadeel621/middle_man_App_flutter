import 'package:flutter/material.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/widgets/space_widget.dart';
import 'package:middlemenmodified/widgets/text_widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:multi_circular_slider/multi_circular_slider.dart';

class PersonScreen extends StatefulWidget {
  const PersonScreen({super.key});

  @override
  State<PersonScreen> createState() => _PersonScreenState();
}

class _PersonScreenState extends State<PersonScreen> {
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
            //                           list tile Widget
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
            //                           Search bar Widget
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
              height: 10,
            ),

            //        Total No of leads
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidget(
                  textalign: TextAlign.left,
                  text: "Total No of Leads",
                  textcolor: CustomColors.personheadingColor,
                  fontsize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            const SpaceWidget(
              height: 10,
            ),
            Container(
              height: 119,
              width: 345,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColors.whiteColor),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                          text: "Total No of New Leads",
                          textcolor: CustomColors.arrowdownColor,
                          fontsize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                        TextWidget(
                          text: "14",
                          textcolor: CustomColors.arrowdownColor,
                          fontsize: 10,
                          fontWeight: FontWeight.w300,
                        )
                      ],
                    ),
                    const SpaceWidget(
                      width: 10,
                    ),
                    const DottedDashedLine(
                      height: 100,
                      width: 0,
                      axis: Axis.vertical,
                      dashColor: CustomColors.blkColor,
                      strokeWidth: 2,
                    ),
                    const SpaceWidget(
                      width: 10,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                          text: "Total No of Old Leads",
                          textcolor: CustomColors.arrowdownColor,
                          fontsize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                        TextWidget(
                          text: "11",
                          textcolor: CustomColors.arrowdownColor,
                          fontsize: 10,
                          fontWeight: FontWeight.w300,
                        )
                      ],
                    ),
                    const SpaceWidget(
                      width: 10,
                    ),
                    Transform.translate(
                        offset: const Offset(-30, 0),
                        child: const Image(
                            image: AssetImage("assets/images/leads.png"))),
                    Transform.translate(
                      offset: const Offset(-55, -50),
                      child: const Icon(
                        Icons.more_vert,
                        color: Color(0xff7B7B7B),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SpaceWidget(
              height: 10,
            ),

            //        Total No of Middlemens
            const Row(
              children: [
                TextWidget(
                    text: "Total no of middlemens",
                    fontsize: 18,
                    fontWeight: FontWeight.w500,
                    textcolor: CustomColors.personheadingColor),
              ],
            ),
            const SpaceWidget(
              height: 10,
            ),
            Container(
              width: 345,
              height: 119,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColors.whiteColor),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SpaceWidget(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: MultiCircularSlider(
                      size: MediaQuery.of(context).size.width * 0.25,
                      progressBarType: MultiCircularSliderType.circular,
                      trackWidth: 20,
                      values: const [0.5, 0.5, 1],
                      colors: const [
                        CustomColors.boxoldmiddleColor,
                        CustomColors.progressbarColorone,
                        CustomColors.boxnewmiddleColor,
                      ],
                      showTotalPercentage: true,
                    ),
                  ),
                  const SpaceWidget(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            color: CustomColors.boxnewmiddleColor,
                          ),
                          const SpaceWidget(
                            width: 3,
                          ),
                          const TextWidget(
                            text: "No of New Middlemens",
                            textcolor: CustomColors.arrowdownColor,
                            fontsize: 10,
                            fontWeight: FontWeight.w300,
                          )
                        ],
                      ),
                      const SpaceWidget(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            color: CustomColors.boxoldmiddleColor,
                          ),
                          const SpaceWidget(
                            width: 3,
                          ),
                          const TextWidget(
                            text: "No of Old Middlemens",
                            textcolor: CustomColors.arrowdownColor,
                            fontsize: 10,
                            fontWeight: FontWeight.w300,
                          )
                        ],
                      )
                    ],
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: Color(0xff7B7B7B),
                  )
                ],
              ),
            ),
            const SpaceWidget(
              height: 10,
            ),

            // Leads Status Chart
            const Row(
              children: [
                TextWidget(
                    text: "Leads Status Chart",
                    fontsize: 18,
                    fontWeight: FontWeight.w500,
                    textcolor: CustomColors.personheadingColor),
              ],
            ),
            const SpaceWidget(
              height: 10,
            ),
            Container(
              width: 345,
              height: 119,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColors.whiteColor),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SpaceWidget(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: MultiCircularSlider(
                        size: MediaQuery.of(context).size.width * 0.25,
                        progressBarType: MultiCircularSliderType.circular,
                        trackWidth: 20,
                        values: const [0.3, 0.15, 0.1, 0.4, 0.5, 0.5],
                        colors: const [
                          CustomColors.forteenppercentColor,
                          CustomColors.tenpercentColor,
                          CustomColors.fourpercentColor,
                          CustomColors.progressbarColorone,
                          CustomColors.boxnewmiddleColor,
                          CustomColors.boxoldmiddleColor
                        ],
                        showTotalPercentage: true,
                      ),
                    ),
                    const SpaceWidget(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const SpaceWidget(
                        //   width: 20,
                        // ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // first row
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 15,
                                    width: 15,
                                    color: CustomColors.tenpercentColor,
                                  ),
                                  const SpaceWidget(
                                    width: 3,
                                  ),
                                  const TextWidget(
                                    text: "10% Accepted",
                                    textcolor: CustomColors.arrowdownColor,
                                    fontsize: 10,
                                    fontWeight: FontWeight.w300,
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 15,
                                        color: CustomColors.fourpercentColor,
                                      ),
                                      const SpaceWidget(
                                        width: 3,
                                      ),
                                      const TextWidget(
                                        text: "4% Processing",
                                        textcolor: CustomColors.arrowdownColor,
                                        fontsize: 10,
                                        fontWeight: FontWeight.w300,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),

                        const SpaceWidget(
                          height: 10,
                        ),

                        // Second row
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 15,
                                        color: CustomColors.boxnewmiddleColor,
                                      ),
                                      const SpaceWidget(
                                        width: 3,
                                      ),
                                      const TextWidget(
                                        text: "25% Pending",
                                        textcolor: CustomColors.arrowdownColor,
                                        fontsize: 10,
                                        fontWeight: FontWeight.w300,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 15,
                                        color: CustomColors.fourpercentColor,
                                      ),
                                      const SpaceWidget(
                                        width: 3,
                                      ),
                                      const TextWidget(
                                        text: "25% Complete",
                                        textcolor: CustomColors.arrowdownColor,
                                        fontsize: 10,
                                        fontWeight: FontWeight.w300,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SpaceWidget(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 15,
                                    width: 15,
                                    color: CustomColors.forteenppercentColor,
                                  ),
                                  const SpaceWidget(
                                    width: 3,
                                  ),
                                  const TextWidget(
                                    text: "14% Rejected",
                                    textcolor: CustomColors.arrowdownColor,
                                    fontsize: 10,
                                    fontWeight: FontWeight.w300,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Transform.translate(
                      offset: const Offset(-25, 0),
                      child: const Icon(
                        Icons.more_vert,
                        color: Color(0xff7B7B7B),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
