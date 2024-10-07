import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  String? groupValue;
  bool readOnly = false;
  @override
  Widget build(BuildContext context) {
    final TextEditingController minController = TextEditingController();
    final TextEditingController maxController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Price',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              CustomRadioListTile(
                value: 'Free',
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                    readOnly = value == 'Free';
                  });
                },
              ),
              CustomRadioListTile(
                value: 'Under \$25',
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                    readOnly = value == 'Under \$25';
                  });
                },
              ),
              CustomRadioListTile(
                value: '\$25-\$50',
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                    readOnly = value == '\$25-\$50';
                  });
                },
              ),
              CustomRadioListTile(
                groupValue: groupValue,
                value: '\$50-\$100',
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                    readOnly = value == '\$50-\$100';
                  });
                },
              ),
              CustomRadioListTile(
                value: '\$100-\$200',
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                    readOnly = value == '\$100-\$200';
                  });
                },
              ),
              CustomRadioListTile(
                value: '\$200-\$500',
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                    readOnly = value == '\$200-\$500';
                  });
                },
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      readOnly: readOnly,
                      controller: minController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: '\$ Min',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      readOnly: readOnly,
                      controller: maxController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: '\$ Max',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRadioListTile extends StatelessWidget {
  final String value;
  final Function(String?)? onChanged;
  String? groupValue;

  CustomRadioListTile({
    super.key,
    required this.value,
    required this.onChanged,
    this.groupValue,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(value),
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}
