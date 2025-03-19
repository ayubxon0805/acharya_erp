import 'package:intl/intl.dart';

import '../../core/router/core_exports.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<Map<String, dynamic>> notifications = [
    {
      "title": "Acharya University Celebrates Its Anniversary",
      "description":
          "Acharya University marked its anniversary on October 4, 2024, celebrating a milestone year.",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.TwqyMbe7WaOsGCiva4iqcwHaHa&pid=Api",
      "time": DateTime(2024, 10, 4),
    },
    {
      "title": "Women’s Week 2024 Event",
      "description":
          "A special week was organized at the university to celebrate the role and achievements of women.",
      "image":
          "https://tse1.mm.bing.net/th?id=OIP.7l5GNBETMt7n8MGm9jg05QHaEK&pid=Api",
      "time": DateTime(2024, 3, 8),
    },
    {
      "title": "Professor Iminov’s Visit",
      "description":
          "The university welcomed Professor Iminov to discuss innovations and strengthen academic collaborations.",
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.HYqpfePU_jnuzsaQr2pHxgHaDs&pid=Api",
      "time": DateTime(2024, 9, 15),
    },
    {
      "title": "New Student Intake",
      "description":
          "The university has welcomed a new batch of students, marking the beginning of their academic journey.",
      "image":
          "https://tse2.mm.bing.net/th?id=OIP.kFqWKt0Apd5VlvD8xKonEgHaEK&pid=Api",
      "time": DateTime(2024, 8, 1),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          "All News",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: AppColors.mainColor,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                    child: Image.network(
                      notifications[index]["image"]!,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notifications[index]["title"]!,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          notifications[index]["description"]!,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          DateFormat(
                            'MMM d, yyyy',
                          ).format(notifications[index]["time"]),
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
