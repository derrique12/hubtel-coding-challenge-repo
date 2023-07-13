import 'package:hubtel_coding/models/transaction_model.dart';

List<TransactionModel> allHistory = [
  TransactionModel(
      title: 'Emmanuel Rockson Kwabena Uncle Ebo',
      number: '024 123 5467',
      date: 'May 22,2022',
      time: '14:45 PPM',
      amount: '500',
      status: 'success',
      type: 'Personal',
      description: 'Cool your heart wai',
      image: 'assets/images/MTN@2x.png',
      isFavorite: true),
  TransactionModel(
      title: 'Absa Bank',
      number: '024 123 5467',
      date: 'May 22,2022',
      time: '14:45 PPM',
      amount: '500',
      status: 'failed',
      type: 'Personal',
      description: 'Cool your heart wai',
      image: 'assets/images/absa@2x.png',
      isFavorite: false),
  TransactionModel(
      title: 'Emmanuel Rockson',
      number: '024 123 5467',
      date: 'May 23,2022',
      time: '14:45 PPM',
      amount: '500',
      status: 'success',
      type: 'Other',
      description: 'Cool your heart wai',
      image: 'assets/images/MTN@2x.png',
      isFavorite: true),
  TransactionModel(
      title: 'Emmanuel Rockson',
      number: '024 123 5467',
      date: 'May 23,2022',
      time: '14:45 PPM',
      amount: '500',
      status: 'success',
      type: 'Other',
      description: '',
      image: 'assets/images/MTN@2x.png',
      isFavorite: true)
];
