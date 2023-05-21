import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeConverter extends StatefulWidget {
  const TimeConverter({Key? key}) : super(key: key);

  @override
  State<TimeConverter> createState() => _TimeConverterState();
}

class _TimeConverterState extends State<TimeConverter> {
  String _currentTime = '';
  String _zone = '';

  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  void _updateTime() {
    var now = DateTime.now().toUtc();
    switch (_zone) {
      case 'WIB':
        now = now.add(Duration(hours: 7));
        break;
      case 'WITA':
        now = now.add(Duration(hours: 8));
        break;
      case 'WIT':
        now = now.add(Duration(hours: 9));
        break;
      case 'London':
        now = now.add(Duration(hours: 1));
        break;
      default:
        break;
    }

    var formatTime = DateFormat('HH:mm:ss');
    setState(() {
      _currentTime = formatTime.format(now);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Time Zone Converter"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _zone = 'WIB';
                      });
                      _updateTime();
                    },
                    child: const Text("WIB"),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _zone = 'WITA';
                      });
                      _updateTime();
                    },
                    child: const Text("WITA"),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _zone = 'WIT';
                      });
                      _updateTime();
                    },
                    child: const Text("WIT"),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _zone = 'London';
                      });
                      _updateTime();
                    },
                    child: const Text("London"),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text("Selected Time Zone:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(_currentTime,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
