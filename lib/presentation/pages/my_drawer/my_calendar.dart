import '../../../core/router/core_exports.dart';

class MyCalendarPage extends StatefulWidget {
  const MyCalendarPage({super.key});

  @override
  State<MyCalendarPage> createState() => _MyCalendarPageState();
}

class _MyCalendarPageState extends State<MyCalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // Sample course data
  final List<Map<String, dynamic>> _courses = [
    {
      'name': 'Computer Science',
      'category': 'Technical',
      'credits': 4,
      'days': ['Monday', 'Wednesday', 'Friday'],
      'time': '9:00 AM - 11:00 AM',
    },
    {
      'name': 'Mathematics',
      'category': 'Core',
      'credits': 3,
      'days': ['Tuesday', 'Thursday'],
      'time': '1:00 PM - 3:00 PM',
    },
    {
      'name': 'Scientist',
      'category': 'Core',
      'credits': 0,
      'days': ['Monday', 'Saturday'],
      'time': '11:00 PM - 13:00 PM',
    },
    {
      'name': 'Biology',
      'category': 'Core',
      'credits': 2,
      'days': ['Wednesday', 'Friday'],
      'time': '1:00 PM - 3:00 PM',
    },
    {
      'name': 'English Language',
      'category': 'Core',
      'credits': 1,
      'days': ['Tuesday', 'Thursday'],
      'time': '3:00 PM - 6:00 PM',
    },
    // Add more courses as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white,
        title: const ImageIcon(
          AssetImage('assets/icons/applogo.png'),
          size: 180,
          color: Color.fromARGB(255, 200, 56, 225),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Calendar
          TableCalendar(
            firstDay: DateTime(2020),
            lastDay: DateTime(2030),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
            calendarStyle: CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Course List
          Expanded(
            child: ListView.builder(
              itemCount: _courses.length,
              itemBuilder: (context, index) {
                final course = _courses[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  elevation: 2,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Text(
                        course['credits'].toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(
                      course['name'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Category: ${course['category']}'),
                        Text('Days: ${course['days'].join(', ')}'),
                        Text('Time: ${course['time']}'),
                      ],
                    ),
                    trailing: const Icon(Icons.more_vert),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement add course functionality
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
