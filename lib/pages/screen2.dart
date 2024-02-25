import 'package:flutter/material.dart';

class Statement extends StatelessWidget {
  const Statement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Statement',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.picture_as_pdf))
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 40,
              left: 20,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: Color(0xffEBE9E9),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffEBE9E9),
                  blurRadius: 40,
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.wallet),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NPR 1000.1',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Balance',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.refresh),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffEBE9E9),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('7 days'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('14 days'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('30 days'),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.filter_1_outlined,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  'Sun, 4th Feb 2024',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 150,
                color: Color(0xffEBE9E9),
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container();
                }),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 150,
                color: Color(0xffEBE9E9),
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container();
                }),
              )
            ],
          )
        ],
      ),
    );
  }
}
