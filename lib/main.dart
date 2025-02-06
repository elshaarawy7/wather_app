import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wather_app2/cubits/get_wather_current_cubit/get_wather_cubit.dart';
import 'package:wather_app2/pages/sing_in_page.dart';

void main() {
  runApp(const WatherApp2());
}

class WatherApp2 extends StatelessWidget {
  const WatherApp2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWatherCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: SingIn()),
    );
  }
}
