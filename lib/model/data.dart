import 'card.images.dart';

class Data {
  int id;
  String name;
  String type;
  String desc;
  int atk;
  int def;
  int level;
  String race;
  List<CardImages> cardImages;

  Data({
    this.id,
    this.name,
    this.type,
    this.desc,
    this.atk,
    this.def,
    this.level,
    this.race,
    this.cardImages,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    desc = json['desc'];
    atk = json['atk'];
    def = json['def'];
    level = json['level'];
    race = json['race'];
    if (json['card_images'] != null) {
      cardImages = <CardImages>[];
      json['card_images'].forEach((v) {
        cardImages.add(new CardImages.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    data['desc'] = this.desc;
    data['atk'] = this.atk;
    data['def'] = this.def;
    data['level'] = this.level;
    data['race'] = this.race;
    if (this.cardImages != null) {
      data['card_images'] = this.cardImages.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
