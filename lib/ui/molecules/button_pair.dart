import 'package:flutter/widgets.dart';
import '../atoms/app_button.dart';

class ButtonPair extends StatelessWidget {
  final VoidCallback onUpdate;
  final VoidCallback onSearch;
  const ButtonPair({super.key, required this.onUpdate, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(label: 'Atualizar Clima', onPressed: onUpdate, primary: true),
        const SizedBox(height: 10),
        AppButton(
          label: 'Buscar Nova Cidade',
          onPressed: onSearch,
          primary: false,
        ),
      ],
    );
  }
}
