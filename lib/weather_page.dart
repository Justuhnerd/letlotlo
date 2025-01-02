import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Farm Weather Updates',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(  // Added scroll view to avoid overflow
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade300, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Main Title
                Text(
                  'Today\'s Weather for Your Farm',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
                SizedBox(height: 16),

                // Current Weather Details
                Container(
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
                        'Location: Gaborone, Botswana',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Temperature: 28°C (Day) / 20°C (Night)',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rainfall Prediction: 5mm',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Humidity: 75%',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Wind Speed: 15 km/h, Direction: NE',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'UV Index: Moderate',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Soil Temperature: 25°C, Soil Moisture: 30%',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),

                // 7-Day Forecasts
                Text(
                  '7-Day Forecast',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
                SizedBox(height: 8),
                Column(
                  children: [
                    Text('Day 1: Sunny, Temp: 30°C, Rain: 0mm', style: GoogleFonts.poppins(fontSize: 16)),
                    Text('Day 2: Cloudy, Temp: 28°C, Rain: 5mm', style: GoogleFonts.poppins(fontSize: 16)),
                    Text('Day 3: Rainy, Temp: 25°C, Rain: 15mm', style: GoogleFonts.poppins(fontSize: 16)),
                    // Add more forecast data here...
                  ],
                ),
                SizedBox(height: 8),

                // Severe Weather Alerts
                Text('Severe Weather Alerts: No warnings for today', style: GoogleFonts.poppins(fontSize: 16)),
                SizedBox(height: 8),

                // Drought Index
                Text('Drought Risk: Low', style: GoogleFonts.poppins(fontSize: 16)),
                SizedBox(height: 16),

                // Crop-Specific Recommendations
                Text(
                  'Crop Recommendations',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
                SizedBox(height: 8),
                Text('Best Time to Plant: Today (Rain expected tomorrow)', style: GoogleFonts.poppins(fontSize: 16)),
                SizedBox(height: 8),
                Text('Pest Risk: Moderate (due to upcoming rain)', style: GoogleFonts.poppins(fontSize: 16)),
                SizedBox(height: 16),

                // Customizable Dashboard
                ElevatedButton(
                  onPressed: () {
                    // Allow user to add a location
                  },
                  child: Text('Save This Location', style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Allow user to set alerts
                  },
                  child: Text('Set Alerts for Frost', style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                ),
                SizedBox(height: 16),

                // Agricultural Calendar Integration
                Text(
                  'Agricultural Calendar',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
                SizedBox(height: 8),
                Text('Best Time to Plant Corn: Early Spring', style: GoogleFonts.poppins(fontSize: 16)),
                SizedBox(height: 8),
                Text('Irrigation Schedule: Next watering due tomorrow', style: GoogleFonts.poppins(fontSize: 16)),
                SizedBox(height: 16),

                // IoT Device Data
                Text(
                  'IoT Device Data',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
                SizedBox(height: 8),
                Text('Soil Moisture Level: 45%', style: GoogleFonts.poppins(fontSize: 16)),
                SizedBox(height: 8),
                Text('Rain Gauge: 2mm today', style: GoogleFonts.poppins(fontSize: 16)),
                SizedBox(height: 16),

                // Historical Weather Data
                Text(
                  'Climate Analysis',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
                SizedBox(height: 8),
                Text('Historical Rainfall (Last 3 months): 150mm', style: GoogleFonts.poppins(fontSize: 16)),
                SizedBox(height: 8),
                Text('Climate Change Indicator: Temperature rise of 1°C over the last decade', style: GoogleFonts.poppins(fontSize: 16)),
                SizedBox(height: 16),

                // Interactive Weather Map (Placeholder for actual integration)
                Text(
                  'Interactive Weather Map',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 200,
                  color: Colors.grey.shade300,
                  child: Center(child: Text('Weather Map Goes Here')),
                ),
                SizedBox(height: 16),

                // Farm Activity Suggestions
                Text(
                  'Farm Activity Suggestions',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
                SizedBox(height: 8),
                Text('It\'s going to rain tomorrow – consider planting today', style: GoogleFonts.poppins(fontSize: 16)),
                SizedBox(height: 8),
                Text('High winds expected – secure lightweight equipment', style: GoogleFonts.poppins(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
