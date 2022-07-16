// ignore_for_file: public_member_api_docs, sort_constructors_first, annotate_overrides, overridden_fields
import '../entities/entities.dart';

class CountryModel extends CountryEntity {
  final String name;
  final String country;
  final String subcountry;
  final int geonameid;

  const CountryModel({
    required this.name,
    required this.country,
    required this.subcountry,
    required this.geonameid,
  }) : super(
          city: name,
          country: country,
          state: subcountry,
          id: geonameid,
        );

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        name: json['name'],
        country: json['country'],
        subcountry: json['subcountry'],
        geonameid: json['geonameid'],
      );

  factory CountryModel.fromEntity(CountryEntity entity) => CountryModel(
        name: entity.city,
        country: entity.country,
        subcountry: entity.state,
        geonameid: entity.id,
      );

  Map<String, dynamic> toJson() => {
        'name': city,
        'country': country,
        'subcountry': state,
        'geonameid': id,
      };

  CountryEntity toEntity() => CountryEntity(
        city: name,
        country: country,
        state: subcountry,
        id: geonameid,
      );
}
