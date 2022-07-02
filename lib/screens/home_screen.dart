import 'package:flutter/material.dart';
import 'package:note_book/helper_class/string.dart';
import 'package:note_book/widgets/toolbar_icon_button.dart';

import '../widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> colors = [Colors.green, Colors.red];
  bool isBold = false;
  bool isItalic = false;
  bool isUnderline = false;

  void bold() {
    isBold = !isBold;
    setState(() {});
  }

  void italic() {
    isItalic = !isItalic;
    setState(() {});
  }

  void underLine() {
    isUnderline = !isUnderline;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          SizedBox(height: 10),
          _buildToolBar(),
          Divider(),
          _customTextField(),
        ],
      ),
    );
  }

  Widget _buildToolBar() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(width: 12),
            iconButton(
                icon: const Icon(Icons.format_bold),
                onTap: () {
                  bold();
                }),
            SizedBox(width: 12),
            iconButton(
                icon: const Icon(Icons.format_italic),
                onTap: () {
                  italic();
                }),
            SizedBox(width: 12),
            iconButton(
                icon: const Icon(Icons.format_underline),
                onTap: () {
                  underLine();
                }),
            SizedBox(width: 12),
            iconButton(icon: const Icon(Icons.font_download), onTap: () {}),
            SizedBox(width: 12),
            iconButton(icon: const Icon(Icons.color_lens), onTap: () {}),
            SizedBox(width: 12),
            iconButton(
                icon: const Icon(Icons.format_align_left_outlined),
                onTap: () {}),
            SizedBox(width: 12),
            iconButton(
                icon: const Icon(Icons.format_align_center_outlined),
                onTap: () {}),
            SizedBox(width: 12),
            iconButton(
                icon: const Icon(Icons.format_align_right_outlined),
                onTap: () {}),
            SizedBox(width: 12),
            iconButton(
                icon: const Icon(Icons.format_align_justify_outlined),
                onTap: () {}),
            SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
  Widget _customTextField() {
    return Expanded(
      flex: 20,
      child: Container(
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
        child: TextField(
          keyboardType: TextInputType.multiline,
          textCapitalization: TextCapitalization.sentences,
          maxLines: null,
          style: TextStyle(
              fontWeight: isBold ? FontWeight.w900 : FontWeight.normal,
              fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
              decoration:
              isUnderline ? TextDecoration.underline : TextDecoration.none),
          decoration: InputDecoration(
            contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
            border: InputBorder.none,
            hintText: AppString.hintText,
          ),
        ),
      ),
    );
  }

}
