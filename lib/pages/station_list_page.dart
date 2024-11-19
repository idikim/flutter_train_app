import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  final String title;

  StationListPage({super.key, required this.title});

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
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
          ),
        ),
        body: ListView.separated(
            itemCount: stations.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 50,
                child: ListTile(
                  title: Text(stations[index]),
                  onTap: () {
                    Navigator.pop(context, stations[index]); // 선택된 역 정보 반환
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
