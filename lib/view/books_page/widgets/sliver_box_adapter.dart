import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../constant/app_text_style.dart';
import '../../../constant/icon_style.dart';
import '../../../custom/icon_button.dart';
import '../constant/my_color.dart';
import '../constant/text.dart';

class MySliverBoxAdapter extends StatelessWidget {
  const MySliverBoxAdapter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.import_export,
                color: Colors.white,
              ),
              TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('CLICKED ON THE FILTER BOX TEXT');
                  }
                },
                child: Text(
                  BooksPageText.sliverBoxFilterText,
                  style: TextStyle(
                    fontSize: MyTextStyle.textSize10,
                    color: BooksPageColor.myColorW1,
                  ),
                ),
              ),
            ],
          ),
          MyIconButton(
              icon: Icons.list,
              size: IconStyle.iconSize25,
              iconColor: BooksPageColor.myColorW1,
              tabFunction: () {}),
        ],
      ),
    );
  }
}
