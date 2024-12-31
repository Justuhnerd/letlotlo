import 'package:flutter/material.dart';

class MyFarmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Farm'),
        centerTitle: true,
        backgroundColor: Colors.green.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Farm Details Header
            Text(
              'Farm Overview',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade800,
              ),
            ),
            SizedBox(height: 16),

            // Weather Patterns and Location
            _buildCard(
              title: 'Weather Patterns',
              icon: Icons.wb_sunny_outlined,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Current Weather: Sunny, 28°C'),
                  Text('Forecast: Rain expected tomorrow'),
                  SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      // Implement location change functionality
                    },
                    child: Text('Change Location'),
                    style: _buttonStyle(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Climate Section
            _buildCard(
              title: 'Climate Information',
              icon: Icons.thermostat,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Soil Moisture: 65%'),
                  Text('Average Rainfall: 450mm/year'),
                  Text('Temperature Range: 22°C - 35°C'),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Soil Information Section
            _buildCard(
              title: 'Soil Information',
              icon: Icons.eco_outlined,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Soil Type: Loamy'),
                  Text('pH Level: 6.5'),
                  Text(
                      'Nutrient Levels: Nitrogen (High), Phosphorus (Moderate), Potassium (Low)'),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Water Table Section
            _buildCard(
              title: 'Water Table',
              icon: Icons.water_drop_outlined,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Depth to Water Table: 3.2 meters'),
                  Text('Water Quality: Suitable for Irrigation'),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Pests and Diseases Section
            _buildCard(
              title: 'Pests and Diseases',
              icon: Icons.bug_report_outlined,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Known Issues: Aphids, Powdery Mildew'),
                  SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to pest scanning section
                    },
                    child: Text('Scan for Pests and Diseases'),
                    style: _buttonStyle(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // My Crops Section
            _buildCard(
              title: 'My Crops',
              icon: Icons.local_florist_outlined,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Crops Planted: Tomatoes, Maize, Spinach'),
                  Text('Harvest Due: Tomatoes - 3 weeks'),
                  SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to crop management section
                    },
                    child: Text('Manage My Crops'),
                    style: _buttonStyle(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Aerial View Section
            _buildCard(
              title: 'Aerial View of Farm',
              icon: Icons.map_outlined,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Aerial Map Image Placeholder',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to aerial imaging or maps
                    },
                    child: Text('View Aerial Map'),
                    style: _buttonStyle(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Recommended Additional Features
            Text(
              'Recommended Features',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade800,
              ),
            ),
            SizedBox(height: 16),
            _buildCard(
              title: 'Farm Analytics',
              icon: Icons.bar_chart_outlined,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Soil Health: Optimal'),
                  Text('Crop Yield Prediction: 90% success rate'),
                ],
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required IconData icon,
    required Widget content,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 28, color: Colors.green.shade700),
                SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade800,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            content,
          ],
        ),
      ),
    );
  }

  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.green.shade700,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
