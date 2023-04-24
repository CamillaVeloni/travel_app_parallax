import '../models/travel_model.dart';

final List<TravelModel> TRAVEL_DATA = [
  TravelModel(
    id: 1,
    name: 'Praga',
    country: 'República Tcheca',
    imageUrl: 'https://images.unsplash.com/photo-1600623471616-8c1966c91ff6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
  ),
  TravelModel(
    id: 2,
    name: 'Londres',
    country: 'Inglaterra',
    imageUrl: 'https://images.unsplash.com/photo-1529655683826-aba9b3e77383?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
  ),
  TravelModel(
    id: 3,
    name: 'Nova Iorque',
    country: 'USA',
    imageUrl: 'https://images.unsplash.com/photo-1485871981521-5b1fd3805eee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
  ),
];

final List<Map> RECOMMENDATIONS_DATA = [
  {
    "id": 1,
    "name": "Hong Kong",
    "start_price": 2422,
    "image_url": "https://images.unsplash.com/photo-1518599807935-37015b9cefcb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80"
  },
  {
    "id": 2,
    "name": "Bangcoc",
    "start_price": 3079,
    "image_url": "https://images.unsplash.com/photo-1508009603885-50cf7c579365?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80"
  },
  {
    "id": 3,
    "name": "Miami",
    "start_price": 2239,
    "image_url": "https://images.unsplash.com/photo-1617170788758-725d9475a32b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"
  },
];