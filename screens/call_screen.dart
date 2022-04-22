import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_model.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
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
              backgroundImage: NetworkImage(callData[i].fotoUrl),
            ),
            title: Row(
              children: [
                Text(
                  callData[i].nombre,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Icon(
                  callData[i].icono,
                  size: 32.0,
                  color: Theme.of(context).colorScheme.secondary,
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
                    callData[i].fecha,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
