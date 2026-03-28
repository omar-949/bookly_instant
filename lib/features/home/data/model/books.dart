class BookModel {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final LayerInfo? layerInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.layerInfo,
    this.saleInfo,
    this.accessInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json['kind'],
      id: json['id'],
      etag: json['etag'],
      selfLink: json['selfLink'],
      volumeInfo: json['volumeInfo'] != null
          ? VolumeInfo.fromJson(json['volumeInfo'])
          : null,
      layerInfo: json['layerInfo'] != null
          ? LayerInfo.fromJson(json['layerInfo'])
          : null,
      saleInfo: json['saleInfo'] != null
          ? SaleInfo.fromJson(json['saleInfo'])
          : null,
      accessInfo: json['accessInfo'] != null
          ? AccessInfo.fromJson(json['accessInfo'])
          : null,
    );
  }
}

class VolumeInfo {
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final int? printedPageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printedPageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      authors: (json['authors'] as List?)?.map((e) => e.toString()).toList(),
      publisher: json['publisher'],
      publishedDate: json['publishedDate'],
      description: json['description'],
      industryIdentifiers: (json['industryIdentifiers'] as List?)
          ?.map((e) => IndustryIdentifier.fromJson(e))
          .toList(),
      readingModes: json['readingModes'] != null
          ? ReadingModes.fromJson(json['readingModes'])
          : null,
      pageCount: json['pageCount'],
      printedPageCount: json['printedPageCount'],
      printType: json['printType'],
      categories:
      (json['categories'] as List?)?.map((e) => e.toString()).toList(),
      maturityRating: json['maturityRating'],
      allowAnonLogging: json['allowAnonLogging'],
      contentVersion: json['contentVersion'],
      panelizationSummary: json['panelizationSummary'] != null
          ? PanelizationSummary.fromJson(json['panelizationSummary'])
          : null,
      imageLinks: json['imageLinks'] != null
          ? ImageLinks.fromJson(json['imageLinks'])
          : null,
      language: json['language'],
      previewLink: json['previewLink'],
      infoLink: json['infoLink'],
      canonicalVolumeLink: json['canonicalVolumeLink'],
    );
  }
}

class IndustryIdentifier {
  final String? type;
  final String? identifier;

  IndustryIdentifier({
    this.type,
    this.identifier,
  });

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'],
      identifier: json['identifier'],
    );
  }
}

class ReadingModes {
  final bool? text;
  final bool? image;

  ReadingModes({
    this.text,
    this.image,
  });

  factory ReadingModes.fromJson(Map<String, dynamic> json) {
    return ReadingModes(
      text: json['text'],
      image: json['image'],
    );
  }
}

class PanelizationSummary {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) {
    return PanelizationSummary(
      containsEpubBubbles: json['containsEpubBubbles'],
      containsImageBubbles: json['containsImageBubbles'],
    );
  }
}

class ImageLinks {
  final String? smallThumbnail;
  final String? thumbnail;
  final String? small;
  final String? medium;
  final String? large;
  final String? extraLarge;

  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
    this.extraLarge,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'],
      thumbnail: json['thumbnail'],
      small: json['small'],
      medium: json['medium'],
      large: json['large'],
      extraLarge: json['extraLarge'],
    );
  }
}

class LayerInfo {
  final List<Layer>? layers;

  LayerInfo({
    this.layers,
  });

  factory LayerInfo.fromJson(Map<String, dynamic> json) {
    return LayerInfo(
      layers: (json['layers'] as List?)
          ?.map((e) => Layer.fromJson(e))
          .toList(),
    );
  }
}

class Layer {
  final String? layerId;
  final String? volumeAnnotationsVersion;

  Layer({
    this.layerId,
    this.volumeAnnotationsVersion,
  });

  factory Layer.fromJson(Map<String, dynamic> json) {
    return Layer(
      layerId: json['layerId'],
      volumeAnnotationsVersion: json['volumeAnnotationsVersion'],
    );
  }
}

class SaleInfo {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final Price? listPrice;
  final Price? retailPrice;
  final String? buyLink;
  final List<Offer>? offers;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'],
      saleability: json['saleability'],
      isEbook: json['isEbook'],
      listPrice: json['listPrice'] != null
          ? Price.fromJson(json['listPrice'])
          : null,
      retailPrice: json['retailPrice'] != null
          ? Price.fromJson(json['retailPrice'])
          : null,
      buyLink: json['buyLink'],
      offers: (json['offers'] as List?)?.map((e) => Offer.fromJson(e)).toList(),
    );
  }
}

class Price {
  final num? amount;
  final String? currencyCode;

  Price({
    this.amount,
    this.currencyCode,
  });

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(
      amount: json['amount'],
      currencyCode: json['currencyCode'],
    );
  }
}

class Offer {
  final int? finskyOfferType;
  final MicroPrice? listPrice;
  final MicroPrice? retailPrice;

  Offer({
    this.finskyOfferType,
    this.listPrice,
    this.retailPrice,
  });

  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(
      finskyOfferType: json['finskyOfferType'],
      listPrice: json['listPrice'] != null
          ? MicroPrice.fromJson(json['listPrice'])
          : null,
      retailPrice: json['retailPrice'] != null
          ? MicroPrice.fromJson(json['retailPrice'])
          : null,
    );
  }
}

class MicroPrice {
  final int? amountInMicros;
  final String? currencyCode;

  MicroPrice({
    this.amountInMicros,
    this.currencyCode,
  });

  factory MicroPrice.fromJson(Map<String, dynamic> json) {
    return MicroPrice(
      amountInMicros: json['amountInMicros'],
      currencyCode: json['currencyCode'],
    );
  }
}

class AccessInfo {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final FileAvailability? epub;
  final FileAvailability? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      country: json['country'],
      viewability: json['viewability'],
      embeddable: json['embeddable'],
      publicDomain: json['publicDomain'],
      textToSpeechPermission: json['textToSpeechPermission'],
      epub: json['epub'] != null
          ? FileAvailability.fromJson(json['epub'])
          : null,
      pdf: json['pdf'] != null
          ? FileAvailability.fromJson(json['pdf'])
          : null,
      webReaderLink: json['webReaderLink'],
      accessViewStatus: json['accessViewStatus'],
      quoteSharingAllowed: json['quoteSharingAllowed'],
    );
  }
}

class FileAvailability {
  final bool? isAvailable;
  final String? acsTokenLink;

  FileAvailability({
    this.isAvailable,
    this.acsTokenLink,
  });

  factory FileAvailability.fromJson(Map<String, dynamic> json) {
    return FileAvailability(
      isAvailable: json['isAvailable'],
      acsTokenLink: json['acsTokenLink'],
    );
  }
}
