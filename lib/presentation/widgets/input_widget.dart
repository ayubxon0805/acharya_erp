import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final String title;
  final Icon icon;
  final bool? isVisible; // Nullable, ishlatilmasa oddiy text bo'ladi
  final String? labelText;
  final IconButton? suffixIcon;
  // final bool isEmpty;


  const InputWidget({
    super.key,
    required this.title,
    required this.icon,
    this.isVisible,
    this.labelText,
    this.suffixIcon,
    //  required this.isEmpty
  });

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.isVisible ?? false; 
  }
  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: inputController,
      obscureText: widget.isVisible == true ? _isObscured : false,
      decoration: InputDecoration(
        hintText: widget.title,
        label: Text(
          widget.labelText ?? "",
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        prefixIcon: widget.icon,
        prefixIconColor: const Color.fromARGB(255, 206, 126, 7),
        suffixIcon: widget.isVisible == true
            ? IconButton(
                icon: Icon(
                    _isObscured ? Icons.visibility_off : Icons.visibility),
                color: Colors.orange,
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
            : widget.suffixIcon,
        suffixIconColor: Colors.orange,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
