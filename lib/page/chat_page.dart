import 'package:clover/shared/theme.dart';
import 'package:clover/widget/chat_tile.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: ListView(
          children: const [
            ChatTile(),
            ChatTile(),
            ChatTile(),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Pesan',
          style: blackTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 18,
          ),
        ),
        bottom: PreferredSize(
            child: Container(
              height: 1,
              color: borderColor,
            ),
            preferredSize: const Size.fromHeight(5)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: content(),
    );
  }
}
