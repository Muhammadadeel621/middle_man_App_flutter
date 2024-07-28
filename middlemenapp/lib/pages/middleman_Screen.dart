import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/widgets/space_widget.dart';
import 'package:middlemenmodified/widgets/text_widget.dart';

class MIddlemanScreen extends StatefulWidget {
  const MIddlemanScreen({super.key});

  @override
  State<MIddlemanScreen> createState() => _MIddlemanScreenState();
}

class _MIddlemanScreenState extends State<MIddlemanScreen> {
  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.zero,
        backgroundColor: Colors.white,
        content: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 5,
                    child: TextWidget(
                      text: "Invite a new Middlemen",
                      textcolor: CustomColors.bgColor,
                      fontsize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: CustomColors.bgColor,
                        size: 20,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Expanded(
                    child: TextWidget(
                      text: "Email",
                      textcolor: CustomColors.bgColor,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xffEBEDF5),
                          ),
                        ),
                        fillColor: const Color(0xffEBEDF5),
                        filled: true,
                        hintText: "Enter Email Address",
                        hintStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff969696),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColors.bgColor,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: "Invite a new Middlemen",
                      textcolor: CustomColors.whiteColor,
                      fontsize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward,
                      size: 16,
                      color: CustomColors.whiteColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Expanded(
                    child: TextWidget(
                      text: "Share link",
                      textcolor: CustomColors.bgColor,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xffEBEDF5),
                          ),
                        ),
                        fillColor: const Color(0xffEBEDF5),
                        filled: true,
                        hintText: "Enter Email Address",
                        hintStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff969696),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CustomColors.bgColor,
                      ),
                      child: const Center(
                        child: TextWidget(
                          text: "Copy Link",
                          textcolor: CustomColors.whiteColor,
                          fontsize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

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
                    text: "My Middlemens",
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

              const SpaceWidget(
                height: 10,
              ),
              DataTable(
                // columnSpacing: 10,
                dividerThickness: 2,
                // showBottomBorder: false,
                // dataRowHeight: 40,
                horizontalMargin: 0,
                headingTextStyle: const TextStyle(fontSize: 14),
                dataTextStyle: const TextStyle(fontSize: 10),
                columnSpacing: 8,
                columns: const [
                  DataColumn(
                    label: Text(
                      'Username',
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Email',
                      // style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text('Role'
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
                      DataCell(Text('1234@gmail.com')),
                      DataCell(Text('middleman')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('1234@gmail.com')),
                      DataCell(Text('middleman')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('1234@gmail.com')),
                      DataCell(Text('middleman')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('1234@gmail.com')),
                      DataCell(Text('middleman')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('1234@gmail.com')),
                      DataCell(Text('middleman')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('1234@gmail.com')),
                      DataCell(Text('middleman')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('1234@gmail.com')),
                      DataCell(Text('middleman')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('1234@gmail.com')),
                      DataCell(Text('middleman')),
                      DataCell(Text('May 8th 2024')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Adeel')),
                      DataCell(Text('1234@gmail.com')),
                      DataCell(Text('middleman')),
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
        onPressed: () {
          // _displayBottomSheetMIdlleman(context);
          showCustomDialog(context);
        },
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
