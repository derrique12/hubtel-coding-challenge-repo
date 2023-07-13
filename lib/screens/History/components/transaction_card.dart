import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubtel_coding/models/transaction_model.dart';
import 'package:hubtel_coding/utils/color_palette.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key, required this.transaction});

  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Palette.borderColor),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ////// Time ////
          Text(
            transaction.time,
            style: const TextStyle(fontSize: 13, color: Palette.textColor),
          ),
          const SizedBox(
            height: 10,
          ),

          ////////
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /////////// Profile Image  //////////
              CircleAvatar(
                radius: 22,
                child: Image.asset(transaction.image),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          transaction.title,
                          maxLines: 2,
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),

                      //////// Transactio Status Badge //////////
                      SizedBox(
                        height: 25,
                        child: Badge(
                          backgroundColor: transaction.status == 'success'
                              ? Palette.successColor
                              : Palette.failedColor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          label: Row(
                            children: [
                              SvgPicture.asset(
                                transaction.status == 'success'
                                    ? 'assets/icons/success.svg'
                                    : 'assets/icons/failed.svg',
                                height: 12,
                                width: 12,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                transaction.status,
                                style: TextStyle(
                                    color: transaction.status == 'success'
                                        ? const Color(0xFF70E083)
                                        : const Color(0xFF99231D)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),

                  /////////// Number and  Amount ///////////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///// Number ////
                      Text(
                        transaction.number,
                        style: const TextStyle(color: Palette.inactiveColor),
                      ),

                      ///// Amount //////
                      Text(
                        'GHS ${transaction.amount}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              )),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: Palette.borderColor,
          ),
          const SizedBox(
            height: 5,
          ),
          /////// Type annd description  && Favorite Icon /////////
          Row(
            children: [
              /////// Type annd description /////////
              SvgPicture.asset('assets/icons/person.svg'),
              const SizedBox(
                width: 10,
              ),
              Text(
                transaction.type,
                style: const TextStyle(fontSize: 13),
              ),
              if (transaction.description.isNotEmpty)
                Expanded(
                  child: Row(
                    children: [
                      /////// transactiion type/////

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: CircleAvatar(
                          radius: 3,
                          backgroundColor: Color(0xFF9CABB8),
                        ),
                      ),

                      ////// description ///////
                      Expanded(
                        child: Text(
                          transaction.description,
                          maxLines: 1,
                          style: const TextStyle(
                              fontSize: 13, overflow: TextOverflow.ellipsis),
                        ),
                      )
                    ],
                  ),
                ),

              const SizedBox(
                width: 5,
              ),

              if (transaction.isFavorite)
                /////// Favorite icon /////////
                SvgPicture.asset('assets/icons/Favorite.svg'),
            ],
          )
        ],
      ),
    );
  }
}
