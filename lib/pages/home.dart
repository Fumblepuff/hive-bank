import 'package:flutter/material.dart';
import 'package:hivebankapp/utils/card.dart';
import 'package:hivebankapp/utils/actionbtn.dart';
import 'package:hivebankapp/utils/transaction_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      //Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.grey[900],
        unselectedItemColor: Colors.grey[400],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          // switch (index) {
          //   case 0:
          //     Navigator.pushNamed(context, '/home');
          //     break;
          //   case 1:
          //     Navigator.pushNamed(context, '/search');
          //     break;
          //   case 2:
          //     Navigator.pushNamed(context, '/settings');
          //     break;
          // }
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            //Header
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            'Welcome back,',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 5),

                          //Name of user
                          const Text(
                            'John K.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Icon(
                    Icons.list,
                    size: 40,
                    color: Colors.grey[500],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            //Cards
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  MoneyCard(
                    cardType: 'Debit Card',
                    cardNumber: 8008,
                    amount: 4000.34,
                  ),
                  MoneyCard(
                    cardType: 'Credit Card',
                    cardNumber: 9451,
                    amount: 678.92,
                  ),
                  MoneyCard(
                    cardType: 'Credit Card',
                    cardNumber: 8326,
                    amount: 1437.05,
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),

            //Action Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                //Add Card
                ActionBtn(
                  icon: Icons.add,
                  color: Colors.amber,
                ),

                //Send Money
                ActionBtn(
                  icon: Icons.send,
                  color: Colors.green,
                ),

                //Request Money
                ActionBtn(
                  icon: Icons.monetization_on,
                  color: Colors.blue,
                ),

                //Pay Bills
                ActionBtn(
                  icon: Icons.payment,
                  color: Colors.red,
                ),
              ],
            ),

            const SizedBox(height: 20),

            //Transactions
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Recent Transactions',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  TransactionTile(
                    transactionType: 'Transport',
                    transactionName: 'Uber',
                    transactionAmount: '17.88',
                    icon: Icons.car_rental,
                  ),
                  TransactionTile(
                    transactionType: 'Food',
                    transactionName: 'McDonalds',
                    transactionAmount: '5.35',
                    icon: Icons.fastfood,
                  ),
                  TransactionTile(
                    transactionType: 'Shopping',
                    transactionName: 'Amazon',
                    transactionAmount: '23.46',
                    icon: Icons.shopping_cart,
                  ),
                  TransactionTile(
                    transactionType: 'Shopping',
                    transactionName: 'Amazon',
                    transactionAmount: '10.34',
                    icon: Icons.shopping_cart,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
