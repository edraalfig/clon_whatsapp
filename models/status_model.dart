import 'package:whatsapp/models/contact_model.dart';

class StatusModel {
  final String nombre, fecha, imgUrl;

  StatusModel(
    this.nombre,
    this.fecha,
    this.imgUrl,
  );
}

List<ContactModel> contactos = contactData;
List<StatusModel> estadosData = [
  StatusModel(
    'Mi estado',
    'Hoy 10:00 a. m.',
    'https://www.solofondos.com/wp-content/uploads/2016/01/dd89dccfc8654b03f56265.jpg.jpg',
  ),
  StatusModel(
    contactos[0].nombre,
    'Ayer 6:00 p. m.',
    'http://pm1.narvii.com/6900/9495500c23d9ec965620b9496e3461f6fcae1fb8r1-540-960v2_uhq.jpg',
  ),
  StatusModel(
    contactos[1].nombre,
    'Hoy 8:00 a. m.',
    'https://www.androidsis.com/wp-content/uploads/2009/06/fondos-libres-8.jpg',
  ),
  StatusModel(
    contactos[2].nombre,
    'Hoy 7:30 a. m.',
    'https://i0.wp.com/www.fondosimagenes.com/wp-content/uploads/2021/12/Fondos-bien-piolas-Random-4.jpg?w=640&ssl=1',
  ),
  StatusModel(
    contactos[3].nombre,
    'Hoy 8:00 a. m.',
    'https://www.xtrafondos.com/thumbs/vertical/1_7913.jpg',
  ),
  StatusModel(
    contactos[4].nombre,
    'Ayer 8:00 p. m.',
    'https://images4.alphacoders.com/100/thumb-350-1001996.png',
  ),
  StatusModel(
    contactos[5].nombre,
    'Ayer 9:00 p. m.',
    'https://www.tuexperto.com/wp-content/uploads/2022/02/17-fondos-de-pantalla-para-pc-de-gatitos-5-1200x675.jpg',
  ),
];
