class HomepageModel {
  HomepageModel({
    this.seoSetting,
    this.sliderVisibilty,
    this.sliders,
    this.sliderBannerOne,
    this.sliderBannerTwo,
    this.serviceVisibilty,
    this.services,
    this.popularCategorySidebarBanner,
    this.popularCategoryVisibilty,
    this.popularCategories,
    this.popularCategoryProducts,
    this.brandVisibility,
    this.brands,
    this.flashSale,
    this.flashSaleSidebarBanner,
    this.topRatedVisibility,
    this.topRatedProducts,
    this.sellerVisibility,
    this.sellers,
    this.twoColumnBannerOne,
    this.twoColumnBannerTwo,
    this.featuredProductVisibility,
    this.featuredCategorySidebarBanner,
    this.featuredCategories,
    this.featuredCategoryProducts,
    this.singleBannerOne,
    this.newArrivalProductVisibility,
    this.newArrivalProducts,
    this.bestProductVisibility,
    this.singleBannerTwo,
    this.bestProducts,
    this.subscriptionBanner,
  });

  HomepageModel.fromJson(dynamic json) {
    seoSetting = json['seoSetting'] != null
        ? SeoSetting.fromJson(json['seoSetting'])
        : null;
    sliderVisibilty = json['sliderVisibilty'];
    if (json['sliders'] != null) {
      sliders = [];
      json['sliders'].forEach((v) {
        sliders?.add(Sliders.fromJson(v));
      });
    }
    sliderBannerOne = json['sliderBannerOne'] != null
        ? SliderBannerOne.fromJson(json['sliderBannerOne'])
        : null;
    sliderBannerTwo = json['sliderBannerTwo'] != null
        ? SliderBannerTwo.fromJson(json['sliderBannerTwo'])
        : null;
    serviceVisibilty = json['serviceVisibilty'];
    if (json['services'] != null) {
      services = [];
      json['services'].forEach((v) {
        services?.add(Services.fromJson(v));
      });
    }
    popularCategorySidebarBanner = json['popularCategorySidebarBanner'] != null
        ? PopularCategorySidebarBanner.fromJson(
            json['popularCategorySidebarBanner'])
        : null;
    popularCategoryVisibilty = json['popularCategoryVisibilty'];
    if (json['popularCategories'] != null) {
      popularCategories = [];
      json['popularCategories'].forEach((v) {
        popularCategories?.add(PopularCategories.fromJson(v));
      });
    }
    if (json['popularCategoryProducts'] != null) {
      popularCategoryProducts = [];
      json['popularCategoryProducts'].forEach((v) {
        popularCategoryProducts?.add(PopularCategoryProducts.fromJson(v));
      });
    }
    brandVisibility = json['brandVisibility'];
    if (json['brands'] != null) {
      brands = [];
      json['brands'].forEach((v) {
        brands?.add(Brands.fromJson(v));
      });
    }
    flashSale = json['flashSale'] != null
        ? FlashSale.fromJson(json['flashSale'])
        : null;
    flashSaleSidebarBanner = json['flashSaleSidebarBanner'] != null
        ? FlashSaleSidebarBanner.fromJson(json['flashSaleSidebarBanner'])
        : null;
    topRatedVisibility = json['topRatedVisibility'];
    if (json['topRatedProducts'] != null) {
      topRatedProducts = [];
      json['topRatedProducts'].forEach((v) {
        topRatedProducts?.add(TopRatedProducts.fromJson(v));
      });
    }
    sellerVisibility = json['sellerVisibility'];
    if (json['sellers'] != null) {
      sellers = [];
      json['sellers'].forEach((v) {
        sellers?.add(Sellers.fromJson(v));
      });
    }
    twoColumnBannerOne = json['twoColumnBannerOne'] != null
        ? TwoColumnBannerOne.fromJson(json['twoColumnBannerOne'])
        : null;
    twoColumnBannerTwo = json['twoColumnBannerTwo'] != null
        ? TwoColumnBannerTwo.fromJson(json['twoColumnBannerTwo'])
        : null;
    featuredProductVisibility = json['featuredProductVisibility'];
    featuredCategorySidebarBanner =
        json['featuredCategorySidebarBanner'] != null
            ? FeaturedCategorySidebarBanner.fromJson(
                json['featuredCategorySidebarBanner'])
            : null;
    if (json['featuredCategories'] != null) {
      featuredCategories = [];
      json['featuredCategories'].forEach((v) {
        featuredCategories?.add(FeaturedCategories.fromJson(v));
      });
    }
    if (json['featuredCategoryProducts'] != null) {
      featuredCategoryProducts = [];
      json['featuredCategoryProducts'].forEach((v) {
        featuredCategoryProducts?.add(FeaturedCategoryProducts.fromJson(v));
      });
    }
    singleBannerOne = json['singleBannerOne'] != null
        ? SingleBannerOne.fromJson(json['singleBannerOne'])
        : null;
    newArrivalProductVisibility = json['newArrivalProductVisibility'];
    if (json['newArrivalProducts'] != null) {
      newArrivalProducts = [];
      json['newArrivalProducts'].forEach((v) {
        newArrivalProducts?.add(NewArrivalProducts.fromJson(v));
      });
    }
    bestProductVisibility = json['bestProductVisibility'];
    singleBannerTwo = json['singleBannerTwo'] != null
        ? SingleBannerTwo.fromJson(json['singleBannerTwo'])
        : null;
    if (json['bestProducts'] != null) {
      bestProducts = [];
      json['bestProducts'].forEach((v) {
        bestProducts?.add(BestProducts.fromJson(v));
      });
    }
    subscriptionBanner = json['subscriptionBanner'] != null
        ? SubscriptionBanner.fromJson(json['subscriptionBanner'])
        : null;
  }

