import 'package:flutter/material.dart';

class OtherPublic extends StatefulWidget {
  @override
  State<OtherPublic> createState() => _OtherPublicState();
}

class _OtherPublicState extends State<OtherPublic> {
  String dropdownValue = 'Select';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
            'Other Public',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
                child: Text("Select NGO")
            ),
            Container(
              alignment: Alignment.topLeft,
              child: DropdownButton<String>(
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Select','NGO1', 'NGO2', 'NGO3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),
                ),
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
                maxLines: 4,
              ),
            ),
            Container(
                height: 70,
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ElevatedButton(
                  child: const Text(
                    'Request',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
