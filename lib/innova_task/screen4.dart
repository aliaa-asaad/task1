import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  String? leaveType;
  DateTime? startDate;
  TextEditingController daysController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'اجازة جديدة',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),foregroundColor: Colors.white,
        elevation: 2,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'نوع الإجازة',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              hint: const Text('اختر من القائمة'),
              value: leaveType,
              items: ['إجازة سنوية', 'إجازة مرضية', 'إجازة أخرى']
                  .map((String type) => DropdownMenuItem<String>(
                        value: type,
                        child: Text(type),
                      ))
                  .toList(),
              onChanged: (String? newValue) {
                setState(() {
                  leaveType = newValue;
                });
              },
            ),
            const SizedBox(height: 16),
            const Text('بداية الإجازة',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (pickedDate != null) {
                  setState(() {
                    startDate = pickedDate;
                  });
                }
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      startDate == null
                          ? 'من: يوم/شهر/سنة'
                          : '${startDate!.day}/${startDate!.month}/${startDate!.year}',
                      style:  TextStyle(color: Colors.grey.shade700),
                    ),
                    const Icon(Icons.calendar_today),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text('عدد الأيام',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
            const SizedBox(height: 8),
            TextFormField(
              controller: daysController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'ادخل عدد الأيام',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const Spacer(),
            InkWell(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient:  LinearGradient(
                    begin:Alignment.bottomLeft ,
                    end: Alignment.topRight,
                    colors: [Colors.purple, Colors.blue.shade900],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'تأكيد',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
