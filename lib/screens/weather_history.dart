import 'package:flutter/material.dart';
import 'package:flutter_application_base/widgets/climate_card.dart';
import 'package:flutter_application_base/mocks/pronostico_horario_mock.dart';
import 'package:flutter_application_base/utils/weather_code_translation.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherData = pronosticoHorario['data']['hourly'];
    final int weatherCode = weatherData['weather_code'];
    final double temperature = weatherData['temperature_2m'];

    final String weatherStateName = weatherCodes[weatherCode]?['label'] ?? 'Unknown';
    final IconData weatherIcon = weatherCodes[weatherCode]?['icon'] ?? Icons.help;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Screen'),
      ),
      body: Center(
        child: ClimateCard(
          weatherStateName: weatherStateName,
          weatherIcon: weatherIcon,
          temperature: temperature,
        ),
      ),
    );
  }
}
