import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    Widget notificationCircle(int value) {
      return Container(
        child: Center(
          child: Text(
            value.toString(),
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        height: 25.0,
        width: 25.0,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          shape: BoxShape.circle,
        ),
      );
    }

    return ListView.builder(
      itemCount: temporalData.length,
      itemBuilder: (context, i) => Column(
        children: [
          const Divider(
            height: 30.0,
            color: Colors.transparent,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(temporalData[i].avatarUrl),
            ),
            title: Row(
              children: [
                Text(
                  temporalData[i].nombre,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  temporalData[i].hora,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    temporalData[i].mensaje,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  temporalData[i].newMessage == 0
                      ? Container()
                      : notificationCircle(temporalData[i].newMessage),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
