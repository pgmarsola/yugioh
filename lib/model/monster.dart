class Monster {
  List<Data> data;

  Monster({this.data});

  Monster.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  String name;
  String type;
  String desc;
  int atk;
  int def;
  int level;
  String race;
  String attribute;
  String nameEn;
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
    this.attribute,
    this.nameEn,
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
    attribute = json['attribute'];
    nameEn = json['name_en'];
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
    data['attribute'] = this.attribute;
    data['name_en'] = this.nameEn;
    if (this.cardImages != null) {
      data['card_images'] = this.cardImages.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CardImages {
  int id;
  String imageUrl;
  String imageUrlSmall;

  CardImages({this.id, this.imageUrl, this.imageUrlSmall});

  CardImages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['image_url'];
    imageUrlSmall = json['image_url_small'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image_url'] = this.imageUrl;
    data['image_url_small'] = this.imageUrlSmall;
    return data;
  }
}
