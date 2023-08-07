// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutterblock_3/bloc/counter_bloc.dart';

// void main() => runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyApp(),
//     ));

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       appBar: AppBar(
//         title: Text('Flutter Bloc'),
//       ),
//       body: content(),
//     );
//   }

//   Widget content() {
//     return BlocProvider(
//       create: (context) => CounterBloc(),
//       child: BlocBuilder<CounterBloc, CounterState>(
//         builder: (context, state) {
//           return Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   state.count.toString(),
//                   style: TextStyle(fontSize: 50),
//                 ),
//                 SizedBox(height: 50),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         context.read<CounterBloc>().add(CountDecrement());
//                       },
//                       child: Container(
//                         height: 80,
//                         width: 80,
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle, color: Colors.blue),
//                         child: Icon(
//                           Icons.remove,
//                           color: Colors.white,
//                           size: 50,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 50),
//                     GestureDetector(
//                       onTap: () {
//                         context.read<CounterBloc>().add(CountIncrement());
//                       },
//                       child: Container(
//                         height: 80,
//                         width: 80,
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle, color: Colors.blue),
//                         child: Icon(
//                           Icons.add,
//                           color: Colors.white,
//                           size: 50,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterblock_3/bloc/counter_bloc.dart';
import 'package:flutterblock_3/bloc/counter_event.dart';
import 'package:flutterblock_3/bloc/counter_state.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Flutter Bloc'),
      ),
      body: content(),
    );
  }

  Widget content() {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: BlocBuilder<CounterBloc, Counter_State>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${state.count}",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<CounterBloc>().add(Counter_Major());
                      },
                      child: Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Text(
                            'Yes',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    SizedBox(width: 50),
                    GestureDetector(
                      onTap: () {
                        context.read<CounterBloc>().add(Counter_Minor());
                      },
                      child: Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Text(
                            'No',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
