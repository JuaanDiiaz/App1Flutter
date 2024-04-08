import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AvatarScreen'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              child: Text('SL'),
            ),
          ),
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           radius: 150,
           backgroundImage: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/6f6af2ea-3631-4e5b-b39c-c57e582b7343/dfzjt8i-8a76dbac-e4ad-48ec-a527-f9aa39d1f0ef.png/v1/fill/w_600,h_1071,q_80,strp/spider_man_taking_a_selfie_by_lunartbycode_dfzjt8i-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTA3MSIsInBhdGgiOiJcL2ZcLzZmNmFmMmVhLTM2MzEtNGU1Yi1iMzljLWM1N2U1ODJiNzM0M1wvZGZ6anQ4aS04YTc2ZGJhYy1lNGFkLTQ4ZWMtYTUyNy1mOWFhMzlkMWYwZWYucG5nIiwid2lkdGgiOiI8PTYwMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RNomr1GZaY5sUy0hvwObRq-o_CYTAAWrweBdisyn3K4'),
         )
      ),
    );
  }
}