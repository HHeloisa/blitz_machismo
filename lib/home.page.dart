import 'package:flutter/material.dart';
import 'package:machistinha_project/constants/list_type_sexists.dart';
import 'package:machistinha_project/constants/strings.dart';
import 'package:machistinha_project/service/send_email.service.dart';
import 'package:machistinha_project/utils/alerts.dart';
import 'package:machistinha_project/utils/verify_email.dart';
import 'package:machistinha_project/widgets/sexist_types_widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController emailController = TextEditingController();
  List<String> selectedSexistTypes = [];

  sendEmailFunction() {
      if (!isValidEmail(emailController.text)) {
        return showErrorEmailAlert(context);
      }
      if (selectedSexistTypes.isEmpty) {
        return showErrorNoSelectionAlert(context);
      } else {
      SendEmailService().sendEmail(emailController.text, selectedSexistTypes);
      return showSuccessAlert(context);
      } 
  }

  void onSelectedSexistType(String selectedTypeKey) {
    FocusScope.of(context).unfocus();
    setState(() {
        if (!selectedSexistTypes.contains(selectedTypeKey)) {
      selectedSexistTypes.add(selectedTypeKey);
    } else {
      selectedSexistTypes.remove(selectedTypeKey);
    }
    });
  
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(appName),
          ),
          body:  GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        } , child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text(appDescription, style: TextStyle(
        fontSize: 14.0,
        color: Colors.grey)),
                const SizedBox(height: 24),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                    decoration: const InputDecoration(
                labelText: machistEmail,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))
                ),
              ),
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: ListView.builder(
                          itemCount: sexistTypeList.length,
                          itemBuilder: (context, index) {
                            return SexistTypesWidgets(
                              sexistType: sexistTypeList[index],
                  onChanged: onSelectedSexistType,
                            );
                          },
                        ),
                ),
              ],
            ),
        )),
          floatingActionButton: FloatingActionButton(
            onPressed: sendEmailFunction,
            tooltip: sendEmail,
            child: const Icon(Icons.send),
          ), 
        
      ),
    );
  }  
}