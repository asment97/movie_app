import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/core/providers/auth_provider.dart';

class AccountPage extends HookConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ref.watch(tokenProvider).isLoggedIn
            ? const Account()
            : const Login(),
      ),
    );
  }
}

class Account extends ConsumerWidget {
  const Account({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          "Account",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            ref.read(tokenProvider).logout();
          },
          child: const Text(
            "Logout",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class Login extends HookConsumerWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useState(GlobalKey<FormState>());
    final isObscure = useState<bool>(true);
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Form(
      key: formKey.value,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Login to Movie App",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 50),
          TextFormField(
            controller: usernameController,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              hintText: "Username",
              hintStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your username";
              }

              return null;
            },
          ),
          const SizedBox(height: 30),
          TextFormField(
            controller: passwordController,
            obscureText: isObscure.value,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: const TextStyle(color: Colors.white),
              suffixIcon: Material(
                color: Colors.transparent,
                child: IconButton(
                  iconSize: 20,
                  onPressed: () {
                    isObscure.value = !isObscure.value;
                  },
                  icon: isObscure.value
                      ? const Icon(
                          Icons.visibility_outlined,
                          size: 24,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.visibility_off_outlined,
                          size: 24,
                          color: Colors.white,
                        ),
                  color: Colors.white,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your password";
              }

              return null;
            },
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () async {
              if (formKey.value.currentState!.validate()) {
                try {
                  await ref
                      .read(tokenProvider.notifier)
                      .login(usernameController.text, passwordController.text);
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        e.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }
              }
            },
            child: const Text(
              "Login",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
