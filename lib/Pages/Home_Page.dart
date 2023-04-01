import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final id="HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Expanded(
             child: Container(padding: EdgeInsets.only(left: 15,right: 15),
               child: Center(
                child: const Text("str_Center_text").tr(),
          ),
             ),
           ),
          Container(height: 50,width: MediaQuery.of(context).size.width,padding: EdgeInsets.only(right: 10,left: 10),
            child: Row(
              children: [
                Expanded(
                    child: MaterialButton(
                      onPressed: (){
                        context.setLocale(const Locale('en', 'US'));
                      },
                      color: Colors.red,
                      child: Text("English"),
                    )
                ),
                SizedBox(width: 10,),
                Expanded(
                    child: MaterialButton(
                      onPressed: (){
                        context.setLocale(Locale('ko', 'KR'));
                      },
                      color: Colors.blue,
                      child: Text("Korean"),
                    )
                ),
                SizedBox(width: 10,),
                Expanded(
                    child: MaterialButton(
                      onPressed: (){
                        context.setLocale(Locale('ja', 'JP'));
                      },
                      color: Colors.green,
                      child: Text("Japanese"),
                    )
                ),
                // SizedBox(width: 10,),
                // Expanded(
                //     child: MaterialButton(
                //       onPressed: (){
                //         context.setLocale(Locale('fr', 'FR'));
                //       },
                //       color: Colors.amber,
                //       child: Text("French"),
                //     )
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
