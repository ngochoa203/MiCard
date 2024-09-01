import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Ngọc Hòa',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  '"Có một số người dạy bạn cách trưởng thành, nhưng phương thức không đáng được cảm ơn."',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    color: Colors.teal.shade200,
                    fontSize: 16.0,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 20.0),
                _buildInfoCard(
                  icon: Icons.phone,
                  text: '0123 456 789',
                ),
                _buildInfoCard(
                  icon: Icons.email,
                  text: 'iam_hoahn@gmail.com',
                ),
                _buildInfoCard(
                  icon: Icons.location_on,
                  text: '1234 Tran Dai Nghia, Da Nang',
                ),
                _buildInfoCard(
                  icon: Icons.cake,
                  text: 'Age: 21',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard({required IconData icon, required String text}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.teal.shade900,
            fontFamily: 'RobotoMono',
          ),
        ),
      ),
    );
  }
}
