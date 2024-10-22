// lib/widgets/counter_display.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/counter_bloc.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<CounterBloc, int>(
        builder: (context, count) {
          return Text(
            '$count',
            style: Theme.of(context).textTheme.headline4,
          );
        },
      ),
    );
  }
}