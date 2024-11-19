import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  final String title;
  final String? selectedStation;

  StationListPage(
      {super.key, required this.title, required this.selectedStation});

  final List<String> stations = [
    '수서',
    '동탄',
    '평택지제',
    '천안아산',
    '오송',
    '대전',
    '김천구미',
    '동대구',
    '경주',
    '울산',
    '부산',
    ''
  ];

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String title = args['title'];
    final String otherSelectedStation = args['selectedStation'];

    final filteredStations = stations
        .where((station) =>
            station != selectedStation && station != otherSelectedStation)
        .toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
          ),
        ),
        body: ListView.separated(
            itemCount: filteredStations.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 50,
                child: ListTile(
                  title: Text(filteredStations[index]),
                  onTap: () {
                    Navigator.pop(
                        context, filteredStations[index]); // 선택된 역 정보 반환
                  },
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.grey[300],
                height: 1,
              );
            }));
  }
}
