import 'package:flutter/material.dart';

class ConvertCurrency extends StatefulWidget {
  const ConvertCurrency({Key? key}) : super(key: key);

  @override
  State<ConvertCurrency> createState() => _ConvertCurrencyState();
}

class _ConvertCurrencyState extends State<ConvertCurrency> {
  final TextEditingController inputAmountData = TextEditingController();

  late double dataInput;
  late double dataOutput;
  late String inputCurrency;
  late String outputCurrency;
  late String resultData;

  @override
  void initState() {
    super.initState();
    dataInput = 0;
    inputCurrency = 'IDR';
    outputCurrency = 'IDR';
    resultData = '';
  }

  void _onInputChanged(String value) {
    setState(() {
      dataInput = double.tryParse(value) ?? 0;
    });
  }

  void _onCurrencyInputChanged(String? value) {
    setState(() {
      inputCurrency = value ?? 'IDR';
    });
  }

  void _onCurrencyOutputChanged(String? value) {
    setState(() {
      outputCurrency = value ?? 'IDR';
    });
  }

  void _convertCurrency() {
    setState(() {
      switch (inputCurrency) {
        case 'IDR':
          switch (outputCurrency) {
            case 'IDR':
              dataOutput = dataInput;
              break;
            case 'USD':
              dataOutput = dataInput / 14800;
              break;
            case 'SGD':
              dataOutput = dataInput / 11000;
              break;
            case 'JPY':
              dataOutput = dataInput / 108;
              break;
            case 'EUR':
              dataOutput = dataInput / 1600;
              break;
          }
          break;
        case 'USD':
          switch (outputCurrency) {
            case 'IDR':
              dataOutput = dataInput * 14800;
              break;
            case 'USD':
              dataOutput = dataInput;
              break;
            case 'SGD':
              dataOutput = dataInput * 1.34;
              break;
            case 'JPY':
              dataOutput = dataInput * 138;
              break;
            case 'EUR':
              dataOutput = dataInput * 0.92;
              break;
          }
          break;
        case 'SGD':
          switch (outputCurrency) {
            case 'IDR':
              dataOutput = dataInput * 11000;
              break;
            case 'USD':
              dataOutput = dataInput * 0.74;
              break;
            case 'SGD':
              dataOutput = dataInput;
              break;
            case 'JPY':
              dataOutput = dataInput * 102;
              break;
            case 'EUR':
              dataOutput = dataInput * 0.68;
              break;
          }
          break;
        case 'JPY':
          switch (outputCurrency) {
            case 'IDR':
              dataOutput = dataInput * 108;
              break;
            case 'USD':
              dataOutput = dataInput * 0.007;
              break;
            case 'SGD':
              dataOutput = dataInput * 0.009;
              break;
            case 'JPY':
              dataOutput = dataInput;
              break;
            case 'EUR':
              dataOutput = dataInput * 0.006;
              break;
          }
          break;
        case 'EUR':
          switch (outputCurrency) {
            case 'IDR':
              dataOutput = dataInput * 16000;
              break;
            case 'USD':
              dataOutput = dataInput * 1.08;
              break;
            case 'SGD':
              dataOutput = dataInput * 1.45;
              break;
            case 'JPY':
              dataOutput = dataInput * 149;
              break;
            case 'EUR':
              dataOutput = dataInput;
              break;
          }
          break;
      }
      resultData = dataOutput.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Currency Converter"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "Amount",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: TextField(
                onChanged: _onInputChanged,
                controller: inputAmountData,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: "Enter amount",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()),
              ),
            ),
            const Center(
              child: Text(
                "From",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButton<String>(
              value: inputCurrency,
              elevation: 15,
              onChanged: _onCurrencyInputChanged,
              items: const <String>['IDR', 'USD', 'SGD', 'JPY', 'EUR']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: const TextStyle(fontSize: 18)));
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "To",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButton<String>(
              value: outputCurrency,
              elevation: 15,
              onChanged: _onCurrencyOutputChanged,
              items: const <String>['IDR', 'USD', 'SGD', 'JPY', 'EUR']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: const TextStyle(fontSize: 18)));
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _convertCurrency,
              child: const Text("CONVERT"),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              resultData,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    ));
  }
}
