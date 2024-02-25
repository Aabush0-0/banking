import 'package:bank_app/models/bank.dart';
import 'package:flutter/material.dart';

class BankItem extends StatefulWidget {
  final BankAccount bankAccount;
  const BankItem({
    required this.bankAccount,
    super.key,
  });

  @override
  State<BankItem> createState() => _BankItemState();
}

class _BankItemState extends State<BankItem> {
  bool showDropDownIcon = false;
  bool showAdditionalDetails = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.black12,
      onTap: () {
        if (!showAdditionalDetails) {
          setState(() {
            showDropDownIcon = !showDropDownIcon;
          });
        } else {
          setState(() {
            showAdditionalDetails = !showAdditionalDetails;
            showDropDownIcon = !showDropDownIcon;
          });
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: showDropDownIcon ? Colors.black12 : null,
        ),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 26,
                      backgroundImage: AssetImage(
                        'assets/images/${widget.bankAccount.imageName}',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.bankAccount.bankName,
                        ),
                        Text(
                          widget.bankAccount.accountNumber,
                        ),
                        Text(
                          widget.bankAccount.accountName,
                        ),
                      ],
                    ),
                  ],
                ),
                if (showDropDownIcon)
                  IconButton(
                    icon: Icon(showAdditionalDetails
                        ? Icons.arrow_drop_up_rounded
                        : Icons.arrow_drop_down_rounded),
                    onPressed: () {
                      if (!showAdditionalDetails) {
                        setState(() {
                          showAdditionalDetails = !showAdditionalDetails;
                        });
                      } else {
                        setState(() {
                          showAdditionalDetails = !showAdditionalDetails;
                          showDropDownIcon = !showDropDownIcon;
                        });
                      }
                    },
                  ),
              ],
            ),
            if (showDropDownIcon && showAdditionalDetails)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Account Details',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('Bank Name: ${widget.bankAccount.bankName}'),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('Account Number: ${widget.bankAccount.accountNumber}'),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Account Name: ${widget.bankAccount.accountName}',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Fund Summary',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '2023-01-30',
                            style: TextStyle(
                              color: Colors.blue.shade900,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.calendar_month,
                            color: Colors.blue.shade900,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('Total In: Rs.${widget.bankAccount.totalIn}'),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('Total Out: Rs.${widget.bankAccount.totalOut}'),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Cash As On Now: Rs.${widget.bankAccount.cashAsOnNow}',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    child: Text(
                      'Disconnect',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            actions: [
                              Container(
                                width: 120,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateColor.resolveWith(
                                            (states) => Colors.blue.shade900),
                                    foregroundColor:
                                        MaterialStateColor.resolveWith(
                                            (states) => Colors.white),
                                  ),
                                  child: const Text('Yes'),
                                ),
                              ),
                            ],
                            title: const Text('Are you sure?'),
                            content: const Text(
                              'You will no longer be able to sync the transactions from this account.',
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
