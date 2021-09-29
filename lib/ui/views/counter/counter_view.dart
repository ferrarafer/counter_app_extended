import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'counter_view_model.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${model.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => model.increment(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
      viewModelBuilder: () => CounterViewModel(),
    );
  }
}
