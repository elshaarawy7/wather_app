import 'package:flutter/material.dart';


class WeatherAppUI extends StatelessWidget {
  const WeatherAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF313745),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                cardWatherServices(
                  CityName: 'Cairo',
                  icon: Icons.wb_sunny,
                  temperature: '25°C',
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WeatherInfoCard(
                        icon: Icons.air, label: 'Wind', value: '5 m/s'),
                    WeatherInfoCard(
                        icon: Icons.thermostat,
                        label: 'Max Temp',
                        value: '30°C'),
                    WeatherInfoCard(
                        icon: Icons.access_time,
                        label: 'Sunset',
                        value: '18:45'),
                  ],
                )
              ])),
    );
  }
}