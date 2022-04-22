import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_model.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: estadosData.length,
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
              backgroundImage: NetworkImage(estadosData[i].imgUrl),
            ),
            title: Row(
              children: [
                Text(
                  estadosData[i].nombre,
                  style: Theme.of(context).textTheme.headline5,
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
                    estadosData[i].fecha,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
