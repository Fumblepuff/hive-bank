import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String transactionType;
  final String transactionName;
  final String transactionAmount;
  final IconData icon;
  const TransactionTile({
    Key? key,
    required this.transactionType,
    required this.transactionName,
    required this.transactionAmount,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
              const SizedBox(width: 20),
              Column(
                children: [
                  //Name of Vendor
                  Text(
                    transactionName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    transactionType,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
          Text(
            '-\$$transactionAmount',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
