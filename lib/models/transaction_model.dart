class TransactionModel {
  final String time;
  final String title;
  final String number;
  final String amount;
  final String date;
  final TransactionStatus status;
  final String type;
  final String description;

  TransactionModel(
      {required this.title,
      required this.number,
      required this.date,
      required this.time,
      required this.amount,
      required this.status,
      required this.description,
      required this.type});
}

enum TransactionStatus { failed, success }
