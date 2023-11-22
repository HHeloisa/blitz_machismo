
import 'package:flutter/material.dart';
import 'package:machistinha_project/constants/sexist_type.dart';
import 'package:machistinha_project/constants/strings.dart';

class SexistTypesWidgets extends StatefulWidget {
  const SexistTypesWidgets({super.key, required this.sexistType, required this.onChanged});
  final SexistType sexistType;
  final Function onChanged;

  @override
  State<SexistTypesWidgets> createState() => _SexistTypesWidgetsState();
}

class _SexistTypesWidgetsState extends State<SexistTypesWidgets> {

  bool initialValue = false;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(widget.sexistType.title),
      subtitle: Text(widget.sexistType.description),
      trailing: GestureDetector(child: const Icon(Icons.info_outline), onTap: () => _showDefinitionModal()),
      leading: Checkbox(
        value: initialValue,
        onChanged: (v) {
          setState(() =>  onAction());
        }
      ),
      onTap: () => onAction(),
    );
  }

  onAction() {
    setState(() {
      initialValue = !initialValue;
    });
    widget.onChanged(widget.sexistType.key);
  }

  _showDefinitionModal() {
    return showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(24.0),
        child: Wrap(
          children:  [
            const  Center(child: Text(betterUnderstanding, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),)),
            const SizedBox(height: 32),
            Text(widget.sexistType.explanation),
            
          
   
        ],),
      );
    });
  }
}

