import 'package:flutter/material.dart';
import 'package:ui_kit/components/typography/gf_typography.dart';
import 'package:ui_kit/components/tabs/gf_tabs.dart';
import 'package:ui_kit/components/button/gf_button.dart';
import 'package:ui_kit/size/gf_size.dart';
import 'package:ui_kit/types/gf_typography_type.dart';
import 'package:ui_kit/types/gf_type.dart';
import 'package:ui_kit/shape/gf_button_shape.dart';
import 'package:ui_kit/colors/gf_color.dart';
import 'package:ui_kit/components/card/gf_card.dart';
import 'package:ui_kit/components/tabs/gf_tabBarView.dart';

class PillsButtons extends StatefulWidget {
  @override
  _PillsButtonsState createState() => _PillsButtonsState();
}

class _PillsButtonsState extends State<PillsButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: getGFColor(GFColor.dark),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('lib/assets/icons/back.png')),
        title: Text(
          'Pills Buttons',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: GFTabs(
        height: MediaQuery.of(context).size.height,
        tabBarColor: Color(0xFFD3E9ED),
        initialIndex: 0,
        length: 3,
        indicatorColor: getGFColor(GFColor.info),
        unselectedLabelColor: getGFColor(GFColor.danger),
        labelColor: getGFColor(GFColor.warning),
        tabs: <Widget>[
          GFButton(
            onPressed: null,
            child: Text(
              "Solid",
              style: TextStyle(fontSize: 12),
            ),
            type: GFType.solid,
            textColor: GFColor.white,
            shape: GFButtonShape.pills,
          ),
          GFButton(
            onPressed: null,
            child: Text(
              "Outline",
              style: TextStyle(fontSize: 12),
            ),
            type: GFType.outline,
            shape: GFButtonShape.pills,
          ),
          GFButton(
            onPressed: null,
            text: 'Outline 2x',
            textStyle: TextStyle(fontSize: 12, color: getGFColor(GFColor.dark)),
            type: GFType.outline2x,
            shape: GFButtonShape.pills,
          ),
        ],
        tabBarView: GFTabBarView(
          children: <Widget>[
            Container(
//              color: Colors.red,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 30),
                    child: GFTypography(
                      text: 'Default',
                      type: GFTypographyType.typo5,
                      dividerWidth: 25,
                      dividerColor: Color(0xFF19CA4B),
                    ),
                  ),
                  GFCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: () {},
                              shape: GFButtonShape.pills,
                              child: Text(
                                "Primary",
                              ),
                              color: GFColor.primary,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Secondary",
                              ),
                              color: GFColor.secondary,
                              shape: GFButtonShape.pills,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Success",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.success,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Warning",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.warning,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Danger",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.danger,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Info",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.info,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Light",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.light,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Dark",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.dark,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Link",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.transparent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: GFTypography(
                      text: 'Disabled State',
                      type: GFTypographyType.typo5,
                      dividerWidth: 25,
                      dividerColor: Color(0xFF19CA4B),
                    ),
                  ),
                  GFCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: null,
                              shape: GFButtonShape.pills,
                              child: Text(
                                "Primary",
                              ),
                              color: GFColor.primary,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Secondary",
                              ),
                              color: GFColor.secondary,
                              shape: GFButtonShape.pills,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Success",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.success,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Warning",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.warning,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Danger",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.danger,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Info",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.info,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Light",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.light,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Dark",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.dark,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Link",
                              ),
                              shape: GFButtonShape.pills,
                              color: GFColor.transparent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: GFTypography(
                      text: 'Button Sizes',
                      type: GFTypographyType.typo5,
                      dividerWidth: 25,
                      dividerColor: Color(0xFF19CA4B),
                    ),
                  ),
                  GFCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: () {},
                              child: Text("Large",
                                  style: TextStyle(
                                      color: getGFColor(GFColor.white))),
                              color: GFColor.primary,
                              size: GFSize.large,
                              shape: GFButtonShape.pills,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text("Normal",
                                  style: TextStyle(
                                      color: getGFColor(GFColor.white))),
                              color: GFColor.primary,
                              size: GFSize.medium,
                              shape: GFButtonShape.pills,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text("Small",
                                  style: TextStyle(
                                      color: getGFColor(GFColor.white))),
                              color: GFColor.primary,
                              size: GFSize.small,
                              shape: GFButtonShape.pills,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: GFTypography(
                      text: 'Block Buttons',
                      type: GFTypographyType.typo5,
                      dividerWidth: 25,
                      dividerColor: Color(0xFF19CA4B),
                    ),
                  ),
                  GFCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        GFButton(
                          onPressed: () {},
                          blockButton: true,
                          child: Text("Large",
                              style:
                                  TextStyle(color: getGFColor(GFColor.white))),
                          color: GFColor.primary,
                          size: GFSize.large,
                          shape: GFButtonShape.pills,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GFButton(
                          onPressed: () {},
                          blockButton: true,
                          child: Text("Normal",
                              style:
                                  TextStyle(color: getGFColor(GFColor.white))),
                          color: GFColor.primary,
                          size: GFSize.medium,
                          shape: GFButtonShape.pills,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GFButton(
                          onPressed: () {},
                          blockButton: true,
                          child: Text("Small",
                              style:
                                  TextStyle(color: getGFColor(GFColor.white))),
                          color: GFColor.primary,
                          size: GFSize.small,
                          shape: GFButtonShape.pills,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //tab 2
            Container(
//              color: Colors.red,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 30),
                    child: GFTypography(
                      text: 'Default',
                      type: GFTypographyType.typo5,
                      dividerWidth: 25,
                      dividerColor: Color(0xFF19CA4B),
                    ),
                  ),
                  GFCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: () {},
                              shape: GFButtonShape.pills,
                              child: Text(
                                "Primary",
                              ),
                              type: GFType.outline,
                              color: GFColor.primary,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Secondary",
                              ),
                              color: GFColor.secondary,
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Success",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.success,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Warning",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.warning,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Danger",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.danger,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Info",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.info,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Light",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.light,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Dark",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.dark,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Link",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.transparent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: GFTypography(
                      text: 'Disabled State',
                      type: GFTypographyType.typo5,
                      dividerWidth: 25,
                      dividerColor: Color(0xFF19CA4B),
                    ),
                  ),
                  GFCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: null,
                              shape: GFButtonShape.pills,
                              child: Text(
                                "Primary",
                              ),
                              type: GFType.outline,
                              color: GFColor.primary,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Secondary",
                              ),
                              color: GFColor.secondary,
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Success",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.success,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Warning",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.warning,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Danger",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.danger,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Info",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.info,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Light",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.light,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Dark",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.dark,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Link",
                              ),
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                              color: GFColor.transparent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: GFTypography(
                      text: 'Button Sizes',
                      type: GFTypographyType.typo5,
                      dividerWidth: 25,
                      dividerColor: Color(0xFF19CA4B),
                    ),
                  ),
                  GFCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Large",
                              ),
                              color: GFColor.primary,
                              size: GFSize.large,
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Normal",
                              ),
                              color: GFColor.primary,
                              size: GFSize.medium,
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Small",
                              ),
                              color: GFColor.primary,
                              size: GFSize.small,
                              type: GFType.outline,
                              shape: GFButtonShape.pills,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: GFTypography(
                      text: 'Block Buttons',
                      type: GFTypographyType.typo5,
                      dividerWidth: 25,
                      dividerColor: Color(0xFF19CA4B),
                    ),
                  ),
                  GFCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        GFButton(
                          onPressed: () {},
                          blockButton: true,
                          child: Text(
                            "Large",
                          ),
                          color: GFColor.primary,
                          size: GFSize.large,
                          type: GFType.outline,
                          shape: GFButtonShape.pills,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GFButton(
                          onPressed: () {},
                          blockButton: true,
                          child: Text(
                            "Normal",
                          ),
                          color: GFColor.primary,
                          size: GFSize.medium,
                          type: GFType.outline,
                          shape: GFButtonShape.pills,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GFButton(
                          onPressed: () {},
                          blockButton: true,
                          child: Text(
                            "Small",
                          ),
                          color: GFColor.primary,
                          size: GFSize.small,
                          type: GFType.outline,
                          shape: GFButtonShape.pills,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //tab 3
            Container(
//              color: Colors.red,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 30),
                    child: GFTypography(
                      text: 'Default',
                      type: GFTypographyType.typo5,
                      dividerWidth: 25,
                      dividerColor: Color(0xFF19CA4B),
                    ),
                  ),
                  GFCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: () {},
                              shape: GFButtonShape.pills,
                              child: Text(
                                "Primary",
                              ),
                              type: GFType.outline2x,
                              color: GFColor.primary,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Secondary",
                              ),
                              color: GFColor.secondary,
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Success",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.success,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Warning",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.warning,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Danger",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.danger,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Info",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.info,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Light",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.light,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Dark",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.dark,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Link",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.transparent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: GFTypography(
                      text: 'Disabled State',
                      type: GFTypographyType.typo5,
                      dividerWidth: 25,
                      dividerColor: Color(0xFF19CA4B),
                    ),
                  ),
                  GFCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: null,
                              shape: GFButtonShape.pills,
                              child: Text(
                                "Primary",
                              ),
                              type: GFType.outline2x,
                              color: GFColor.primary,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Secondary",
                              ),
                              color: GFColor.secondary,
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Success",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.success,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Warning",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.warning,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Danger",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.danger,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Info",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.info,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Light",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.light,
                            ),
                            GFButton(
                              onPressed: null,
                              child: Text(
                                "Dark",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.dark,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Link",
                              ),
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                              color: GFColor.transparent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: GFTypography(
                      text: 'Button Sizes',
                      type: GFTypographyType.typo5,
                      dividerWidth: 25,
                      dividerColor: Color(0xFF19CA4B),
                    ),
                  ),
                  GFCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Large",
                              ),
                              color: GFColor.primary,
                              size: GFSize.large,
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Normal",
                              ),
                              color: GFColor.primary,
                              size: GFSize.medium,
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                            ),
                            GFButton(
                              onPressed: () {},
                              child: Text(
                                "Small",
                              ),
                              color: GFColor.primary,
                              size: GFSize.small,
                              type: GFType.outline2x,
                              shape: GFButtonShape.pills,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: GFTypography(
                      text: 'Block Buttons',
                      type: GFTypographyType.typo5,
                      dividerWidth: 25,
                      dividerColor: Color(0xFF19CA4B),
                    ),
                  ),
                  GFCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        GFButton(
                          onPressed: () {},
                          blockButton: true,
                          child: Text(
                            "Large",
                          ),
                          color: GFColor.primary,
                          size: GFSize.large,
                          type: GFType.outline2x,
                          shape: GFButtonShape.pills,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GFButton(
                          onPressed: () {},
                          blockButton: true,
                          child: Text(
                            "Normal",
                          ),
                          color: GFColor.primary,
                          size: GFSize.medium,
                          type: GFType.outline2x,
                          shape: GFButtonShape.pills,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GFButton(
                          onPressed: () {},
                          blockButton: true,
                          child: Text(
                            "Small",
                          ),
                          color: GFColor.primary,
                          size: GFSize.small,
                          type: GFType.outline2x,
                          shape: GFButtonShape.pills,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}