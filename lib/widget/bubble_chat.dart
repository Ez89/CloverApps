import 'package:clover/shared/theme.dart';
import 'package:flutter/material.dart';

class BubbleText extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasData;
  const BubbleText(
      {Key? key,
      required this.text,
      this.isSender = true,
      this.hasData = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget previewProduct() {
      return Container(
        width: 231,
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(isSender ? 0 : 12),
            topLeft: Radius.circular(isSender ? 12 : 0),
            bottomLeft: const Radius.circular(12),
            bottomRight: const Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/durian.png',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Durian Montong',
                        style: blackTextStyle,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Rp 50.000',
                        style: greyTextStyle.copyWith(fontWeight: medium),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Beli',
                          style: whiteTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: semiBold,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasData ? previewProduct() : const SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.6),
                  decoration: BoxDecoration(
                    color: isSender ? kSecondaryColor : borderColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(isSender ? 0 : 12),
                      topLeft: Radius.circular(isSender ? 12 : 0),
                      bottomLeft: const Radius.circular(12),
                      bottomRight: const Radius.circular(12),
                    ),
                  ),
                  child: Text(
                    text,
                    style: greenTextStyle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
