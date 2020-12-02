import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';


class new_work_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新規トレーニング"),
      ),
      body: Container(


        child: Padding(

          padding: const EdgeInsets.all(20.0),


          child: Column(

            children: [

              TextFormField(
                 decoration: const InputDecoration(
                  labelText: 'タイトル',
                   ),
                   validator: (String value) {
                        if (value.trim().isEmpty) {
                         return 'タイトル is required';
                        }
                     },
                 ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new TextField(
                  decoration: new InputDecoration(labelText: "回数"),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ], // Only numbers can be entered
                ),
              ),















              ElevatedButton(
                onPressed: () {
                  // Navigate back to first route when tapped.
                  Navigator.pop(context);
                },
                child: Text('新規登録'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

