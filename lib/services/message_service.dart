import 'package:flutter/material.dart';
import 'package:flutter_app_chat/models/message.dart';
import 'package:flutter_app_chat/models/user.dart';

class MessageService {
  User user1 = User(
    name: 'Leandro Ucuamba',
    image: 'images/emoji1.png',
    color: const Color(0xFFFFE0EC),
  );

  User user2 = User(
    name: 'Celso Coutinho',
    image: 'images/emoji2.png',
    color: const Color(0xFFBFE9F2),
  );

  User user3 = User(
    name: 'Andi Madila',
    image: 'images/emoji3.png',
    color: const Color(0xFFFFD6C4),
  );

  User user4 = User(
    name: 'Vanilson Banza',
    image: 'images/emoji4.png',
    color: const Color(0xFFC3C1E6),
  );

  User user5 = User(
    name: 'Leandro Ucuamba',
    image: 'images/emoji5.png',
    color: const Color(0xFFFFE0EC),
  );

  User user6 = User(
    name: 'Leandro Ucuamba',
    image: 'images/emoji6.png',
    color: const Color(0xFFFFE5A6),
  );

  User user7 = User(
    name: 'Vania Dias',
    image: 'images/emoji7.png',
    color: const Color(0xFFFFE0EC),
  );

  User user8 = User(
    name: 'Ketson Dias',
    image: 'images/emoji8.png',
    color: const Color(0xFFFFE0EC),
  );

  User user9 = User(
    name: 'Indira Dias',
    image: 'images/emoji9.png',
    color: const Color(0xFFC3C1E6),
  );

  User user10 = User(
    name: 'Dumilson Dias',
    image: 'images/emoji10.png',
    color: const Color(0xFFFF95A2),
  );

  // Users
  List<User> getUsers() {
    return [
      user1,
      user2,
      user3,
      user4,
      user5,
      user6,
      user7,
      user8,
      user9,
      user10
    ];
  }

  // Chats
  List<Message> getChats() {
    return [
      Message(
        sender: user6,
        time: '18:32',
        text: 'Olá, como estais?',
      ),
      Message(
        sender: user1,
        time: '14:05',
        text: 'Olá, como estais?.',
      ),
      Message(
        sender: user3,
        time: '14:00',
        text: 'Olá, como estais?',
      ),
      Message(
        sender: user2,
        time: '13:35',
        text: 'Olá, como estais?',
      ),
      Message(
        sender: user4,
        time: '12:11',
        text: 'Olá, como estais?',
      ),
    ];
  }

  // Chat messages
  List<Message> getMessages(User sender) {
    return [
      Message(
        sender: null,
        time: '18:42',
        text: 'Eu estou bem e vc?',
      ),
      Message(
        sender: sender,
        time: '18:39',
        text: 'Eu também estou optimo!',
      ),
      Message(
        sender: sender,
        time: '18:39',
        text: 'Ontem chegaste viste o telefone do leandro.',
      ),
      Message(
        sender: null,
        time: '18:36',
        text: 'Sim. Vi a ultima vez quando entrei no carro!',
      ),
      Message(
        sender: sender,
        time: '18:35',
        text: 'Ok, é que o telefone quebrou a tela.',
      ),
    ];
  }
}
