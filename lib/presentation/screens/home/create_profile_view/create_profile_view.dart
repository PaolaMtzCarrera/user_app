import 'package:flutter/material.dart';
import 'package:user_app/presentation/widgets/custom_textfield.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CreateProfileScreenState createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final TextEditingController nameC = TextEditingController();
  final TextEditingController ageC = TextEditingController();
  final TextEditingController occupationC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Perfil'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              controller: nameC,
              labelText: 'Nombre',
              icon: Icons.person, 
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: ageC,
              labelText: 'Edad',
              keyboardType: TextInputType.number,
              icon: Icons.calendar_today, 
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: occupationC,
              labelText: 'Ocupación',
              icon: Icons.work, 
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              icon: const Icon(Icons.save, color: Colors.white),
              label: const Text(
                'Guardar y Ver Perfil',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onPressed: () {
                String name = nameC.text.trim();
                String age = ageC.text.trim();
                String occupation = occupationC.text.trim();

                if (name.isNotEmpty && age.isNotEmpty && occupation.isNotEmpty) {
                  Navigator.pushNamed(
                    context,
                    '/profile',
                    arguments: {
                      'name': name,
                      'age': age,
                      'occupation': occupation,
                    },
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Complete todos los campos')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}