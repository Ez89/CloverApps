import 'package:clover/shared/theme.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget productTile() {
    //   return const productiletransaction();
    // }

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Transaksi',
            style: blackTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 18,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              color: kBlackColor,
              size: 30,
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
        backgroundColor: kBackgroundColor,
        body: Center(
          child: Column(
            children: const [
              Text('Halaman Transaksi'),
            ],
          ),
        ));
  }
}
