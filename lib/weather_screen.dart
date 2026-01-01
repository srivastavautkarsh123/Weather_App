import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/hourly_forecast_item.dart';
import 'package:weather_app/additional_info_item.dart';

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',

          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh_rounded)),
          //  Icon(Icons.refresh),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300 °k',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 13),
                          Icon(Icons.cloud, size: 53),
                          SizedBox(height: 14),
                          Text('Rain', style: TextStyle(fontSize: 26)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 33),
            // Weather card
            Text(
              'Weather Forecast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(
                    icon: Icons.cloud,
                    time: '03:00',
                    temperature: '320.12', ),
                  
                  HourlyForecastItem(
                    icon: Icons.water_drop,
                    time: '06:00',
                    temperature: '315.45',
                  ),
                  HourlyForecastItem(
                    icon: Icons.grain,
                    time: '09:00',
                    temperature: '310.78',  
                  ),
                  HourlyForecastItem(
                    icon: Icons.cloud,
                    time: '12:00',
                    temperature: '308.32',  
                  ),
                  HourlyForecastItem(
                    icon: Icons.wb_sunny,
                    time: '15:00',
                    temperature: '312.67',
                  ),
                ],),),
            SizedBox(height: 20),
            // Additional Information
            const Text('Additional Information',style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold
            ),
            
            ),
            SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AdditionalInfoItem(
                icon: Icons.water_drop,
                label: 'Humidity',
                value: '78%',
              ),
              AdditionalInfoItem(
                icon: Icons.air,
                label: 'Wind Speed',
                value: '12 km/h',
              ), 
AdditionalInfoItem(
                icon: Icons.thermostat,
                label: 'Pressure',
                value: '1013 hPa', 
),
              
              
            
            ],
          )

  ]

            
          ,
        ),
      ),
    );
  }
}
