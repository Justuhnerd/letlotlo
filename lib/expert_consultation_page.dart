import 'package:flutter/material.dart';

class ExpertConsultationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expert Consultation', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade200, Colors.brown.shade100], // Soft green and light brown tones
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Intro Section with Icon
                Icon(Icons.headset_mic, size: 80, color: Colors.greenAccent),
                SizedBox(height: 16),
                Text(
                  'Get expert advice and consultations for your farming needs.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
                
                // Ask ChatGPT Section with Icon and Input
                SizedBox(height: 32),
                Row(
                  children: [
                    Icon(Icons.chat_bubble, color: Colors.green, size: 30),
                    SizedBox(width: 8),
                    Text(
                      'Ask ChatGPT for Farming Tips:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[700]),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Ask your question...',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.green[50],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Call API for GPT-based response here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  ),
                  child: Text('Ask Now', style: TextStyle(fontSize: 16)),
                ),

                // Expert Profiles Section with Icon
                SizedBox(height: 32),
                Row(
                  children: [
                    Icon(Icons.person, color: Colors.green, size: 30),
                    SizedBox(width: 8),
                    Text(
                      'Meet Our Experts:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[700]),
                    ),
                  ],
                ),
                // Example expert cards
                ExpertCard(
                  name: 'John Doe',
                  specialty: 'Tomato Farming',
                  phoneNumber: '123-456-7890',
                  imageUrl: 'assets/expert1.jpg',
                ),
                ExpertCard(
                  name: 'Jane Smith',
                  specialty: 'Horticulture & Crop Care',
                  phoneNumber: '987-654-3210',
                  imageUrl: 'assets/expert2.jpg',
                ),

                // Banner Section (Contact Details)
                SizedBox(height: 32),
                BannerContactSection(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Open chatbot page or scroll to the chatbot input field
        },
        child: Icon(Icons.chat),
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}

class ExpertCard extends StatelessWidget {
  final String name;
  final String specialty;
  final String phoneNumber;
  final String imageUrl;

  const ExpertCard({
    required this.name,
    required this.specialty,
    required this.phoneNumber,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 5,
      shadowColor: Colors.green.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
          radius: 30,
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(
          '$specialty\n$phoneNumber',
          style: TextStyle(color: Colors.black54),
        ),
        isThreeLine: true,
      ),
    );
  }
}

class BannerContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.yellow[700],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            'Call Our Experts for More Details',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'Farm Consultation Center: 123-789-4560',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            'Horticulture Hotline: 987-654-3210',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

