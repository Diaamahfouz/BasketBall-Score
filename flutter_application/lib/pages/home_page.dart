import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/cubit/counter_cubit.dart';
import 'package:flutter_application/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.orange,
            title: const Text(
              'BasketBall Points Counter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A ',
                        style: TextStyle(
                          fontSize: 42,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        BlocProvider.of<CounterCubit>(context)
                            .teamAPoint
                            .toString(),
                        style: const TextStyle(
                          fontSize: 160,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamsIncrement(team: 'A', buutonNumber: 1);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(140, 50),
                        ),
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamsIncrement(team: 'A', buutonNumber: 2);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(140, 50),
                        ),
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamsIncrement(team: 'A', buutonNumber: 3);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(140, 50),
                        ),
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 42,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        BlocProvider.of<CounterCubit>(context)
                            .teamBPoint
                            .toString(),
                        style: const TextStyle(
                          fontSize: 160,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamsIncrement(team: 'B', buutonNumber: 1);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(140, 50),
                        ),
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamsIncrement(team: 'B', buutonNumber: 2);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(140, 50),
                        ),
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamsIncrement(team: 'B', buutonNumber: 3);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(140, 50),
                        ),
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context)
                      .TeamsIncrement(team: 'r', buutonNumber: 0);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(140, 50),
                ),
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
