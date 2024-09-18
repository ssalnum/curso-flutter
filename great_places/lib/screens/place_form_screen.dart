import 'dart:io';

import 'package:flutter/material.dart';
import 'package:great_places/providers/grate_places.dart';
import 'package:great_places/widgets/location_input.dart';
import 'package:provider/provider.dart';

import '../widgets/image_input.dart';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({super.key});

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  final _titleController = TextEditingController();
  File? _pickedImage;

  void _selectImage(File pickedImage) {
    _pickedImage = pickedImage;
  }

  void _submitForm() {
    if (_titleController.text.isEmpty || _pickedImage == null) {
      return;
    }

    Provider.of<GratePlaces>(
      context,
      listen: false,
    ).addPlace(
      _titleController.text,
      _pickedImage!,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Lugar'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        elevation: 4,
        shadowColor: const Color.fromRGBO(0, 0, 0, 0.6),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      controller: _titleController,
                      decoration: const InputDecoration(
                        labelText: 'Título',
                      ),
                    ),
                    const SizedBox(height: 10),
                    ImageInput(
                      onSelectImage: _selectImage,
                    ),
                    const SizedBox(height: 10),
                    const LocationInput(),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: _submitForm,
            icon: const Icon(Icons.add),
            label: const Text('Adicionar'),
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(
                  Theme.of(context).colorScheme.secondary,
                ),
                shape: const WidgetStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                elevation: const WidgetStatePropertyAll<double>(0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap),
          )
        ],
      ),
    );
  }
}
