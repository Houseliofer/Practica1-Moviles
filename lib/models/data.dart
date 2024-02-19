import 'package:flutter/material.dart';
import 'package:practica1/models/personaje.dart';

final listCategory = ['Personajes', 'Razas', 'Clases'];

final listPersonaje = [
  Personaje(
    'Laezel',
    '	Githyanki         ',
    'Soldado            ',
    'Una feroz guerrera celosamente devota de la Reina Exánime, hará lo que sea necesario para acabar con el terror de los Illithid y demostrar su valía ante su reina. Se la puede encontrar por primera vez en el Nautiloide durante el prólogo, donde sirve como compañera temporal, y se la recluta adecuadamente al comienzo del Acto 1 y se enamora de personajes de cualquier género.',
    [
      ImagePersonaje(
        'lib/assets/personaje/laezel.png',
        Color.fromARGB(255, 234, 6, 6),
      )
    ],
  ),
  Personaje(
    'Gael',
    'Humano',
    'Mago                 ',
    'Gale es un mago prodigio cuyo amor por una diosa lo hizo intentar una hazaña terrible que ningún mortal debería. Arruinado por la magia prohibida de la antigua Netheril, Gale se esfuerza por deshacer la corrupción que se apodera de él y recuperar el favor de su diosa antes de convertirse en un destructor de mundos.',
    [
      ImagePersonaje(
        'lib/assets/personaje/gael.png',
        Color.fromARGB(255, 16, 14, 77),
      ),
    ],
  ),
  Personaje(
    'Astarion       ',
    'Elfo            ',
    'Picaro             ',
    'Astarion merodeaba por la noche como un engendro de vampiro durante siglos, sirviendo a un amo sádico hasta que fue arrebatado. Ahora puede caminar en la luz, pero ¿puede dejar atrás su pasado malvado?',
    [
      ImagePersonaje(
        'lib/assets/personaje/astarion.png',
        Color.fromARGB(255, 7, 189, 46),
      ),
    ],
  ),
];
