import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(fontWeight: FontWeight.bold)),
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
                // Settings Title
                Row(
                  children: [
                    Icon(Icons.settings, size: 30, color: Colors.green[700]),
                    SizedBox(width: 8),
                    Text(
                      'App Settings:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[700]),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                
                // Notifications Toggle
                SwitchListTile(
                  title: Text('Enable Notifications', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Receive updates and alerts related to farming tips and discussions.'),
                  value: true, // Set to true or false based on user's current setting
                  onChanged: (bool value) {
                    // Handle the toggle action here
                  },
                ),
                
                // Dark Mode Toggle
                SwitchListTile(
                  title: Text('Enable Dark Mode', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Switch to a darker theme for better visibility in low light.'),
                  value: false, // Set to true or false based on user's current setting
                  onChanged: (bool value) {
                    // Handle the toggle action here
                  },
                ),

                // Account Settings
                SizedBox(height: 30),
                Row(
                  children: [
                    Icon(Icons.account_circle, size: 30, color: Colors.orange[600]),
                    SizedBox(width: 8),
                    Text(
                      'Account Settings:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[700]),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Icon(Icons.edit, color: Colors.blue[600]),
                  title: Text(
                    'Edit Profile',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward, color: Colors.green),
                  onTap: () {
                    // Navigate to the Edit Profile page
                  },
                ),
                ListTile(
                  leading: Icon(Icons.lock, color: Colors.red[600]),
                  title: Text(
                    'Change Password',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward, color: Colors.green),
                  onTap: () {
                    // Navigate to Change Password page
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.black),
                  title: Text(
                    'Log Out',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward, color: Colors.green),
                  onTap: () {
                    // Handle Log Out action
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
