import 'package:buisnece_packege/buisnece_packege.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late final CounterBloc _bloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Вторая станица'),
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              Expanded(
                child: ElevatedButton(
                  child: const Icon(Icons.add),
                  onPressed: () => _bloc.add(CounterIncrement()),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Expanded(
                child: ElevatedButton(
                  child: const Icon(Icons.remove),
                  onPressed: () => _bloc.add(CounterDecrement()),
                ),
              ),
              const SizedBox(
                width: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
