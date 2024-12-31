import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import SharedPreferences
import 'package:google_fonts/google_fonts.dart';

// Import your page files
import 'weather_page.dart';
import 'farming_tips_page.dart';
import 'market_prices_page.dart';
import 'expert_consultation_page.dart';
import 'soil_info_page.dart';
import 'water_table_page.dart';
import 'satellite_imaging_page.dart';
import 'my_farm_page.dart';


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
  child: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.teal, Colors.blueAccent],
      ),
    ),
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.cyan, Colors.indigo],
            ),
          ),
          child: Text(
            'Navigation',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.dashboard, color: Colors.white),
          title: Text(
            'Dashboard',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {}, // Add navigation logic for Dashboard here
        ),
        ListTile(
          leading: Icon(Icons.agriculture, color: Colors.white),
          title: Text(
            'Services',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {}, // Add navigation logic for Services here
        ),
        ListTile(
          leading: Icon(Icons.person, color: Colors.white),
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {}, // Add navigation logic for Profile here
        ),
        ListTile(
          leading: Icon(Icons.settings, color: Colors.white),
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {}, // Add navigation logic for Settings here
        ),
      ],
    ),
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
              // Quick Actions Section (Grid of Features)
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    FeatureCard(
                      icon: Icons.agriculture,
                      label: 'My Farm',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyFarmPage()),
                        );
                      },
                    ),
                    FeatureCard(
                      icon: Icons.cloud,
                      label: 'Weather Updates',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WeatherPage()),
                        );
                      },
                    ),
                    FeatureCard(
                      icon: Icons.lightbulb,
                      label: 'Farming Tips',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FarmingTipsPage()),
                        );
                      },
                    ),
                    FeatureCard(
                      icon: Icons.attach_money,
                      label: 'Market Prices',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MarketPricesPage()),
                        );
                      },
                    ),
                    FeatureCard(
                      icon: Icons.headset_mic,
                      label: 'Expert Consultation',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ExpertConsultationPage()),
                        );
                      },
                    ),
                    FeatureCard(
                      icon: Icons.terrain,
                      label: 'Soil Information',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SoilInfoPage()),
                        );
                      },
                    ),
                    FeatureCard(
                      icon: Icons.water,
                      label: 'Water Table',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WaterTablePage()),
                        );
                      },
                    ),
                    FeatureCard(
                      icon: Icons.satellite_alt,
                      label: 'Satellite Imaging',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SatelliteImagingPage()),
                        );
                      },
                    ),
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