  SeoSetting? seoSetting;
  bool? sliderVisibilty;
  List<Sliders>? sliders;
  SliderBannerOne? sliderBannerOne;
  SliderBannerTwo? sliderBannerTwo;
  bool? serviceVisibilty;
  List<Services>? services;
  PopularCategorySidebarBanner? popularCategorySidebarBanner;
  bool? popularCategoryVisibilty;
  List<PopularCategories>? popularCategories;
  List<PopularCategoryProducts>? popularCategoryProducts;
  bool? brandVisibility;
  List<Brands>? brands;
  FlashSale? flashSale;
  FlashSaleSidebarBanner? flashSaleSidebarBanner;
  bool? topRatedVisibility;
  List<TopRatedProducts>? topRatedProducts;
  bool? sellerVisibility;
  List<Sellers>? sellers;
  TwoColumnBannerOne? twoColumnBannerOne;
  TwoColumnBannerTwo? twoColumnBannerTwo;
  bool? featuredProductVisibility;
  FeaturedCategorySidebarBanner? featuredCategorySidebarBanner;
  List<FeaturedCategories>? featuredCategories;
  List<FeaturedCategoryProducts>? featuredCategoryProducts;
  SingleBannerOne? singleBannerOne;
  bool? newArrivalProductVisibility;
  List<NewArrivalProducts>? newArrivalProducts;
  bool? bestProductVisibility;
  SingleBannerTwo? singleBannerTwo;
  List<BestProducts>? bestProducts;
  SubscriptionBanner? subscriptionBanner;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (seoSetting != null) {
      map['seoSetting'] = seoSetting?.toJson();
    }
    map['sliderVisibilty'] = sliderVisibilty;
    if (sliders != null) {
      map['sliders'] = sliders?.map((v) => v.toJson()).toList();
    }
    if (sliderBannerOne != null) {
      map['sliderBannerOne'] = sliderBannerOne?.toJson();
    }
    if (sliderBannerTwo != null) {
      map['sliderBannerTwo'] = sliderBannerTwo?.toJson();
    }
    map['serviceVisibilty'] = serviceVisibilty;
    if (services != null) {
      map['services'] = services?.map((v) => v.toJson()).toList();
    }
    if (popularCategorySidebarBanner != null) {
      map['popularCategorySidebarBanner'] =
          popularCategorySidebarBanner?.toJson();
    }
    map['popularCategoryVisibilty'] = popularCategoryVisibilty;
    if (popularCategories != null) {
      map['popularCategories'] =
          popularCategories?.map((v) => v.toJson()).toList();
    }
    if (popularCategoryProducts != null) {
      map['popularCategoryProducts'] =
          popularCategoryProducts?.map((v) => v.toJson()).toList();
    }
    map['brandVisibility'] = brandVisibility;
    if (brands != null) {
      map['brands'] = brands?.map((v) => v.toJson()).toList();
    }
    if (flashSale != null) {
      map['flashSale'] = flashSale?.toJson();
    }
    if (flashSaleSidebarBanner != null) {
      map['flashSaleSidebarBanner'] = flashSaleSidebarBanner?.toJson();
    }
    map['topRatedVisibility'] = topRatedVisibility;
    if (topRatedProducts != null) {
      map['topRatedProducts'] =
          topRatedProducts?.map((v) => v.toJson()).toList();
    }
    map['sellerVisibility'] = sellerVisibility;
    if (sellers != null) {
      map['sellers'] = sellers?.map((v) => v.toJson()).toList();
    }
    if (twoColumnBannerOne != null) {
      map['twoColumnBannerOne'] = twoColumnBannerOne?.toJson();
    }
    if (twoColumnBannerTwo != null) {
      map['twoColumnBannerTwo'] = twoColumnBannerTwo?.toJson();
    }
    map['featuredProductVisibility'] = featuredProductVisibility;
    if (featuredCategorySidebarBanner != null) {
      map['featuredCategorySidebarBanner'] =
          featuredCategorySidebarBanner?.toJson();
    }
    if (featuredCategories != null) {
      map['featuredCategories'] =
          featuredCategories?.map((v) => v.toJson()).toList();
    }
    if (featuredCategoryProducts != null) {
      map['featuredCategoryProducts'] =
          featuredCategoryProducts?.map((v) => v.toJson()).toList();
    }
    if (singleBannerOne != null) {
      map['singleBannerOne'] = singleBannerOne?.toJson();
    }
    map['newArrivalProductVisibility'] = newArrivalProductVisibility;
    if (newArrivalProducts != null) {
      map['newArrivalProducts'] =
          newArrivalProducts?.map((v) => v.toJson()).toList();
    }
    map['bestProductVisibility'] = bestProductVisibility;
    if (singleBannerTwo != null) {
      map['singleBannerTwo'] = singleBannerTwo?.toJson();
    }
    if (bestProducts != null) {
      map['bestProducts'] = bestProducts?.map((v) => v.toJson()).toList();
    }
    if (subscriptionBanner != null) {
      map['subscriptionBanner'] = subscriptionBanner?.toJson();
    }
    return map;
  }
}

