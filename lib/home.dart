import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_event.dart';
import 'bloc/counter_state.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter'),
      ),
      body: BlocBuilder<CounterBlocs, CounterStates>(
        builder: (context, state) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Counter Value:',
              ),
              Text(
                state.counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: ()=> BlocProvider.of<CounterBlocs>(context).add(Increment()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10,),
          FloatingActionButton(
            onPressed: ()=> BlocProvider.of<CounterBlocs>(context).add(Decrement()),
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10,),
          FloatingActionButton(
            onPressed: ()=> BlocProvider.of<CounterBlocs>(context).add(Reset()),
            tooltip: 'Reset Counter',
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
