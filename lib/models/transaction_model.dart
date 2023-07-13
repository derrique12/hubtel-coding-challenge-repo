class TransactionModel {
  final String time;
  final String title;
  final String number;
  final String amount;
  final String date;
  final String status;
  final String type;
  final String image;
  final String description;
  final bool isFavorite;

  TransactionModel({
    required this.title,
    required this.number,
    required this.date,
    required this.time,
    required this.amount,
    required this.status,
    required this.description,
    required this.image,
    required this.type,
    required this.isFavorite,
  });
}

enum TransactionStatus { failed, success }