class SubscriptionBanner {
  SubscriptionBanner({
    this.id,
    this.image,
    this.bannerLocation,
    this.header,
    this.title,
  });

  SubscriptionBanner.fromJson(dynamic json) {
    id = json['id'];
    image = json['image'];
    bannerLocation = json['banner_location'];
    header = json['header'];
    title = json['title'];
  }

  int? id;
  String? image;
  String? bannerLocation;
  String? header;
  String? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image'] = image;
    map['banner_location'] = bannerLocation;
    map['header'] = header;
    map['title'] = title;
    return map;
  }
}

class BestProducts {
  BestProducts({
    this.id,
    this.name,
    this.shortName,
    this.slug,
    this.thumbImage,
    this.qty,
    this.soldQty,
    this.price,
    this.offerPrice,
    this.isUndefine,
    this.isFeatured,
    this.newProduct,
    this.isTop,
    this.isBest,
    this.categoryId,
    this.subCategoryId,
    this.childCategoryId,
    this.brandId,
    this.averageRating,
    this.activeVariants,
  });

  BestProducts.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    shortName = json['short_name'];
    slug = json['slug'];
    thumbImage = json['thumb_image'];
    qty = json['qty'];
    soldQty = json['sold_qty'];
    price = json['price'];
    offerPrice = json['offer_price'];
    isUndefine = json['is_undefine'];
    isFeatured = json['is_featured'];
    newProduct = json['new_product'];
    isTop = json['is_top'];
    isBest = json['is_best'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    childCategoryId = json['child_category_id'];
    brandId = json['brand_id'];
    averageRating = json['averageRating'];
    /*if (json['active_variants'] != null) {
      activeVariants = [];
      json['active_variants'].forEach((v) {
        activeVariants?.add(Dynamic.fromJson(v));
      });
    }*/
  }

