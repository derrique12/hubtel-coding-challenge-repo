import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubtel_coding/data/history_data.dart';
import 'package:hubtel_coding/models/transaction_model.dart';
import 'package:hubtel_coding/screens/History/components/transaction_card.dart';
import 'package:hubtel_coding/utils/color_palette.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //////////////// Tab /////////////
            const SizedBox(
              height: 10,
            ),
            /////////////// Search and Filter  ///////////
            Row(
              children: [
                ////////////// Search TextFeild ///////
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      isDense: true,
                      fillColor: Palette.borderColor,
                      hintText: 'Search',
                      hintStyle: const TextStyle(color: Palette.textColor),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      prefixIcon: SvgPicture.asset(
                        'assets/icons/search.svg',
                        fit: BoxFit.scaleDown,
                      ),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ),

                //////////////// Filter ///////
                SvgPicture.asset(
                  'assets/icons/filter.svg',
                ),
              ],
            ),

            const SizedBox(
              height: 30,
            ),
            ////////////// History List ///////
            Expanded(
              child: ListView.separated(
                  itemCount: allHistory.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 15,
                    );
                  },
                  itemBuilder: (context, index) {
                    TransactionModel transaction = allHistory[index];
                    return TransactionCard(transaction: transaction);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
