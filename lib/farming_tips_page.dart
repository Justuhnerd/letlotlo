import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart'; // For Facebook login
import 'package:url_launcher/url_launcher.dart'; // To open WhatsApp links

class FarmingTipsPage extends StatelessWidget {
  // Facebook login function
  Future<void> _loginWithFacebook() async {
    final result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      // Handle successful login and navigate to the community forum
      print("Login successful, token: ${result.accessToken?.token}");
      // Navigate to forum page or home
    } else {
      print("Login failed: ${result.status}");
    }
  }

  // Function to open WhatsApp group link
  Future<void> _openWhatsAppGroup(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not open WhatsApp group link';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farming Tips', style: TextStyle(fontWeight: FontWeight.bold)),
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Login Section for Facebook
                ElevatedButton.icon(
                  onPressed: _loginWithFacebook,
                  icon: Icon(Icons.facebook, color: Colors.white),
                  label: Text('Login with Facebook', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  ),
                ),
                
                // Farming Tips Section
                SizedBox(height: 32),
                Row(
                  children: [
                    Icon(Icons.lightbulb, size: 30, color: Colors.orange),
                    SizedBox(width: 8),
                    Text(
                      'Helpful Tips for Better Farming:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[700]),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Get insights on the best farming practices, techniques, and solutions for various crops.',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
                SizedBox(height: 20),
                
                // WhatsApp Community Links Section
                Row(
                  children: [
                    Icon(Icons.group, size: 30, color: Colors.green[700]),
                    SizedBox(width: 8),
                    Text(
                      'Join Our WhatsApp Groups:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[700]),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Connect with other farmers and experts in these WhatsApp groups.',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
                SizedBox(height: 20),
                
                // WhatsApp Group Links for Different Categories
                ListTile(
                  leading: Icon(Icons.local_florist, color: Colors.green[600]),
                  title: Text(
                    'General Farming Discussion',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Discuss general farming tips and techniques.'),
                  trailing: Icon(Icons.arrow_forward, color: Colors.green),
                  onTap: () {
                    _openWhatsAppGroup('https://chat.whatsapp.com/yourgroupid'); // Replace with actual link
                  },
                ),
                ListTile(
                  leading: Icon(Icons.agriculture, color: Colors.brown[600]),
                  title: Text(
                    'Crop Cultivation',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Join this group to discuss crop cultivation techniques.'),
                  trailing: Icon(Icons.arrow_forward, color: Colors.green),
                  onTap: () {
                    _openWhatsAppGroup('https://chat.whatsapp.com/yourgroupid'); // Replace with actual link
                  },
                ),
                ListTile(
                  leading: Icon(Icons.local_florist, color: Colors.green),
                  title: Text(
                    'Pest Control Solutions',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Talk to experts about pest control methods for farming.'),
                  trailing: Icon(Icons.arrow_forward, color: Colors.green),
                  onTap: () {
                    _openWhatsAppGroup('https://chat.whatsapp.com/yourgroupid'); // Replace with actual link
                  },
                ),
                ListTile(
                  leading: Icon(Icons.water, color: Colors.blue[600]),
                  title: Text(
                    'Water Management Techniques',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Learn how to manage water resources for better farming.'),
                  trailing: Icon(Icons.arrow_forward, color: Colors.green),
                  onTap: () {
                    _openWhatsAppGroup('https://chat.whatsapp.com/yourgroupid'); // Replace with actual link
                  },
                ),
                ListTile(
                  leading: Icon(Icons.group, color: Colors.orange),
                  title: Text(
                    'General Agriculture Community',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Join our general agriculture community for diverse discussions.'),
                  trailing: Icon(Icons.arrow_forward, color: Colors.green),
                  onTap: () {
                    _openWhatsAppGroup('https://chat.whatsapp.com/yourgroupid'); // Replace with actual link
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
