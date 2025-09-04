import 'package:flutter/material.dart';
import '../organisms/weather_card.dart';
import '../organisms/actions_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _cityName = 'São Paulo';
  double _temperature = 25.0;
  String _weatherDescription = 'Ensolarado';
  String _weatherIcon = '☀️';
  bool _isLoading = false;

  void _fetchWeather() {
    setState(() => _isLoading = true);

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _cityName = 'Rio de Janeiro';
        _temperature = 28.5;
        _weatherDescription = 'Chuva leve';
        _weatherIcon = '🌧️';
        _isLoading = false;
      });
    });
  }

  // Define a cor de fundo conforme o clima
  Color _bgForWeather() {
    if (_weatherDescription.toLowerCase().contains('chuva')) {
      return Colors.lightBlue.shade50;
    }
    if (_temperature >= 28) {
      return Colors.orange.shade50;
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    final content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // AnimatedContainer: cor do card suaviza na troca de clima
        AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
          child: WeatherCard(
            city: _cityName,
            icon: _weatherIcon,
            temp: _temperature,
            description: _weatherDescription,
          ),
        ),
        const SizedBox(height: 40),

        // Seção de botões (sem animação)
        ActionsSection(
          onUpdate: _fetchWeather,
          onSearch: () {
            // Aqui você pode implementar lógica de busca futura
          },
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('App do Clima'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        // AnimatedSwitcher: transição suave entre loading e conteúdo
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, anim) =>
              FadeTransition(opacity: anim, child: child),
          child: _isLoading
              ? const SizedBox(
                  key: ValueKey('loading'),
                  width: 36,
                  height: 36,
                  child: CircularProgressIndicator(),
                )
              : Container(
                  key: const ValueKey('content'),
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: content,
                ),
        ),
      ),
      backgroundColor: _bgForWeather(),
    );
  }
}
