import 'package:flutter_goffer/domain/travel/travel.dart';

const TravelCourse travel = TravelCourse(
    date: "", time: "", id: "", x: "", y: "", placeName: "", research: []);

const TravelResearch travelResearch = TravelResearch(id: "", answer: []);

List<Map<String, String>> representativeTourist = [
  {
    "id": "9113903",
    "x": "126.970606917394",
    "y": "37.5546788388674",
    "placeName": "서울역",
    "showName": "서울",
    "imgString": "assets/images/city/city_seoul.jpeg",
  },
  {
    "id": "8329752",
    "x": "129.04141349917356",
    "y": "35.115101167689716",
    "placeName": "부산역",
    "showName": "부산",
    "imgString": "assets/images/city/city_busan.jpg",
  },
  {
    "id": "8632588",
    "x": "128.899627553491",
    "y": "37.7645235587621",
    "placeName": "강릉역",
    "showName": "강릉",
    "imgString": "assets/images/city/city_gangreung.jpg",
  },
  {
    "id": "10652213",
    "x": "127.748914097094",
    "y": "34.7531100237214",
    "placeName": "여수엑스포역",
    "showName": "여수",
    "imgString": "assets/images/city/city_yeosu.jpg",
  },
  {
    "id": "8680886",
    "x": "129.217932133353",
    "y": "35.8444405820256",
    "placeName": "경주역",
    "showName": "경주",
    "imgString": "assets/images/city/city_kyungju.jpg",
  },
  {
    "id": "21160515",
    "x": "126.616821060576",
    "y": "37.4761676094062",
    "placeName": "인천역 1호선",
    "showName": "인천",
    "imgString": "assets/images/city/city_songdo.jpg",
  },
  {
    "id": "21367546",
    "x": "128.596277196438",
    "y": "35.8759487657024",
    "placeName": "대구역",
    "showName": "대구",
    "imgString": "assets/images/city/city_daegu.jpg",
  },
  {
    "id": "8560618",
    "x": "128.43314919575843",
    "y": "34.85444392332688",
    "placeName": "통영시청",
    "showName": "통영",
    "imgString": "assets/images/city/city_tongyoung.jpg",
  },
  {
    "id": "18514310",
    "x": "126.54587355630036",
    "y": "33.379777816446165",
    "placeName": "제주도",
    "showName": "제주도",
    "imgString": "assets/images/city/city_jeju.png",
  },
];
