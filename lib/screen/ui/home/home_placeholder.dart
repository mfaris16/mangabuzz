import 'package:content_placeholder/content_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mangabuzz/screen/widget/latest_update/latest_update_item_placeholder.dart';
import 'package:mangabuzz/screen/widget/manga_item/manga_item_placeholder.dart';

Widget buildHomeScreenPlaceholder() {
  List count = [1, 2, 3, 4];

  return ListView(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContentPlaceholder(
              height: ScreenUtil().setHeight(370),
              width: double.infinity,
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Text(
              "Hot Series Update",
              style: TextStyle(fontFamily: "Poppins-Bold", fontSize: 16),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: count
                    .map((item) => Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setHeight(20)),
                          child: mangaItemPlaceHolder(),
                        ))
                    .toList(),
              ),
            ),
            Text(
              "Latest Update",
              style: TextStyle(fontFamily: "Poppins-Bold", fontSize: 16),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            buildLatestUpdatePlaceholder(),
          ],
        ),
      ),
    ],
  );
}
