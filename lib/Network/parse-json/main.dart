import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(userId: json['userId'], id: json['id'], title: json['title']);
  }
}

Future<Album> fetchAlbum() async {
  final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/3'),
      headers: {
        HttpHeaders.authorizationHeader: '通常、自分のAPIのtokenをここに入力',
      });
  final responseJson = jsonDecode(response.body);

  return Album.fromJson(responseJson);
}
