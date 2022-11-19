import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmEditProfileView extends StatefulWidget {
  const LtfmEditProfileView({Key? key}) : super(key: key);

  Widget build(context, LtfmEditProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmEditProfile"),
        actions: const [
          //! 4. Tambahkan tombol Save
          //! 5. Beri padding/margin pada tombol Save sebanyak 10
          //! 6. Panggil controller.save() ketika tombol di klik
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //! 1. Buat sebuah Card, tambahkan Column di dalamnya
              //! 2. Tambahkan padding.all 20.0
              //! 3. Di dalam column yang ada di dalam Card, tambahkan field ini:
              //? textfield email
              //? textfield password
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QTextField(
                        value: "syamsul@gmail.com",
                        label: "Email",
                        hint: "Your email",
                        onChanged: (value) {},
                      ),
                      const SizedBox(
                        height: 29.0,
                      ),
                      QTextField(
                        value: "123456",
                        label: "Password",
                        hint: "Your password",
                        obscure: true,
                        onChanged: (value) {},
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.login),
                          label: const Text("Save"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () => controller.save(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmEditProfileView> createState() => LtfmEditProfileController();
}
