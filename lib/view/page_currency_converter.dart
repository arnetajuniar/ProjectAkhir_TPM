import 'package:flutter/material.dart';
import 'package:project_tpm/service/api_client.dart';
import 'package:project_tpm/view/widget/drop_down.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({Key? key}) : super(key: key);

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  //instance for API client
  ApiClient client = ApiClient();

  //setting the variables
  late List<String> currencies;
  late String from;
  late String to;

  //variables for exchange rate
  late double rate;
  String result = "";

  Future<List<String>> getCurrencyList() async {
    return await client.getCurrencies();
  }

  @override
  void initState() {
    super.initState();
    (() async {
      List<String> list = await client.getCurrencies();
      setState(() {
        currencies = list;
      });
    })();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Converter"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 200,
                child: Text(
                  "Currency Converter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                  child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      onSubmitted: (value) async {
                        rate = await client.getRate(from, to);
                        setState(() {
                          result =
                              (rate * double.parse(value)).toStringAsFixed(3);
                        });
                      },
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: "Input value to convert",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              color: Colors.black)),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customDropDown(currencies, from, (val) {
                          setState(() {
                            from = val;
                          });
                        }),
                        FloatingActionButton(
                          onPressed: () {
                            String temp = from;
                            setState(() {
                              from = to;
                              to = temp;
                            });
                          },
                          child: const Icon(Icons.swap_horiz),
                          elevation: 0,
                        ),
                        customDropDown(currencies, to, (val) {
                          setState(() {
                            to = val;
                          });
                        }),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "Result",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(result,
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
