import 'package:clover/shared/theme.dart';
import 'package:clover/widget/bubble_chat.dart';
import 'package:flutter/material.dart';

class DetailChatPage extends StatefulWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  _DetailChatPageState createState() => _DetailChatPageState();
}

class _DetailChatPageState extends State<DetailChatPage> {
  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 225,
        height: 74,
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/durian.png',
                width: 54,
                height: 54,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Durian Montong', style: blackTextStyle),
                  const SizedBox(height: 2),
                  Text(
                    'Rp 50.000',
                    style: greyTextStyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.close,
              color: kPrimaryColor,
              size: 20,
            ),
          ],
        ),
      );
    }

    Widget chatInput() {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Ketik pesan...',
                            hintStyle: greyTextStyle,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.send,
                    size: 22,
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget body() {
      return ListView(
        padding: const EdgeInsets.all(30),
        children: const [
          BubbleText(
            text: 'Punten,, duriannya masih ada?',
            hasData: true,
          ),
          BubbleText(
            text: 'masih ada kak!',
            isSender: false,
          ),
          BubbleText(text: 'Oke, saya akan order!')
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          elevation: 0.4,
          shadowColor: borderColor,
          backgroundColor: kBackgroundColor,
          centerTitle: false,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.chevron_left,
              color: kBlackColor,
            ),
          ),
          title: Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  'assets/avatar.jpg',
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seller',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Online',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: chatInput(),
      body: body(),
    );
  }
}
