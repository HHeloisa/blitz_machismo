import 'package:flutter/material.dart';
import 'package:machistinha_project/constants/strings.dart';

showSuccessAlert(context) => showAlert(context, done, emailSent);
showErrorEmailAlert(context) => showAlert(context, somethingWrong, wrongEmail);
showErrorNoSelectionAlert(context) => showAlert(context, somethingWrong,noSelectedTypes);

showAlert(context, title, description) {
showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:  Text(title, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
          content:  Text(description, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(close, style: TextStyle(color: Colors.red, fontWeight: FontWeight.w400)),
            ),
          ],
        );
      },
    );
  }