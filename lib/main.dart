import 'package:event_manage/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async{

  await initHiveForFlutter();

  final HttpLink httpLink = HttpLink(
    'https://cdc3-103-247-51-243.in.ngrok.io/graphql',
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      // The default store is the InMemoryStore, which does NOT persist to disk
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

  runApp(
      GraphQLProvider(
        client: client,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Event Manage',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Home(),
        ),
      )
  );
}


// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//
//     return GraphQLProvider(
//       client: client,
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Event Manage',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: const Home(),
//       ),
//     );
//   }
// }


