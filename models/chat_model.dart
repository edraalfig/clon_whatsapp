import 'package:whatsapp/models/contact_model.dart';

class ChatModel {
  final String nombre, mensaje, hora, avatarUrl;
  final int newMessage;

  ChatModel(
    this.nombre,
    this.mensaje,
    this.hora,
    this.avatarUrl,
    this.newMessage,
  );
}

List<ContactModel> contactos = contactData;
List<ChatModel> temporalData = [
  ChatModel(
    contactos[0].nombre,
    "Mi hermano!, ¿Un partido hoy?",
    "10:30 a. m",
    contactos[0].avatarUrl,
    1,
  ),
  ChatModel(
    contactos[1].nombre,
    "Hey! Tengo un nuevo video",
    "3:30 p. m.",
    contactos[1].avatarUrl,
    1,
  ),
  ChatModel(
    contactos[2].nombre,
    "Windows 12 esta disponible!",
    "5:00 p. m.",
    contactos[2].avatarUrl,
    0,
  ),
  ChatModel(
    contactos[3].nombre,
    "Estoy bien, gracias",
    "10:30 a. m.",
    contactos[3].avatarUrl,
    3,
  ),
  ChatModel(
    contactos[4].nombre,
    "Soy el hombre mas rapido",
    "12:30 p. m.",
    contactos[4].avatarUrl,
    0,
  ),
  ChatModel(
    contactos[5].nombre,
    "Te vi con Iris, le diré a Barry",
    "6:30 p. m.",
    contactos[5].avatarUrl,
    1,
  ),
];
