import 'package:flutter/material.dart';
import 'climate_card.dart';
import 'rain_info.dart';

class WeatherDetailsWidget extends StatelessWidget {
  final String weatherStateName;
  final IconData weatherIcon;
  final double temperature;
  final List<Map<String, dynamic>> weatherDetails;

  const WeatherDetailsWidget({
    super.key,
    required this.weatherStateName,
    required this.weatherIcon,
    required this.temperature,
    required this.weatherDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClimateCard(
          weatherStateName: weatherStateName,
          weatherIcon: weatherIcon,
          temperature: temperature,
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: weatherDetails.map((detail) {
              return WeatherInfoWidget(
                title: detail['title'],
                icon: detail['icon'],
                value: detail['value'],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