  int? id;
  String? name;
  String? shortName;
  String? slug;
  String? thumbImage;
  String? qty;
  String? soldQty;
  String? price;
  String? offerPrice;
  String? isUndefine;
  String? isFeatured;
  String? newProduct;
  String? isTop;
  String? isBest;
  String? categoryId;
  String? subCategoryId;
  String? childCategoryId;
  String? brandId;
  String? averageRating;
  List<dynamic>? activeVariants;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['short_name'] = shortName;
    map['slug'] = slug;
    map['thumb_image'] = thumbImage;
    map['qty'] = qty;
    map['sold_qty'] = soldQty;
    map['price'] = price;
    map['offer_price'] = offerPrice;
    map['is_undefine'] = isUndefine;
    map['is_featured'] = isFeatured;
    map['new_product'] = newProduct;
    map['is_top'] = isTop;
    map['is_best'] = isBest;
    map['category_id'] = categoryId;
    map['sub_category_id'] = subCategoryId;
    map['child_category_id'] = childCategoryId;
    map['brand_id'] = brandId;
    map['averageRating'] = averageRating;
    if (activeVariants != null) {
      map['active_variants'] = activeVariants?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class SingleBannerTwo {
  SingleBannerTwo({
    this.id,
    this.link,
    this.image,
    this.bannerLocation,
    this.status,
  });

  SingleBannerTwo.fromJson(dynamic json) {
    id = json['id'];
    link = json['link'];
    image = json['image'];
    bannerLocation = json['banner_location'];
    status = json['status'];
  }

  int? id;
  String? link;
  String? image;
  String? bannerLocation;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link'] = link;
    map['image'] = image;
    map['banner_location'] = bannerLocation;
    map['status'] = status;
    return map;
  }
}

class NewArrivalProducts {
  NewArrivalProducts({
    this.id,
    this.name,
    this.shortName,
    this.slug,
    this.thumbImage,
    this.qty,
    this.soldQty,
    this.price,
    this.offerPrice,
    this.isUndefine,
    this.isFeatured,
    this.newProduct,
    this.isTop,
    this.isBest,
    this.categoryId,
    this.subCategoryId,
    this.childCategoryId,
    this.brandId,
    this.averageRating,
    this.activeVariants,
  });

  NewArrivalProducts.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    shortName = json['short_name'];
    slug = json['slug'];
    thumbImage = json['thumb_image'];
    qty = json['qty'];
    soldQty = json['sold_qty'];
    price = json['price'];
    offerPrice = json['offer_price'];
    isUndefine = json['is_undefine'];
    isFeatured = json['is_featured'];
    newProduct = json['new_product'];
    isTop = json['is_top'];
    isBest = json['is_best'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    childCategoryId = json['child_category_id'];
    brandId = json['brand_id'];
    averageRating = json['averageRating'];
    /*if (json['active_variants'] != null) {
      activeVariants = [];
      json['active_variants'].forEach((v) {
        activeVariants?.add(Dynamic.fromJson(v));
      });
    }*/
  }

  int? id;
  String? name;
  String? shortName;
  String? slug;
  String? thumbImage;
  String? qty;
  String? soldQty;
  String? price;
  String? offerPrice;
  String? isUndefine;
  String? isFeatured;
  String? newProduct;
  String? isTop;
  String? isBest;
  String? categoryId;
  String? subCategoryId;
  String? childCategoryId;
  String? brandId;
  String? averageRating;
  List<dynamic>? activeVariants;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['short_name'] = shortName;
    map['slug'] = slug;
    map['thumb_image'] = thumbImage;
    map['qty'] = qty;
    map['sold_qty'] = soldQty;
    map['price'] = price;
    map['offer_price'] = offerPrice;
    map['is_undefine'] = isUndefine;
    map['is_featured'] = isFeatured;
    map['new_product'] = newProduct;
    map['is_top'] = isTop;
    map['is_best'] = isBest;
    map['category_id'] = categoryId;
    map['sub_category_id'] = subCategoryId;
    map['child_category_id'] = childCategoryId;
    map['brand_id'] = brandId;
    map['averageRating'] = averageRating;
    if (activeVariants != null) {
      map['active_variants'] = activeVariants?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class SingleBannerOne {
  SingleBannerOne({
    this.id,
    this.link,
    this.image,
    this.bannerLocation,
    this.status,
  });

  SingleBannerOne.fromJson(dynamic json) {
    id = json['id'];
    link = json['link'];
    image = json['image'];
    bannerLocation = json['banner_location'];
    status = json['status'];
  }

  int? id;
  String? link;
  String? image;
  String? bannerLocation;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link'] = link;
    map['image'] = image;
    map['banner_location'] = bannerLocation;
    map['status'] = status;
    return map;
  }
}

class FeaturedCategoryProducts {
  FeaturedCategoryProducts({
    this.id,
    this.name,
    this.shortName,
    this.slug,
    this.thumbImage,
    this.qty,
    this.soldQty,
    this.price,
    this.offerPrice,
    this.isUndefine,
    this.isFeatured,
    this.newProduct,
    this.isTop,
    this.isBest,
    this.categoryId,
    this.subCategoryId,
    this.childCategoryId,
    this.brandId,
    this.averageRating,
    this.activeVariants,
  });

