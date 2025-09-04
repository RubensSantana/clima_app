import 'package:flutter/widgets.dart';
import '../molecules/button_pair.dart';

class ActionsSection extends StatelessWidget {
  final VoidCallback onUpdate;
  final VoidCallback onSearch;
  const ActionsSection({
    super.key,
    required this.onUpdate,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonPair(onUpdate: onUpdate, onSearch: onSearch);
  }
}
