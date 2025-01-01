import 'package:flutter/material.dart';
import 'package:pediatric_app/constants.dart';
import 'package:pediatric_app/providers/auth.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
        builder: (context, value, child) =>Scaffold(
            appBar: my_app_bar,
            drawer: my_drawer,
            body: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.deepOrange,
                            ),
                          )                 ;
                        }
                    ),
                  ),
                ),
                Text(value._count),

              ],
            ),
          floatingActionButton: FloatingActionButton(
              onPressed: (){
                const _counter = context.read<AuthProvider>();
    
                _counter.increment();
              },
              tooltip: 'The floating button',
              child: Icon(icon: Icons.plus_one),
          ),
        );
    )
  }
}
