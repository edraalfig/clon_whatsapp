import 'package:flutter/material.dart';
import 'package:whatsapp/models/contact_model.dart';

class CallModel {
  final String nombre, fecha, fotoUrl;
  final IconData icono;

  CallModel(
    this.nombre,
    this.fecha,
    this.fotoUrl,
    this.icono,
  );
}

List<ContactModel> contactos = contactData;
List<CallModel> callData = [
  CallModel(
    contactos[3].nombre,
    '(1) Hoy 11:03 a. m.',
    contactos[3].avatarUrl,
    Icons.videocam,
  ),
  CallModel(
    contactos[3].nombre,
    '(3) Ayer 4:00 p. m.',
    contactos[3].avatarUrl,
    Icons.call,
  ),
  CallModel(
    contactos[0].nombre,
    '(1) Ayer 1:00 p. m.',
    contactos[0].avatarUrl,
    Icons.call,
  ),
  CallModel(
    contactos[5].nombre,
    '(2) Ayer 10:00 a. m.',
    contactos[5].avatarUrl,
    Icons.videocam,
  ),
  CallModel(
    contactos[0].nombre,
    '(1) Ayer 9:50 a. m.',
    contactos[0].avatarUrl,
    Icons.call,
  ),
  CallModel(
    contactos[3].nombre,
    '(3) 20 de marzo 5:40 p. m.',
    contactos[3].avatarUrl,
    Icons.call,
  ),
  CallModel(
    contactos[1].nombre,
    '(1) 18 de marzo 5:40 p. m.',
    contactos[1].avatarUrl,
    Icons.videocam,
  ),
  CallModel(
    contactos[4].nombre,
    '(2) 18 de marzo 4:30 p. m.',
    contactos[4].avatarUrl,
    Icons.videocam,
  ),
  CallModel(
    contactos[4].nombre,
    '(1) 18 de marzo 3:30 p. m.',
    contactos[4].avatarUrl,
    Icons.videocam,
  ),
  CallModel(
    contactos[5].nombre,
    '(3) 18 de marzo 3:15 p. m.',
    contactos[5].avatarUrl,
    Icons.videocam,
  ),
  CallModel(
    contactos[2].nombre,
    '(3) 10 de marzo 10:37 a. m.',
    contactos[2].avatarUrl,
    Icons.call,
  ),
  CallModel(
    contactos[3].nombre,
    '(3) 10 de marzo 10:37 a. m.',
    contactos[3].avatarUrl,
    Icons.call,
  ),
  CallModel(
    contactos[5].nombre,
    '(3) 10 de marzo 10:37 a. m.',
    contactos[5].avatarUrl,
    Icons.call,
  ),
  CallModel(
    contactos[2].nombre,
    '(3) 10 de marzo 10:37 a. m.',
    contactos[2].avatarUrl,
    Icons.call,
  ),
  CallModel(
    contactos[3].nombre,
    '(3) 10 de marzo 10:37 a. m.',
    contactos[3].avatarUrl,
    Icons.call,
  ),
  CallModel(
    contactos[5].nombre,
    '(3) 10 de marzo 10:37 a. m.',
    contactos[5].avatarUrl,
    Icons.call,
  ),
];
