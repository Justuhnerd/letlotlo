import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.green.shade50], // Subtle white to soft green gradient
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Section
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://www.example.com/user_profile_picture.jpg'), // Replace with user's image
              ),
              SizedBox(height: 16),
              Text(
                'John Doe', // Replace with dynamic user name
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green[700]),
              ),
              SizedBox(height: 8),
              Text(
                'Expert Farmer', // Replace with user's title or profession
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green[600]),
              ),
              SizedBox(height: 16),
              
              // Personal Information Section
              Row(
                children: [
                  Icon(Icons.email, size: 30, color: Colors.blue[600]),
                  SizedBox(width: 8),
                  Text(
                    'johndoe@example.com', // Replace with dynamic user email
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Icon(Icons.phone, size: 30, color: Colors.orange[600]),
                  SizedBox(width: 8),
                  Text(
                    '+1234567890', // Replace with dynamic user phone number
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 20),
              
              // Bio Section
              Row(
                children: [
                  Icon(Icons.info, size: 30, color: Colors.green[700]),
                  SizedBox(width: 8),
                  Text(
                    'Bio:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[700]),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Experienced farmer with over 10 years of expertise in crop cultivation and sustainable farming practices. Passionate about sharing knowledge with others.',
                style: TextStyle(fontSize: 16, color: Colors.black87),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 30),
              
              // Edit Profile Button
              ElevatedButton.icon(
                onPressed: () {
                  // Navigate to Edit Profile page
                },
                icon: Icon(Icons.edit, color: Colors.white),
                label: Text('Edit Profile', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[800],
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
