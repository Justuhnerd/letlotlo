import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import SharedPreferences
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _farmerName = '';

  @override
  void initState() {
    super.initState();
    _loadFarmerName();
  }

  // Load the farmer's name from SharedPreferences
  Future<void> _loadFarmerName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _farmerName = prefs.getString('farmerName') ?? 'Farmer'; // Default to 'Farmer' if not found
    });
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Letlotlo La Temo',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                'Navigation',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.agriculture),
              title: Text('Services'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade300, Colors.green.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Letlotlo La Temo, Farmer $_farmerName!',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              SizedBox(height: 16),
              // News Feed/Updates Section
              _buildNewsFeed(),
              SizedBox(height: 16),
              // Motivational Quotes or Farmer Community Section
           //   _buildMotivationalQuotes(),
              SizedBox(height: 16),
              // Quick Actions Section (Grid of Features)
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    FeatureCard(
                      icon: Icons.cloud,
                      label: 'Weather Updates',
                      onTap: () {},
                    ),
                    FeatureCard(
                      icon: Icons.lightbulb,
                      label: 'Farming Tips',
                      onTap: () {},
                    ),
                    FeatureCard(
                      icon: Icons.attach_money,
                      label: 'Market Prices',
                      onTap: () {},
                    ),
                    FeatureCard(
                      icon: Icons.headset_mic,
                      label: 'Expert Consultation',
                      onTap: () {},
                    ),
                    FeatureCard(
                      icon: Icons.terrain,
                      label: 'Soil Information',
                      onTap: () {},
                    ),
                    FeatureCard(
                      icon: Icons.water,
                      label: 'Water Table',
                      onTap: () {},
                    ),
                    FeatureCard(
                      icon: Icons.satellite_alt,
                      label: 'Satellite Imaging',
                      onTap: () {},
                    ),
                    _buildAdSpace(),
                    _buildAdSpace(),
                    _buildAdSpace(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  // News Feed Section
  Widget _buildNewsFeed() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(blurRadius: 6, color: Colors.grey.shade300)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest News & Updates',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Farmers in Botswana face a new initiative for sustainable agriculture.',
            style: GoogleFonts.poppins(fontSize: 14),
          ),
          SizedBox(height: 8),
          Text(
            'New weather prediction models to aid in crop planting decisions.',
            style: GoogleFonts.poppins(fontSize: 14),
          ),
        ],
      ),
    );
  }

 
  

  // Ad Space Container with Gradient Background
  Widget _buildAdSpace() {
    return GestureDetector(
      onTap: () {
        // Add your ad click handling here
      },
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.cyan.shade200],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            'Ad Space',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class FeatureCard extends StatefulWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const FeatureCard({super.key, 
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  _FeatureCardState createState() => _FeatureCardState();
}

class _FeatureCardState extends State<FeatureCard> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isTapped = !_isTapped; // Toggle tap state
        });
        widget.onTap();
      },
      child: AnimatedScale(
        scale: _isTapped ? 1.1 : 1.0,
        duration: Duration(milliseconds: 200),
        child: Card(
          elevation: 8, // Increased shadow for a lifted look
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24), // Rounded edges
          ),
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(widget.icon, size: 50, color: Colors.green),
                Text(
                  widget.label,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
