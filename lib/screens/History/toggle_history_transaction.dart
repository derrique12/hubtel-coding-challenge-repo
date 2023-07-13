import 'package:flutter/material.dart';
import 'package:hubtel_coding/screens/History/history.dart';
import 'package:hubtel_coding/screens/transactions/transaction_summary.dart';
import 'package:hubtel_coding/utils/color_palette.dart';

class ToggleHistoryTransaction extends StatefulWidget {
  const ToggleHistoryTransaction({super.key});

  @override
  State<ToggleHistoryTransaction> createState() =>
      _ToggleHistoryTransactionState();
}

class _ToggleHistoryTransactionState extends State<ToggleHistoryTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Palette.borderColor,
                  ),
                  padding: const EdgeInsets.all(3),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 40,
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.black,
                      indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      unselectedLabelStyle:
                          TextStyle(color: Colors.black.withOpacity(0.2)),
                      tabs: const [
                        Tab(
                          text: 'History',
                        ),
                        Tab(
                          text: 'Transaction Summary',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Palette.borderColor,
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TabBarView(
                        children: [HistoryPage(), TransactionSummary()]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
