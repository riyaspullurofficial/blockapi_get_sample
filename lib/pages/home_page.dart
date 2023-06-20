import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_logic_bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter"),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state.isApiFetching == true) {
                    return Center(
                      child: CircularProgressIndicator(color: Colors.pink,),
                    );
                  } else {
                    return Text(state.result??'No data');
                  }
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {

                    context.read<HomeBloc>().add(FetchApiEvent());
                  },
                  child: const Text('Increment'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