  FeaturedCategoryProducts.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    shortName = json['short_name'];
    slug = json['slug'];
    thumbImage = json['thumb_image'];
    qty = json['qty'];
    soldQty = json['sold_qty'];
    price = json['price'];
    offerPrice = json['offer_price'];
    isUndefine = json['is_undefine'];
    isFeatured = json['is_featured'];
    newProduct = json['new_product'];
    isTop = json['is_top'];
    isBest = json['is_best'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    childCategoryId = json['child_category_id'];
    brandId = json['brand_id'];
    averageRating = json['averageRating'];
    /*if (json['active_variants'] != null) {
      activeVariants = [];
      json['active_variants'].forEach((v) {
        activeVariants?.add(Dynamic.fromJson(v));
      });
    }*/
  }

  int? id;
  String? name;
  String? shortName;
  String? slug;
  String? thumbImage;
  String? qty;
  String? soldQty;
  String? price;
  dynamic offerPrice;
  String? isUndefine;
  String? isFeatured;
  String? newProduct;
  String? isTop;
  String? isBest;
  String? categoryId;
  String? subCategoryId;
  String? childCategoryId;
  String? brandId;
  String? averageRating;
  List<dynamic>? activeVariants;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['short_name'] = shortName;
    map['slug'] = slug;
    map['thumb_image'] = thumbImage;
    map['qty'] = qty;
    map['sold_qty'] = soldQty;
    map['price'] = price;
    map['offer_price'] = offerPrice;
    map['is_undefine'] = isUndefine;
    map['is_featured'] = isFeatured;
    map['new_product'] = newProduct;
    map['is_top'] = isTop;
    map['is_best'] = isBest;
    map['category_id'] = categoryId;
    map['sub_category_id'] = subCategoryId;
    map['child_category_id'] = childCategoryId;
    map['brand_id'] = brandId;
    map['averageRating'] = averageRating;
    if (activeVariants != null) {
      map['active_variants'] = activeVariants?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class FeaturedCategories {
  FeaturedCategories({
    this.id,
    this.categoryId,
    this.createdAt,
    this.updatedAt,
    this.category,
  });

  FeaturedCategories.fromJson(dynamic json) {
    id = json['id'];
    categoryId = json['category_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
  }

  int? id;
  String? categoryId;
  String? createdAt;
  String? updatedAt;
  Category? category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category_id'] = categoryId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (category != null) {
      map['category'] = category?.toJson();
    }
    return map;
  }
}

class Category {
  Category({
    this.id,
    this.name,
    this.slug,
    this.icon,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  Category.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    icon = json['icon'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  int? id;
  String? name;
  String? slug;
  String? icon;
  String? status;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['icon'] = icon;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}

class FeaturedCategorySidebarBanner {
  FeaturedCategorySidebarBanner({
    this.id,
    this.link,
    this.image,
    this.bannerLocation,
    this.status,
  });

  FeaturedCategorySidebarBanner.fromJson(dynamic json) {
    id = json['id'];
    link = json['link'];
    image = json['image'];
    bannerLocation = json['banner_location'];
    status = json['status'];
  }

  int? id;
  String? link;
  String? image;
  String? bannerLocation;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link'] = link;
    map['image'] = image;
    map['banner_location'] = bannerLocation;
    map['status'] = status;
    return map;
  }
}

class TwoColumnBannerTwo {
  TwoColumnBannerTwo({
    this.id,
    this.link,
    this.image,
    this.bannerLocation,
    this.status,
  });

  TwoColumnBannerTwo.fromJson(dynamic json) {
    id = json['id'];
    link = json['link'];
    image = json['image'];
    bannerLocation = json['banner_location'];
    status = json['status'];
  }

  int? id;
  String? link;
  String? image;
  String? bannerLocation;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link'] = link;
    map['image'] = image;
    map['banner_location'] = bannerLocation;
    map['status'] = status;
    return map;
  }
}

class TwoColumnBannerOne {
  TwoColumnBannerOne({
    this.id,
    this.link,
    this.image,
    this.bannerLocation,
    this.status,
  });

