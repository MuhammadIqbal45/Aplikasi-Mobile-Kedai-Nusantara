import 'package:flutter/material.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/screens/chat/components/body.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);
  static String routeName = "/chat_screen";

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // ignore: unused_field, prefer_final_fields
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text(
          "Pesan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Palette.bg1,
        iconTheme: const IconThemeData(color: Colors.white),
        // actions: const [
        //   // IconButton(
        //   //   icon: const Icon(Icons.search),
        //   //   color: Colors.white,
        //   //   onPressed: () {},
        //   // ),
        //   // IconButton(
        //   //   icon: const Icon(Icons.book),
        //   //   color: Colors.white,
        //   //   onPressed: () {},
        //   // ),
        // ],
      ),
      body: const Body(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Palette.bg1,
      //   child: const Icon(
      //     Icons.person_add_alt_1,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }

//   AppBar buildAppBar() {
//     return AppBar(
//       automaticallyImplyLeading: false,
//       title: const Text("Chats"),
//       backgroundColor: Palette.bg1,
//       actions: [
//         IconButton(
//           icon: const Icon(Icons.search),
//           color: Colors.white,
//           onPressed: () {},
//         ),
//       ],
//     );
//   }
}
