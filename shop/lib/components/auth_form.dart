import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../exceptions/auth_exception.dart';
import '../models/auth.dart';

enum AuthMode {
  signup,
  login,
}

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _authData = {
    'email': '',
    'password': '',
  };
  bool _isLoading = false;
  AuthMode _authMode = AuthMode.login;

  bool _isLogin() => _authMode == AuthMode.login;
  bool _isSignup() => _authMode == AuthMode.signup;

  void _switchAuthMode() {
    setState(() {
      if (_isLogin()) {
        _authMode = AuthMode.signup;
      } else {
        _authMode = AuthMode.login;
      }
    });
  }

  void _showErrorDialog(String msg) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Ocorreu um Erro'),
        content: Text(msg),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Fechar'),
          )
        ],
      ),
    );
  }

  Future<void> _submit() async {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (!isValid) {
      return;
    }

    setState(() => _isLoading = true);

    _formKey.currentState?.save();
    Auth auth = Provider.of(
      context,
      listen: false,
    );

    try {
      if (_isLogin()) {
        //login
        await auth.login(
          _authData['email']!,
          _authData['password']!,
        );
      } else {
        //signup
        await auth.signup(
          _authData['email']!,
          _authData['password']!,
        );
      }
    } on AuthException catch (error) {
      _showErrorDialog(error.toString());
    } catch (error) {
      _showErrorDialog('Ocorreu um erro inesperado!');
    }

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 570,
        width: deviceSize.width * 0.9,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                'Minha Loja',
                style: TextStyle(
                  fontSize: 36,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Text(_isLogin()
                  ? 'Bem-vindo de volta! Faça o login para continuar.'
                  : 'Preencha todos os campos corretamente.'),
              Container(
                width: deviceSize.width * 0.4,
                margin: const EdgeInsets.only(
                  bottom: 6,
                  top: 12,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('E-mail ou nome do usuário'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Insira aqui seu e-mail ou nome de usuário',
                  labelStyle: TextStyle(color: Colors.grey[800]),
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.grey[600]!),
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.purple,
                      width: 1.0,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.error,
                      width: 1.0,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.error,
                      width: 1.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                onSaved: (email) => _authData['email'] = email ?? '',
                validator: (value) {
                  final email = value ?? '';
                  if (email.trim().isEmpty || !email.contains('@')) {
                    return 'Informe um e-mail válido.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Senha'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Insira aqui a sua senha',
                  labelStyle: TextStyle(color: Colors.grey[800]),
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.grey[600]!),
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.purple,
                      width: 1.0,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.error,
                      width: 1.0,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.error,
                      width: 1.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                controller: _passwordcontroller,
                onSaved: (password) => _authData['password'] = password ?? '',
                validator: (value) {
                  final password = value ?? '';
                  if (password.isEmpty || password.length < 5) {
                    return 'Informe uma senha válida';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              if (_isSignup())
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Confirmar senha'),
                ),
              if (_isSignup())
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Confirme a sua senha',
                    labelStyle: TextStyle(color: Colors.grey[800]),
                    // enabledBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.grey[600]!),
                    // ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.purple,
                        width: 1.0,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.error,
                        width: 1.0,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.error,
                        width: 2.0,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: _isLogin()
                      ? null
                      : (value) {
                          final password = value ?? '';
                          if (password != _passwordcontroller.text) {
                            return 'Senhas informadas não conferem.';
                          }
                          return null;
                        },
                ),
              const SizedBox(height: 20),
              if (_isLoading)
                const CircularProgressIndicator()
              else
                ElevatedButton(
                  onPressed: _submit,
                  child: Text(
                    _authMode == AuthMode.login ? 'ENTRAR' : 'REGISTRAR',
                  ),
                ),
              const Spacer(),
              TextButton(
                onPressed: _switchAuthMode,
                child: Text(
                  _isLogin() ? 'DESEJA REGISTRAR?' : 'JÁ POSSUI CONTA?',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
