import 'package:flutter/material.dart';
import 'package:patient/pages/menu.dart';

void main(){
  runApp(homepage());
}
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:menu()
    );
  }
}
