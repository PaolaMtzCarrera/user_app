import 'package:flutter/material.dart';
import 'package:user_app/presentation/widgets/custom_button.dart';
import 'package:user_app/presentation/widgets/custom_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> userProfile =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              ProfileItem(
                icon: Icons.person,
                label: 'Nombre',
                value: userProfile['name'] ?? '',
              ),
              ProfileItem(
                icon: Icons.calendar_today,
                label: 'Edad',
                value: userProfile['age'] ?? '',
              ),
              ProfileItem(
                icon: Icons.work,
                label: 'Ocupación',
                value: userProfile['occupation'] ?? '',
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: 'Regresar a Inicio',
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                icon: Icons.home,
                backgroundColor: Colors.deepPurple,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}