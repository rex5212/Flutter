import "package:flutter/material.dart";
export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          TextButton(
              onPressed: () => {
                    Navigator.pop(context)
                  },
              child: const Text(
                'Criar',
                style: TextStyle(color: Colors.red, fontSize: 24),
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1), borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Email"),
                  labelStyle: TextStyle(color: Colors.red)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(prefixIcon: Icon(Icons.account_circle_outlined, color: Colors.white), enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1), borderRadius: BorderRadius.all(Radius.circular(15))), label: Text("Usuario"), labelStyle: TextStyle(color: Colors.red)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1), borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Senha"),
                  labelStyle: TextStyle(color: Colors.red)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1), borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Confirmação da Senha"),
                  labelStyle: TextStyle(color: Colors.red)),
            ),
          ),
        ],
      ),
    );
  }
}
