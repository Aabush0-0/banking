import 'package:bank_app/models/bank.dart';
import 'package:bank_app/models/bank_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<BankAccount> bankAccounts = [
    BankAccount(
      bankName: 'Nepal Bank Limited',
      accountName: 'Dependra Aryal',
      totalIn: 50000,
      accountNumber: '06##############001',
      cashAsOnNow: 10000,
      totalOut: 100000,
      imageName: 'image 2.png',
    ),
    BankAccount(
      bankName: 'Nabil Bank Limited',
      accountName: 'Dependra Aryal',
      totalIn: 50000,
      accountNumber: '1234567890##1',
      cashAsOnNow: 10000,
      totalOut: 100000,
      imageName: 'image 3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 20,
            ),
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                    ),
                    Expanded(
                      child: Text(
                        'Accounts',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Material(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  elevation: 4,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                            bottom: 5,
                          ),
                          child: Text(
                            'Bank Accounts',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: bankAccounts.length,
                          itemBuilder: (context, index) {
                            return BankItem(
                              bankAccount: bankAccounts[index],
                            );
                          },
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Connect Accounts',
                            style: TextStyle(
                              color: Colors.blue.shade900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