  TwoColumnBannerOne.fromJson(dynamic json) {
    id = json['id'];
    link = json['link'];
    image = json['image'];
    bannerLocation = json['banner_location'];
    status = json['status'];
  }

  int? id;
  String? link;
  String? image;
  String? bannerLocation;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link'] = link;
    map['image'] = image;
    map['banner_location'] = bannerLocation;
    map['status'] = status;
    return map;
  }
}

class Sellers {
  Sellers({
    this.id,
    this.logo,
    this.bannerImage,
    this.shopName,
    this.slug,
  });

  Sellers.fromJson(dynamic json) {
    id = json['id'];
    logo = json['logo'];
    bannerImage = json['banner_image'];
    shopName = json['shop_name'];
    slug = json['slug'];
  }

  int? id;
  String? logo;
  String? bannerImage;
  String? shopName;
  String? slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['logo'] = logo;
    map['banner_image'] = bannerImage;
    map['shop_name'] = shopName;
    map['slug'] = slug;
    return map;
  }
}

class TopRatedProducts {
  TopRatedProducts({
    this.id,
    this.name,
    this.shortName,
    this.slug,
    this.thumbImage,
    this.qty,
    this.soldQty,
    this.price,
    this.offerPrice,
    this.isUndefine,
    this.isFeatured,
    this.newProduct,
    this.isTop,
    this.isBest,
    this.categoryId,
    this.subCategoryId,
    this.childCategoryId,
    this.brandId,
    this.averageRating,
    this.activeVariants,
  });

  TopRatedProducts.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    shortName = json['short_name'];
    slug = json['slug'];
    thumbImage = json['thumb_image'];
    qty = json['qty'];
    soldQty = json['sold_qty'];
    price = json['price'];
    offerPrice = json['offer_price'];
    isUndefine = json['is_undefine'];
    isFeatured = json['is_featured'];
    newProduct = json['new_product'];
    isTop = json['is_top'];
    isBest = json['is_best'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    childCategoryId = json['child_category_id'];
    brandId = json['brand_id'];
    averageRating = json['averageRating'];
    /*if (json['active_variants'] != null) {
      activeVariants = [];
      json['active_variants'].forEach((v) {
        activeVariants?.add(Dynamic.fromJson(v));
      });
    }*/
  }

