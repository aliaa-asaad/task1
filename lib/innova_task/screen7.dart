import 'package:flutter/material.dart';

class Screen7 extends StatelessWidget {
  const Screen7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 7'),
      ),
      body: Container(
        margin: const EdgeInsets.all(24),
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        
          image: const DecorationImage(
            image: NetworkImage(
                'https://th.bing.com/th/id/R.9eebbeb17df0d0e9f3fb047d35903129?rik=vf22HaU%2f%2bsQjZA&riu=http%3a%2f%2fwww.detectiveconanworld.com%2fwiki%2fimages%2f3%2f3b%2fShinichi_Kudo_Profile.jpg&ehk=QJT174CwmEWGVzxkVYcsnxKPfVhiBinmeEnoKsIqrf4%3d&risl=&pid=ImgRaw&r=0'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
