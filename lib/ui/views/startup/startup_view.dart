import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'startup_view_model.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: Center(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: model.isBusy
                ? const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.redAccent),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        child: Text(
                          'Hello World!!!',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => model.navigateToCounter(),
                        child: const Text('Counter'),
                      ),
                    ],
                  ),
          ),
        ),
      ),
      onModelReady: (model) => model.initialise(),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
