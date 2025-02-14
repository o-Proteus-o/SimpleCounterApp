import 'package:fake_store/constant_color.dart';
import 'package:fake_store/cubit/counter_cubit.dart';
import 'package:fake_store/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamA = 0;

  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(CounterInitial()),
      child: MaterialApp(
        home: BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Scaffold(
                backgroundColor: AppColor.scaffoldBG,
                appBar: AppBar(
                  backgroundColor: AppColor.scaffoldBG,
                  centerTitle: true,
                  title: const Text('Points Counter'),
                ),
                body: Center(
                  child: Column(
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
                                'Team A',
                                style: TextStyle(
                                    fontSize: 42, color: Colors.white),
                              ),
                              Text(
                                '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                                style: TextStyle(
                                    fontSize: 150, color: Colors.white),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(8),
                                  backgroundColor: AppColor.bottonone,
                                  minimumSize: const Size(150, 50),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .addPoint(buttonNumber: 1, team: 'A');
                                },
                                child: const Text(
                                  'Add 1 Point ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.bottontwo,
                                  minimumSize: const Size(150, 50),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .addPoint(buttonNumber: 2, team: 'A');
                                },
                                child: const Text(
                                  'Add 2 Point',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.bottonthree,
                                  minimumSize: const Size(150, 50),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .addPoint(buttonNumber: 3, team: 'A');
                                },
                                child: const Text(
                                  'Add 3 Point ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 420,
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
                                    fontSize: 42, color: Colors.white),
                              ),
                              Text(
                                '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
                                style: TextStyle(
                                    fontSize: 150, color: Colors.white),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(8),
                                  backgroundColor: AppColor.bottonone,
                                  minimumSize: const Size(150, 50),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .addPoint(buttonNumber: 1, team: 'B');
                                },
                                child: const Text(
                                  'Add 1 Point ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.bottontwo,
                                  minimumSize: const Size(150, 50),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .addPoint(buttonNumber: 2, team: 'B');
                                },
                                child: const Text(
                                  'Add 2 Point ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.bottonthree,
                                  minimumSize: const Size(150, 50),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .addPoint(buttonNumber: 3, team: 'B');
                                },
                                child: const Text(
                                  'Add 3 Point ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          backgroundColor:
                              const Color.fromARGB(255, 27, 160, 197),
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).reset();
                        },
                        child: const Text(
                          'Reset',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
