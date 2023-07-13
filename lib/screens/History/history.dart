import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:hubtel_coding/data/history_data.dart';
import 'package:hubtel_coding/models/transaction_model.dart';
import 'package:hubtel_coding/screens/History/components/transaction_card.dart';
import 'package:hubtel_coding/utils/color_palette.dart';

import '../../widgets/custom_group_list.dart';

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
                const SizedBox(width: 5),
                //////////////// Filter ///////
                SvgPicture.asset(
                  'assets/icons/filter.svg',
                ),
              ],
            ),

            const SizedBox(
              height: 25,
            ),
            ////////////// History List ///////
            Expanded(
              child: CustomGroupedListView(
                elements: allHistory,
                groupBy: (element) => element.date,
                groupHeaderBuilder: (element) => Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 15.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 3),
                      decoration: BoxDecoration(
                          color: Palette.borderColor,
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          element.date,
                          style: const TextStyle(
                              color: Palette.textColor, fontSize: 11),
                        ),
                      ),
                    ),
                  ],
                ),
                groupSeparatorBuilder: const SizedBox(
                  height: 30,
                ),
                itemBuilder: (context, TransactionModel element) =>
                    TransactionCard(transaction: element),
                itemComparator: (item1, item2) =>
                    item1.date.compareTo(item2.date),
                useStickyGroupSeparators: false,
                order: GroupedListOrder.DESC,
                separator: const SizedBox(
                  height: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
