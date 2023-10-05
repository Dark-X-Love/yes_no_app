import 'package:flutter/material.dart';

void main() => runApp(const MessageFieldBox());

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final UnderlineInputBorder outLinedInputBorder = UnderlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: const BorderSide(color: Colors.transparent));
    final inputDecoration = InputDecoration(
        enabledBorder: outLinedInputBorder,
        focusedBorder: outLinedInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            print('Valor de la caja de texto?');
          },
        ));
    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit value $value');
      },
      onChanged: (value) {
        print('Changed: $value');
      },
    );
  }
}
