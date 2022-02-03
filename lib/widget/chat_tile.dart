import 'package:clover/shared/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/chat_detail'),
      child: Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/avatar.jpg'),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Seller',
                        style: blackTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Oke, saya akan order!',
                        style: blackTextStyle.copyWith(fontWeight: light),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  '08:09',
                  style: blackTextStyle.copyWith(fontSize: 10),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Divider(
              thickness: 1,
              color: borderColor,
            ),
          ],
        ),
      ),
    );
  }
}
