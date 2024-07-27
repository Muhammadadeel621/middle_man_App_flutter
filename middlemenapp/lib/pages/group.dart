import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/widgets/space_widget.dart';
import 'package:middlemenmodified/widgets/text_widget.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({super.key});

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgColorgetstart,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SpaceWidget(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  TextWidget(
                    text: "Leads Status",
                    textcolor: CustomColors.personheadingColor,
                    fontsize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1669882305273-674eff6567af?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZSUyMGltYWdlfGVufDB8fDB8fHww"),
                  ),
                ],
              ),
              const SpaceWidget(
                height: 10,
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // const SpaceWidget(
                  //   width: 200,
                  // ),
                  Container(
                    height: 40,
                    width: 135,
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black),
                        color: CustomColors.systemtextformFeildColor,

                        //  color: Color(0xff00000026)),
                        // color: Colors.black,
                        border: Border.all(color: CustomColors.bgColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          const TextWidget(
                            text: "Direct Leads",
                            textcolor: CustomColors.directLeadsColor,
                            fontsize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                          const SpaceWidget(
                            width: 5,
                          ),
                          Container(
                            height: 24,
                            width: 42,
                            decoration: BoxDecoration(
                                color: CustomColors.bgColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                              child: TextWidget(
                                text: "All",
                                textcolor: CustomColors.whiteColor,
                                fontsize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SpaceWidget(
                height: 10,
              ),
              DataTable(
                // columnSpacing: 10,
                dividerThickness: 2,
                // showBottomBorder: false,
                // dataRowHeight: 40,
                horizontalMargin: 0,
                headingTextStyle: const TextStyle(fontSize: 10),
                dataTextStyle: const TextStyle(fontSize: 9),
                columnSpacing: 8,
                columns: const [
                  DataColumn(
                    label: Text(
                      'First Name',
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Number',
                      // style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text('Status'
                        // style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                  ),
                  DataColumn(
                    label: Text(
                      'Middlemen',
                      // style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Created at',
                      // style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('923332505647')),
                      DataCell(Text('Pending')),
                      DataCell(Text('Pending')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('923332505647')),
                      DataCell(Text('Pending')),
                      DataCell(Text('Pending')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('923332505647')),
                      DataCell(Text('Pending')),
                      DataCell(Text('Pending')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('923332505647')),
                      DataCell(Text('Pending')),
                      DataCell(Text('Pending')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('923332505647')),
                      DataCell(Text('Pending')),
                      DataCell(Text('Pending')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('923332505647')),
                      DataCell(Text('Pending')),
                      DataCell(Text('Pending')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('923332505647')),
                      DataCell(Text('Pending')),
                      DataCell(Text('Pending')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('923332505647')),
                      DataCell(Text('Pending')),
                      DataCell(Text('Pending')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                ],
              ),
              // const SpaceWidget(
              //   height: 5,
              // )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.bgColor,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: CustomColors.whiteColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