  int? id;
  String? name;
  String? shortName;
  String? slug;
  String? thumbImage;
  String? qty;
  String? soldQty;
  String? price;
  String? offerPrice;
  String? isUndefine;
  String? isFeatured;
  String? newProduct;
  String? isTop;
  String? isBest;
  String? categoryId;
  String? subCategoryId;
  String? childCategoryId;
  String? brandId;
  String? averageRating;
  List<dynamic>? activeVariants;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['short_name'] = shortName;
    map['slug'] = slug;
    map['thumb_image'] = thumbImage;
    map['qty'] = qty;
    map['sold_qty'] = soldQty;
    map['price'] = price;
    map['offer_price'] = offerPrice;
    map['is_undefine'] = isUndefine;
    map['is_featured'] = isFeatured;
    map['new_product'] = newProduct;
    map['is_top'] = isTop;
    map['is_best'] = isBest;
    map['category_id'] = categoryId;
    map['sub_category_id'] = subCategoryId;
    map['child_category_id'] = childCategoryId;
    map['brand_id'] = brandId;
    map['averageRating'] = averageRating;
    if (activeVariants != null) {
      map['active_variants'] = activeVariants?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class FlashSaleSidebarBanner {
  FlashSaleSidebarBanner({
    this.id,
    this.link,
    this.image,
    this.bannerLocation,
    this.status,
  });

  FlashSaleSidebarBanner.fromJson(dynamic json) {
    id = json['id'];
    link = json['link'];
    image = json['image'];
    bannerLocation = json['banner_location'];
    status = json['status'];
  }

  int? id;
  String? link;
  String? image;
  String? bannerLocation;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link'] = link;
    map['image'] = image;
    map['banner_location'] = bannerLocation;
    map['status'] = status;
    return map;
  }
}

class FlashSale {
  FlashSale({
    this.id,
    this.title,
    this.homepageImage,
    this.flashsalePageImage,
    this.endTime,
    this.offer,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  FlashSale.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    homepageImage = json['homepage_image'];
    flashsalePageImage = json['flashsale_page_image'];
    endTime = json['end_time'];
    offer = json['offer'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  int? id;
  String? title;
  String? homepageImage;
  String? flashsalePageImage;
  String? endTime;
  String? offer;
  String? status;
  dynamic createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['homepage_image'] = homepageImage;
    map['flashsale_page_image'] = flashsalePageImage;
    map['end_time'] = endTime;
    map['offer'] = offer;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}

class Brands {
  Brands({
    this.id,
    this.name,
    this.slug,
    this.logo,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  Brands.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    logo = json['logo'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  int? id;
  String? name;
  String? slug;
  String? logo;
  String? status;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['logo'] = logo;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}

class PopularCategoryProducts {
  PopularCategoryProducts({
    this.id,
    this.name,
    this.shortName,
    this.slug,
    this.thumbImage,
    this.qty,
    this.soldQty,
    this.price,
    this.offerPrice,
    this.isUndefine,
    this.isFeatured,
    this.newProduct,
    this.isTop,
    this.isBest,
    this.categoryId,
    this.subCategoryId,
    this.childCategoryId,
    this.brandId,
    this.averageRating,
    this.activeVariants,
  });

  PopularCategoryProducts.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    shortName = json['short_name'];
    slug = json['slug'];
    thumbImage = json['thumb_image'];
    qty = json['qty'];
    soldQty = json['sold_qty'];
    price = json['price'];
    offerPrice = json['offer_price'];
    isUndefine = json['is_undefine'];
    isFeatured = json['is_featured'];
    newProduct = json['new_product'];
    isTop = json['is_top'];
    isBest = json['is_best'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    childCategoryId = json['child_category_id'];
    brandId = json['brand_id'];
    averageRating = json['averageRating'];
    /*if (json['active_variants'] != null) {
      activeVariants = [];
      json['active_variants'].forEach((v) {
        activeVariants?.add(Dynamic.fromJson(v));
      });
    }*/
  }

  int? id;
  String? name;
  String? shortName;
  String? slug;
  String? thumbImage;
  String? qty;
  String? soldQty;
  String? price;
  dynamic offerPrice;
  String? isUndefine;
  String? isFeatured;
  String? newProduct;
  String? isTop;
  String? isBest;
  String? categoryId;
  String? subCategoryId;
  String? childCategoryId;
  String? brandId;
  String? averageRating;
  List<dynamic>? activeVariants;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['short_name'] = shortName;
    map['slug'] = slug;
    map['thumb_image'] = thumbImage;
    map['qty'] = qty;
    map['sold_qty'] = soldQty;
    map['price'] = price;
    map['offer_price'] = offerPrice;
    map['is_undefine'] = isUndefine;
    map['is_featured'] = isFeatured;
    map['new_product'] = newProduct;
    map['is_top'] = isTop;
    map['is_best'] = isBest;
    map['category_id'] = categoryId;
    map['sub_category_id'] = subCategoryId;
    map['child_category_id'] = childCategoryId;
    map['brand_id'] = brandId;
    map['averageRating'] = averageRating;
    if (activeVariants != null) {
      map['active_variants'] = activeVariants?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class PopularCategories {
  PopularCategories({
    this.id,
    this.categoryId,
    this.createdAt,
    this.updatedAt,
    this.category,
  });

  PopularCategories.fromJson(dynamic json) {
    id = json['id'];
    categoryId = json['category_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    category =
        json['category'] != null ? PCategory.fromJson(json['category']) : null;
  }

  int? id;
  String? categoryId;
  String? createdAt;
  String? updatedAt;
  PCategory? category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category_id'] = categoryId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (category != null) {
      map['category'] = category?.toJson();
    }
    return map;
  }
}

class PCategory {
  PCategory({
    this.id,
    this.name,
    this.slug,
    this.icon,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  PCategory.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    icon = json['icon'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  int? id;
  String? name;
  String? slug;
  String? icon;
  String? status;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['icon'] = icon;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}

class PopularCategorySidebarBanner {
  PopularCategorySidebarBanner({
    this.id,
    this.link,
    this.image,
    this.bannerLocation,
    this.status,
  });

  PopularCategorySidebarBanner.fromJson(dynamic json) {
    id = json['id'];
    link = json['link'];
    image = json['image'];
    bannerLocation = json['banner_location'];
    status = json['status'];
  }

  int? id;
  String? link;
  String? image;
  String? bannerLocation;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link'] = link;
    map['image'] = image;
    map['banner_location'] = bannerLocation;
    map['status'] = status;
    return map;
  }
}

class Services {
  Services({
    this.id,
    this.title,
    this.icon,
    this.description,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  Services.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    icon = json['icon'];
    description = json['description'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  int? id;
  String? title;
  String? icon;
  String? description;
  String? status;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['icon'] = icon;
    map['description'] = description;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}

class SliderBannerTwo {
  SliderBannerTwo({
    this.id,
    this.link,
    this.image,
    this.bannerLocation,
    this.status,
  });

  SliderBannerTwo.fromJson(dynamic json) {
    id = json['id'];
    link = json['link'];
    image = json['image'];
    bannerLocation = json['banner_location'];
    status = json['status'];
  }

  int? id;
  String? link;
  String? image;
  String? bannerLocation;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link'] = link;
    map['image'] = image;
    map['banner_location'] = bannerLocation;
    map['status'] = status;
    return map;
  }
}

class SliderBannerOne {
  SliderBannerOne({
    this.id,
    this.link,
    this.image,
    this.bannerLocation,
    this.status,
  });

  SliderBannerOne.fromJson(dynamic json) {
    id = json['id'];
    link = json['link'];
    image = json['image'];
    bannerLocation = json['banner_location'];
    status = json['status'];
  }

  int? id;
  String? link;
  String? image;
  String? bannerLocation;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link'] = link;
    map['image'] = image;
    map['banner_location'] = bannerLocation;
    map['status'] = status;
    return map;
  }
}

class Sliders {
  Sliders({
    this.id,
    this.label,
    this.title,
    this.description,
    this.image,
    this.link,
    this.status,
    this.serial,
    this.sliderLocation,
    this.createdAt,
    this.updatedAt,
  });

  Sliders.fromJson(dynamic json) {
    id = json['id'];
    label = json['label'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    link = json['link'];
    status = json['status'];
    serial = json['serial'];
    sliderLocation = json['slider_location'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  int? id;
  String? label;
  String? title;
  String? description;
  String? image;
  String? link;
  String? status;
  String? serial;
  dynamic sliderLocation;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['label'] = label;
    map['title'] = title;
    map['description'] = description;
    map['image'] = image;
    map['link'] = link;
    map['status'] = status;
    map['serial'] = serial;
    map['slider_location'] = sliderLocation;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}

class SeoSetting {
  SeoSetting({
    this.id,
    this.pageName,
    this.seoTitle,
    this.seoDescription,
    this.createdAt,
    this.updatedAt,
  });

  SeoSetting.fromJson(dynamic json) {
    id = json['id'];
    pageName = json['page_name'];
    seoTitle = json['seo_title'];
    seoDescription = json['seo_description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  int? id;
  String? pageName;
  String? seoTitle;
  String? seoDescription;
  dynamic createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['page_name'] = pageName;
    map['seo_title'] = seoTitle;
    map['seo_description'] = seoDescription;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}
