// class CountryModel {
//   CountryModel({
//     this.name,
//     this.tld,
//     this.cca2,
//     this.ccn3,
//     this.cca3,
//     this.cioc,
//     this.independent,
//     this.status,
//     this.unMember,
//     this.currencies,
//     this.idd,
//     this.capital,
//     this.altSpellings,
//     this.region,
//     this.subregion,
//     this.languages,
//     this.translations,
//     this.latlng,
//     this.landlocked,
//     this.area,
//     this.demonyms,
//     this.flag,
//     this.maps,
//     this.population,
//     this.fifa,
//     this.car,
//     this.timezones,
//     this.continents,
//     this.flags,
//     this.coatOfArms,
//     this.startOfWeek,
//     this.capitalInfo,
//     this.postalCode,
//     this.borders,
//     this.gini,
//   });
//
//   Name? name;
//   List<String>? tld;
//   String? cca2;
//   String? ccn3;
//   String? cca3;
//   String? cioc;
//   bool? independent;
//   Status? status;
//   bool? unMember;
//   Currencies? currencies;
//   Idd? idd;
//   List<String>? capital;
//   List<String>? altSpellings;
//   Region? region;
//   String? subregion;
//   Map<String, String>? languages;
//   Map<String, Translation>? translations;
//   List<double>? latlng;
//   bool? landlocked;
//   double? area;
//   Demonyms? demonyms;
//   String? flag;
//   Maps? maps;
//   int? population;
//   String? fifa;
//   Car? car;
//   List<String>? timezones;
//   List<Continent>? continents;
//   CoatOfArms? flags;
//   CoatOfArms? coatOfArms;
//   StartOfWeek? startOfWeek;
//   CapitalInfo? capitalInfo;
//   PostalCode? postalCode;
//   List<String>? borders;
//   Map<String, double>? gini;
//
//   factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
//         name: Name.fromJson(json["name"]),
//         tld: List<String>.from(json["tld"].map((x) => x)),
//         cca2: json["cca2"],
//         ccn3: json["ccn3"],
//         cca3: json["cca3"],
//         cioc: json["cioc"],
//         independent: json["independent"],
//         status: statusValues.map![json["status"]],
//         unMember: json["unMember"],
//         currencies: Currencies.fromJson(json["currencies"]),
//         idd: Idd.fromJson(json["idd"]),
//         capital: List<String>.from(json["capital"].map((x) => x)),
//         altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
//         region: regionValues.map![json["region"]],
//         subregion: json["subregion"],
//         languages: Map.from(json["languages"])
//             .map((k, v) => MapEntry<String, String>(k, v)),
//         translations: Map.from(json["translations"]).map((k, v) =>
//             MapEntry<String, Translation>(k, Translation.fromJson(v))),
//         latlng: List<double>.from(json["latlng"].map((x) => x.toDouble())),
//         landlocked: json["landlocked"],
//         area: json["area"].toDouble(),
//         demonyms: Demonyms.fromJson(json["demonyms"]),
//         flag: json["flag"],
//         maps: Maps.fromJson(json["maps"]),
//         population: json["population"],
//         fifa: json["fifa"],
//         car: Car.fromJson(json["car"]),
//         timezones: List<String>.from(json["timezones"].map((x) => x)),
//         continents: List<Continent>.from(
//             json["continents"].map((x) => continentValues.map![x])),
//         flags: CoatOfArms.fromJson(json["flags"]),
//         coatOfArms: CoatOfArms.fromJson(json["coatOfArms"]),
//         startOfWeek: startOfWeekValues.map![json["startOfWeek"]],
//         capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
//         postalCode: PostalCode.fromJson(json["postalCode"]),
//         borders: List<String>.from(json["borders"].map((x) => x)),
//         gini: Map.from(json["gini"])
//             .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "name": name?.toJson(),
//         "tld": tld == null ? null : List<dynamic>.from(tld!.map((x) => x)),
//         "cca2": cca2,
//         "ccn3": ccn3,
//         "cca3": cca3,
//         "cioc": cioc,
//         "independent": independent,
//         "status": statusValues.reverse![status],
//         "unMember": unMember,
//         "currencies": currencies,
//         "idd": idd,
//         "capital": List<dynamic>.from(capital!.map((x) => x)),
//         "altSpellings": List<dynamic>.from(altSpellings!.map((x) => x)),
//         "region": regionValues.reverse![region],
//         "subregion": subregion,
//         "languages":
//             Map.from(languages!).map((k, v) => MapEntry<String, dynamic>(k, v)),
//         "translations": Map.from(translations!)
//             .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
//         "latlng": List<dynamic>.from(latlng!.map((x) => x)),
//         "landlocked": landlocked,
//         "area": area,
//         "demonyms": demonyms,
//         "flag": flag,
//         "maps": maps,
//         "population": population,
//         "fifa": fifa,
//         "car": car,
//         "timezones": List<dynamic>.from(timezones!.map((x) => x)),
//         "continents": List<dynamic>.from(
//             continents!.map((x) => continentValues.reverse![x])),
//         "flags": flags,
//         "coatOfArms": coatOfArms,
//         "startOfWeek": startOfWeekValues.reverse![startOfWeek],
//         "capitalInfo": capitalInfo,
//         "postalCode": postalCode,
//         "borders": List<dynamic>.from(borders!.map((x) => x)),
//         "gini": Map.from(gini!).map((k, v) => MapEntry<String, dynamic>(k, v)),
//       };
// }
//
// class CapitalInfo {
//   CapitalInfo({
//     this.latlng,
//   });
//
//   List<double>? latlng;
//
//   factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
//         latlng: List<double>.from(json["latlng"].map((x) => x.toDouble())),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "latlng": List<dynamic>.from(latlng!.map((x) => x)),
//       };
// }
//
// class Car {
//   Car({
//     this.signs,
//     this.side,
//   });
//
//   List<String>? signs;
//   Side? side;
//
//   factory Car.fromJson(Map<String, dynamic> json) => Car(
//         signs: List<String>.from(json["signs"].map((x) => x)),
//         side: sideValues.map![json["side"]],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "signs":
//             signs == null ? null : List<dynamic>.from(signs!.map((x) => x)),
//         "side": sideValues.reverse![side],
//       };
// }
//
// enum Side { LEFT, RIGHT }
//
// final sideValues = EnumValues({"left": Side.LEFT, "right": Side.RIGHT});
//
// class CoatOfArms {
//   CoatOfArms({
//     this.png,
//     this.svg,
//   });
//
//   String? png;
//   String? svg;
//
//   factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
//         png: json["png"],
//         svg: json["svg"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "png": png,
//         "svg": svg,
//       };
// }
//
// enum Continent {
//   NORTH_AMERICA,
//   ASIA,
//   AFRICA,
//   SOUTH_AMERICA,
//   EUROPE,
//   OCEANIA,
//   ANTARCTICA
// }
//
// final continentValues = EnumValues({
//   "Africa": Continent.AFRICA,
//   "Antarctica": Continent.ANTARCTICA,
//   "Asia": Continent.ASIA,
//   "Europe": Continent.EUROPE,
//   "North America": Continent.NORTH_AMERICA,
//   "Oceania": Continent.OCEANIA,
//   "South America": Continent.SOUTH_AMERICA
// });
//
// class Currencies {
//   Currencies({
//     this.bbd,
//     this.usd,
//     this.xaf,
//     this.brl,
//     this.eur,
//     this.aud,
//     this.kid,
//     this.ron,
//     this.lak,
//     this.xof,
//     this.iqd,
//     this.kes,
//     this.kyd,
//     this.gnf,
//     this.tnd,
//     this.bob,
//     this.cny,
//     this.krw,
//     this.kwd,
//     this.dzd,
//     this.awg,
//     this.rub,
//     this.dkk,
//     this.gbp,
//     this.twd,
//     this.cad,
//     this.fjd,
//     this.xpf,
//     this.pen,
//     this.clp,
//     this.egp,
//     this.mkd,
//     this.bdt,
//     this.sgd,
//     this.etb,
//     this.bsd,
//     this.tmt,
//     this.ang,
//     this.zmw,
//     this.hnl,
//     this.mad,
//     this.npr,
//     this.xcd,
//     this.omr,
//     this.hkd,
//     this.pyg,
//     this.mdl,
//     this.kgs,
//     this.mur,
//     this.btn,
//     this.inr,
//     this.yer,
//     this.imp,
//     this.dop,
//     this.ggp,
//     this.lrd,
//     this.zwl,
//     this.ugx,
//     this.vuv,
//     this.ils,
//     this.jod,
//     this.pkr,
//     this.bnd,
//     this.aed,
//     this.gel,
//     this.scr,
//     this.fkp,
//     this.gip,
//     this.sbd,
//     this.uzs,
//     this.mnt,
//     this.gyd,
//     this.bam,
//     this.top,
//     this.rwf,
//     this.bgn,
//     this.ngn,
//     this.shp,
//     this.fok,
//     this.lsl,
//     this.zar,
//     this.cve,
//     this.kpw,
//     this.cuc,
//     this.cup,
//     this.srd,
//     this.nzd,
//     this.mxn,
//     this.php,
//     this.sek,
//     this.jmd,
//     this.ves,
//     this.jep,
//     this.afn,
//     this.mop,
//     this.syp,
//     this.stn,
//     this.chf,
//     this.szl,
//     this.myr,
//     this.pln,
//     this.ssp,
//     this.khr,
//     this.lkr,
//     this.ghs,
//     this.ern,
//     this.bzd,
//     this.ttd,
//     this.ckd,
//     this.mzn,
//     this.irr,
//     this.cdf,
//     this.mvr,
//     this.mru,
//     this.czk,
//     this.byn,
//     this.all,
//     this.mwk,
//     this.sos,
//     this.rsd,
//     this.isk,
//     this.wst,
//     this.mmk,
//     this.thb,
//     this.lbp,
//     this.kzt,
//     this.tvd,
//     this.huf,
//     this.nok,
//     this.kmf,
//     this.sdg,
//     this.amd,
//     this.uyu,
//     this.sar,
//     this.bif,
//     this.uah,
//     this.sll,
//     this.bmd,
//     this.nad,
//     this.htg,
//     this.lyd,
//     this.pgk,
//     this.aoa,
//     this.idr,
//     this.ars,
//     this.pab,
//     this.jpy,
//     this.nio,
//     this.tzs,
//     this.tjs,
//     this.gtq,
//     this.bhd,
//     this.mga,
//     this.djf,
//     this.gmd,
//     this.bwp,
//     this.currenciesTry,
//     this.azn,
//     this.crc,
//     this.vnd,
//     this.hrk,
//     this.qar,
//     this.cop,
//   });
//
//   Aed? bbd;
//   Aed? usd;
//   Aed? xaf;
//   Aed? brl;
//   Aed? eur;
//   Aed? aud;
//   Aed? kid;
//   Aed? ron;
//   Aed? lak;
//   Aed? xof;
//   Aed? iqd;
//   Aed? kes;
//   Aed? kyd;
//   Aed? gnf;
//   Aed? tnd;
//   Aed? bob;
//   Aed? cny;
//   Aed? krw;
//   Aed? kwd;
//   Aed? dzd;
//   Aed? awg;
//   Aed? rub;
//   Aed? dkk;
//   Aed? gbp;
//   Aed? twd;
//   Aed? cad;
//   Aed? fjd;
//   Aed? xpf;
//   Aed? pen;
//   Aed? clp;
//   Aed? egp;
//   Aed? mkd;
//   Aed? bdt;
//   Aed? sgd;
//   Aed? etb;
//   Aed? bsd;
//   Aed? tmt;
//   Aed? ang;
//   Aed? zmw;
//   Aed? hnl;
//   Aed? mad;
//   Aed? npr;
//   Aed? xcd;
//   Aed? omr;
//   Aed? hkd;
//   Aed? pyg;
//   Aed? mdl;
//   Aed? kgs;
//   Aed? mur;
//   Aed? btn;
//   Aed? inr;
//   Aed? yer;
//   Aed? imp;
//   Aed? dop;
//   Aed? ggp;
//   Aed? lrd;
//   Aed? zwl;
//   Aed? ugx;
//   Aed? vuv;
//   Aed? ils;
//   Aed? jod;
//   Aed? pkr;
//   Aed? bnd;
//   Aed? aed;
//   Aed? gel;
//   Aed? scr;
//   Aed? fkp;
//   Aed? gip;
//   Aed? sbd;
//   Aed? uzs;
//   Aed? mnt;
//   Aed? gyd;
//   Bam? bam;
//   Aed? top;
//   Aed? rwf;
//   Aed? bgn;
//   Aed? ngn;
//   Aed? shp;
//   Aed? fok;
//   Aed? lsl;
//   Aed? zar;
//   Aed? cve;
//   Aed? kpw;
//   Aed? cuc;
//   Aed? cup;
//   Aed? srd;
//   Aed? nzd;
//   Aed? mxn;
//   Aed? php;
//   Aed? sek;
//   Aed? jmd;
//   Aed? ves;
//   Aed? jep;
//   Aed? afn;
//   Aed? mop;
//   Aed? syp;
//   Aed? stn;
//   Aed? chf;
//   Aed? szl;
//   Aed? myr;
//   Aed? pln;
//   Aed? ssp;
//   Aed? khr;
//   Aed? lkr;
//   Aed? ghs;
//   Aed? ern;
//   Aed? bzd;
//   Aed? ttd;
//   Aed? ckd;
//   Aed? mzn;
//   Aed? irr;
//   Aed? cdf;
//   Aed? mvr;
//   Aed? mru;
//   Aed? czk;
//   Aed? byn;
//   Aed? all;
//   Aed? mwk;
//   Aed? sos;
//   Aed? rsd;
//   Aed? isk;
//   Aed? wst;
//   Aed? mmk;
//   Aed? thb;
//   Aed? lbp;
//   Aed? kzt;
//   Aed? tvd;
//   Aed? huf;
//   Aed? nok;
//   Aed? kmf;
//   Bam? sdg;
//   Aed? amd;
//   Aed? uyu;
//   Aed? sar;
//   Aed? bif;
//   Aed? uah;
//   Aed? sll;
//   Aed? bmd;
//   Aed? nad;
//   Aed? htg;
//   Aed? lyd;
//   Aed? pgk;
//   Aed? aoa;
//   Aed? idr;
//   Aed? ars;
//   Aed? pab;
//   Aed? jpy;
//   Aed? nio;
//   Aed? tzs;
//   Aed? tjs;
//   Aed? gtq;
//   Aed? bhd;
//   Aed? mga;
//   Aed? djf;
//   Aed? gmd;
//   Aed? bwp;
//   Aed? currenciesTry;
//   Aed? azn;
//   Aed? crc;
//   Aed? vnd;
//   Aed? hrk;
//   Aed? qar;
//   Aed? cop;
//
//   factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
//         bbd: Aed.fromJson(json["BBD"]),
//         usd: Aed.fromJson(json["USD"]),
//         xaf: Aed.fromJson(json["XAF"]),
//         brl: Aed.fromJson(json["BRL"]),
//         eur: Aed.fromJson(json["EUR"]),
//         aud: Aed.fromJson(json["AUD"]),
//         kid: Aed.fromJson(json["KID"]),
//         ron: Aed.fromJson(json["RON"]),
//         lak: Aed.fromJson(json["LAK"]),
//         xof: Aed.fromJson(json["XOF"]),
//         iqd: Aed.fromJson(json["IQD"]),
//         kes: Aed.fromJson(json["KES"]),
//         kyd: Aed.fromJson(json["KYD"]),
//         gnf: Aed.fromJson(json["GNF"]),
//         tnd: Aed.fromJson(json["TND"]),
//         bob: Aed.fromJson(json["BOB"]),
//         cny: Aed.fromJson(json["CNY"]),
//         krw: Aed.fromJson(json["KRW"]),
//         kwd: Aed.fromJson(json["KWD"]),
//         dzd: Aed.fromJson(json["DZD"]),
//         awg: Aed.fromJson(json["AWG"]),
//         rub: Aed.fromJson(json["RUB"]),
//         dkk: Aed.fromJson(json["DKK"]),
//         gbp: Aed.fromJson(json["GBP"]),
//         twd: Aed.fromJson(json["TWD"]),
//         cad: Aed.fromJson(json["CAD"]),
//         fjd: Aed.fromJson(json["FJD"]),
//         xpf: Aed.fromJson(json["XPF"]),
//         pen: Aed.fromJson(json["PEN"]),
//         clp: Aed.fromJson(json["CLP"]),
//         egp: Aed.fromJson(json["EGP"]),
//         mkd: Aed.fromJson(json["MKD"]),
//         bdt: Aed.fromJson(json["BDT"]),
//         sgd: Aed.fromJson(json["SGD"]),
//         etb: Aed.fromJson(json["ETB"]),
//         bsd: Aed.fromJson(json["BSD"]),
//         tmt: Aed.fromJson(json["TMT"]),
//         ang: Aed.fromJson(json["ANG"]),
//         zmw: Aed.fromJson(json["ZMW"]),
//         hnl: Aed.fromJson(json["HNL"]),
//         mad: Aed.fromJson(json["MAD"]),
//         npr: Aed.fromJson(json["NPR"]),
//         xcd: Aed.fromJson(json["XCD"]),
//         omr: Aed.fromJson(json["OMR"]),
//         hkd: Aed.fromJson(json["HKD"]),
//         pyg: Aed.fromJson(json["PYG"]),
//         mdl: Aed.fromJson(json["MDL"]),
//         kgs: Aed.fromJson(json["KGS"]),
//         mur: Aed.fromJson(json["MUR"]),
//         btn: Aed.fromJson(json["BTN"]),
//         inr: Aed.fromJson(json["INR"]),
//         yer: Aed.fromJson(json["YER"]),
//         imp: Aed.fromJson(json["IMP"]),
//         dop: Aed.fromJson(json["DOP"]),
//         ggp: Aed.fromJson(json["GGP"]),
//         lrd: Aed.fromJson(json["LRD"]),
//         zwl: Aed.fromJson(json["ZWL"]),
//         ugx: Aed.fromJson(json["UGX"]),
//         vuv: Aed.fromJson(json["VUV"]),
//         ils: Aed.fromJson(json["ILS"]),
//         jod: Aed.fromJson(json["JOD"]),
//         pkr: Aed.fromJson(json["PKR"]),
//         bnd: Aed.fromJson(json["BND"]),
//         aed: Aed.fromJson(json["AED"]),
//         gel: Aed.fromJson(json["SCR"]),
//         fkp: Aed.fromJson(json["FKP"]),
//         gip: Aed.fromJson(json["GIP"]),
//         sbd: Aed.fromJson(json["SBD"]),
//         uzs: Aed.fromJson(json["UZS"]),
//         mnt: Aed.fromJson(json["MNT"]),
//         gyd: Aed.fromJson(json["GYD"]),
//         bam: Bam.fromJson(json["BAM"]),
//         top: Aed.fromJson(json["TOP"]),
//         rwf: Aed.fromJson(json["RWF"]),
//         bgn: Aed.fromJson(json["BGN"]),
//         ngn: Aed.fromJson(json["NGN"]),
//         shp: Aed.fromJson(json["SHP"]),
//         fok: Aed.fromJson(json["FOK"]),
//         lsl: Aed.fromJson(json["LSL"]),
//         zar: Aed.fromJson(json["ZAR"]),
//         cve: Aed.fromJson(json["CVE"]),
//         kpw: Aed.fromJson(json["KPW"]),
//         cuc: Aed.fromJson(json["CUC"]),
//         cup: Aed.fromJson(json["CUP"]),
//         srd: Aed.fromJson(json["SRD"]),
//         nzd: Aed.fromJson(json["NZD"]),
//         mxn: Aed.fromJson(json["MXN"]),
//         php: Aed.fromJson(json["PHP"]),
//         sek: Aed.fromJson(json["SEK"]),
//         jmd: Aed.fromJson(json["JMD"]),
//         ves: Aed.fromJson(json["VES"]),
//         jep: Aed.fromJson(json["JEP"]),
//         afn: Aed.fromJson(json["AFN"]),
//         mop: Aed.fromJson(json["MOP"]),
//         syp: Aed.fromJson(json["SYP"]),
//         stn: Aed.fromJson(json["STN"]),
//         chf: Aed.fromJson(json["CHF"]),
//         szl: Aed.fromJson(json["SZL"]),
//         myr: Aed.fromJson(json["MYR"]),
//         pln: Aed.fromJson(json["PLN"]),
//         ssp: Aed.fromJson(json["SSP"]),
//         khr: Aed.fromJson(json["KHR"]),
//         lkr: Aed.fromJson(json["LKR"]),
//         ghs: Aed.fromJson(json["GHS"]),
//         ern: Aed.fromJson(json["ERN"]),
//         bzd: Aed.fromJson(json["BZD"]),
//         ttd: Aed.fromJson(json["TTD"]),
//         ckd: Aed.fromJson(json["CKD"]),
//         mzn: Aed.fromJson(json["MZN"]),
//         irr: Aed.fromJson(json["IRR"]),
//         cdf: Aed.fromJson(json["CDF"]),
//         mvr: Aed.fromJson(json["MVR"]),
//         mru: Aed.fromJson(json["MRU"]),
//         czk: Aed.fromJson(json["CZK"]),
//         byn: Aed.fromJson(json["BYN"]),
//         all: Aed.fromJson(json["ALL"]),
//         mwk: Aed.fromJson(json["MWK"]),
//         sos: Aed.fromJson(json["SOS"]),
//         rsd: Aed.fromJson(json["RSD"]),
//         isk: Aed.fromJson(json["ISK"]),
//         wst: Aed.fromJson(json["WST"]),
//         mmk: Aed.fromJson(json["MMK"]),
//         thb: Aed.fromJson(json["THB"]),
//         lbp: Aed.fromJson(json["LBP"]),
//         kzt: Aed.fromJson(json["KZT"]),
//         tvd: Aed.fromJson(json["TVD"]),
//         huf: Aed.fromJson(json["HUF"]),
//         nok: Aed.fromJson(json["NOK"]),
//         kmf: Aed.fromJson(json["KMF"]),
//         sdg: Bam.fromJson(json["SDG"]),
//         amd: Aed.fromJson(json["AMD"]),
//         uyu: Aed.fromJson(json["UYU"]),
//         sar: Aed.fromJson(json["SAR"]),
//         bif: Aed.fromJson(json["BIF"]),
//         uah: Aed.fromJson(json["UAH"]),
//         sll: Aed.fromJson(json["SLL"]),
//         bmd: Aed.fromJson(json["BMD"]),
//         nad: Aed.fromJson(json["NAD"]),
//         htg: Aed.fromJson(json["HTG"]),
//         lyd: Aed.fromJson(json["LYD"]),
//         pgk: Aed.fromJson(json["PGK"]),
//         aoa: Aed.fromJson(json["AOA"]),
//         idr: Aed.fromJson(json["IDR"]),
//         ars: Aed.fromJson(json["ARS"]),
//         pab: Aed.fromJson(json["PAB"]),
//         jpy: Aed.fromJson(json["JPY"]),
//         nio: Aed.fromJson(json["NIO"]),
//         tzs: Aed.fromJson(json["TZS"]),
//         tjs: Aed.fromJson(json["TJS"]),
//         gtq: Aed.fromJson(json["GTQ"]),
//         bhd: Aed.fromJson(json["BHD"]),
//         mga: Aed.fromJson(json["MGA"]),
//         djf: Aed.fromJson(json["DJF"]),
//         gmd: Aed.fromJson(json["GMD"]),
//         bwp: Aed.fromJson(json["BWP"]),
//         currenciesTry: Aed.fromJson(json["TRY"]),
//         azn: Aed.fromJson(json["AZN"]),
//         crc: Aed.fromJson(json["CRC"]),
//         vnd: Aed.fromJson(json["VND"]),
//         hrk: Aed.fromJson(json["HRK"]),
//         qar: Aed.fromJson(json["QAR"]),
//         cop: Aed.fromJson(json["COP"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "BBD": bbd,
//         "USD": usd,
//         "XAF": xaf,
//         "BRL": brl,
//         "EUR": eur,
//         "AUD": aud,
//         "KID": kid,
//         "RON": ron,
//         "LAK": lak,
//         "XOF": xof,
//         "IQD": iqd,
//         "KES": kes,
//         "KYD": kyd,
//         "GNF": gnf,
//         "TND": tnd,
//         "BOB": bob,
//         "CNY": cny,
//         "KRW": krw,
//         "KWD": kwd,
//         "DZD": dzd,
//         "AWG": awg,
//         "RUB": rub,
//         "DKK": dkk,
//         "GBP": gbp,
//         "TWD": twd,
//         "CAD": cad,
//         "FJD": fjd,
//         "XPF": xpf,
//         "PEN": pen,
//         "CLP": clp,
//         "EGP": egp,
//         "MKD": mkd,
//         "BDT": bdt,
//         "SGD": sgd,
//         "ETB": etb,
//         "BSD": bsd,
//         "TMT": tmt,
//         "ANG": ang,
//         "ZMW": zmw,
//         "HNL": hnl,
//         "MAD": mad,
//         "NPR": npr,
//         "XCD": xcd,
//         "OMR": omr,
//         "HKD": hkd,
//         "PYG": pyg,
//         "MDL": mdl,
//         "KGS": kgs,
//         "MUR": mur,
//         "BTN": btn,
//         "INR": inr,
//         "YER": yer,
//         "IMP": imp,
//         "DOP": dop,
//         "GGP": ggp,
//         "LRD": lrd,
//         "ZWL": zwl,
//         "UGX": ugx,
//         "VUV": vuv,
//         "ILS": ils,
//         "JOD": jod,
//         "PKR": pkr,
//         "BND": bnd,
//         "AED": aed,
//         "GEL": gel,
//         "SCR": scr,
//         "FKP": fkp,
//         "GIP": gip,
//         "SBD": sbd,
//         "UZS": uzs,
//         "MNT": mnt,
//         "GYD": gyd,
//         "BAM": bam,
//         "TOP": top,
//         "RWF": rwf,
//         "BGN": bgn,
//         "NGN": ngn,
//         "SHP": shp,
//         "FOK": fok,
//         "LSL": lsl,
//         "ZAR": zar,
//         "CVE": cve,
//         "KPW": kpw,
//         "CUC": cuc,
//         "CUP": cup,
//         "SRD": srd,
//         "NZD": nzd,
//         "MXN": mxn,
//         "PHP": php,
//         "SEK": sek,
//         "JMD": jmd,
//         "VES": ves,
//         "JEP": jep,
//         "AFN": afn,
//         "MOP": mop,
//         "SYP": syp,
//         "STN": stn,
//         "CHF": chf,
//         "SZL": szl,
//         "MYR": myr,
//         "PLN": pln,
//         "SSP": ssp,
//         "KHR": khr,
//         "LKR": lkr,
//         "GHS": ghs,
//         "ERN": ern,
//         "BZD": bzd,
//         "TTD": ttd,
//         "CKD": ckd,
//         "MZN": mzn,
//         "IRR": irr,
//         "CDF": cdf,
//         "MVR": mvr,
//         "MRU": mru,
//         "CZK": czk,
//         "BYN": byn,
//         "ALL": all,
//         "MWK": mwk,
//         "SOS": sos,
//         "RSD": rsd,
//         "ISK": isk,
//         "WST": wst,
//         "MMK": mmk,
//         "THB": thb,
//         "LBP": lbp,
//         "KZT": kzt,
//         "TVD": tvd,
//         "HUF": huf,
//         "NOK": nok,
//         "KMF": kmf,
//         "SDG": sdg,
//         "AMD": amd,
//         "UYU": uyu,
//         "SAR": sar,
//         "BIF": bif,
//         "UAH": uah,
//         "SLL": sll,
//         "BMD": bmd,
//         "NAD": nad,
//         "HTG": htg,
//         "LYD": lyd,
//         "PGK": pgk,
//         "AOA": aoa,
//         "IDR": idr,
//         "ARS": ars,
//         "PAB": pab,
//         "JPY": jpy,
//         "NIO": nio,
//         "TZS": tzs,
//         "TJS": tjs,
//         "GTQ": gtq,
//         "BHD": bhd,
//         "MGA": mga,
//         "DJF": djf,
//         "GMD": gmd,
//         "BWP": bwp,
//         "TRY": currenciesTry,
//         "AZN": azn,
//         "CRC": crc,
//         "VND": vnd,
//         "HRK": hrk,
//         "QAR": qar,
//         "COP": cop
//       };
// }
//
// class Aed {
//   Aed({
//     this.name,
//     this.symbol,
//   });
//
//   String? name;
//   String? symbol;
//
//   factory Aed.fromJson(Map<String, dynamic> json) => Aed(
//         name: json["name"],
//         symbol: json["symbol"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "symbol": symbol,
//       };
// }
//
// class Bam {
//   Bam({
//     this.name,
//   });
//
//   String? name;
//
//   factory Bam.fromJson(Map<String, dynamic> json) => Bam(
//         name: json["name"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "name": name,
//       };
// }
//
// class Demonyms {
//   Demonyms({
//     this.eng,
//     this.fra,
//   });
//
//   Eng? eng;
//   Eng? fra;
//
//   factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
//         eng: Eng.fromJson(json["eng"]),
//         fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "eng": eng,
//         "fra": fra,
//       };
// }
//
// class Eng {
//   Eng({
//     this.f,
//     this.m,
//   });
//
//   String? f;
//   String? m;
//
//   factory Eng.fromJson(Map<String, dynamic> json) => Eng(
//         f: json["f"],
//         m: json["m"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "f": f,
//         "m": m,
//       };
// }
//
// class Idd {
//   Idd({
//     this.root,
//     this.suffixes,
//   });
//
//   String? root;
//   List<String>? suffixes;
//
//   factory Idd.fromJson(Map<String, dynamic> json) => Idd(
//         root: json["root"],
//         suffixes: json["suffixes"] == null
//             ? null
//             : List<String>.from(json["suffixes"].map((x) => x)),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "root": root,
//         "suffixes": List<dynamic>.from(suffixes!.map((x) => x)),
//       };
// }
//
// class Maps {
//   Maps({
//     this.googleMaps,
//     this.openStreetMaps,
//   });
//
//   String? googleMaps;
//   String? openStreetMaps;
//
//   factory Maps.fromJson(Map<String, dynamic> json) => Maps(
//         googleMaps: json["googleMaps"],
//         openStreetMaps: json["openStreetMaps"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "googleMaps": googleMaps,
//         "openStreetMaps": openStreetMaps,
//       };
// }
//
// class Name {
//   Name({
//     this.common,
//     this.official,
//     this.nativeName,
//   });
//
//   String? common;
//   String? official;
//   Map<String, Translation>? nativeName;
//
//   factory Name.fromJson(Map<String, dynamic> json) => Name(
//         common: json["common"],
//         official: json["official"],
//         nativeName: Map.from(json["nativeName"]).map((k, v) =>
//             MapEntry<String, Translation>(k, Translation.fromJson(v))),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "common": common,
//         "official": official,
//         "nativeName": Map.from(nativeName!)
//             .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
//       };
// }
//
// class Translation {
//   Translation({
//     this.official,
//     this.common,
//   });
//
//   String? official;
//   String? common;
//
//   factory Translation.fromJson(Map<String, dynamic> json) => Translation(
//         official: json["official"],
//         common: json["common"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "official": official,
//         "common": common,
//       };
// }
//
// class PostalCode {
//   PostalCode({
//     this.format,
//     this.regex,
//   });
//
//   String? format;
//   String? regex;
//
//   factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
//         format: json["format"],
//         regex: json["regex"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "format": format,
//         "regex": regex,
//       };
// }
//
// enum Region { AMERICAS, AFRICA, EUROPE, OCEANIA, ASIA, ANTARCTIC }
//
// final regionValues = EnumValues({
//   "Africa": Region.AFRICA,
//   "Americas": Region.AMERICAS,
//   "Antarctic": Region.ANTARCTIC,
//   "Asia": Region.ASIA,
//   "Europe": Region.EUROPE,
//   "Oceania": Region.OCEANIA
// });
//
// enum StartOfWeek { MONDAY, SUNDAY, SATURDAY }
//
// final startOfWeekValues = EnumValues({
//   "monday": StartOfWeek.MONDAY,
//   "saturday": StartOfWeek.SATURDAY,
//   "sunday": StartOfWeek.SUNDAY
// });
//
// enum Status { OFFICIALLY_ASSIGNED, USER_ASSIGNED }
//
// final statusValues = EnumValues({
//   "officially-assigned": Status.OFFICIALLY_ASSIGNED,
//   "user-assigned": Status.USER_ASSIGNED
// });
//
// class EnumValues<T> {
//   Map<String, T>? map;
//   Map<T, String>? reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String>? get reverse {
//     return reverseMap;
//   }
// }
class CountryModel {
  CountryModel({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
    this.borders,
    this.gini,
  });

  Name? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  Status? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  Region? region;
  String? subregion;
  Map<String, String>? languages;
  Map<String, Translation>? translations;
  List<double>? latlng;
  bool? landlocked;
  double? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<Continent>? continents;
  CoatOfArms? flags;
  CoatOfArms? coatOfArms;
  StartOfWeek? startOfWeek;
  CapitalInfo? capitalInfo;
  PostalCode? postalCode;
  List<String>? borders;
  Map<String, double>? gini;

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
    name: json["name"] == null ? null : Name.fromJson(json["name"]),
    tld: json["tld"] == null ? null : List<String>.from(json["tld"].map((x) => x)),
    cca2: json["cca2"] == null ? null : json["cca2"],
    ccn3: json["ccn3"] == null ? null : json["ccn3"],
    cca3: json["cca3"] == null ? null : json["cca3"],
    cioc: json["cioc"] == null ? null : json["cioc"],
    independent: json["independent"] == null ? null : json["independent"],
    status: json["status"] == null ? null : statusValues.map![json["status"]],
    unMember: json["unMember"] == null ? null : json["unMember"],
    currencies: json["currencies"] == null ? null : Currencies.fromJson(json["currencies"]),
    idd: json["idd"] == null ? null : Idd.fromJson(json["idd"]),
    capital: json["capital"] == null ? null : List<String>.from(json["capital"].map((x) => x)),
    altSpellings: json["altSpellings"] == null ? null : List<String>.from(json["altSpellings"].map((x) => x)),
    region: json["region"] == null ? null : regionValues.map![json["region"]],
    subregion: json["subregion"] == null ? null : json["subregion"],
    languages: json["languages"] == null ? null : Map.from(json["languages"]).map((k, v) => MapEntry<String, String>(k, v)),
    translations: json["translations"] == null ? null : Map.from(json["translations"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
    latlng: json["latlng"] == null ? null : List<double>.from(json["latlng"].map((x) => x.toDouble())),
    landlocked: json["landlocked"] == null ? null : json["landlocked"],
    area: json["area"] == null ? null : json["area"].toDouble(),
    demonyms: json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]),
    flag: json["flag"] == null ? null : json["flag"],
    maps: json["maps"] == null ? null : Maps.fromJson(json["maps"]),
    population: json["population"] == null ? null : json["population"],
    fifa: json["fifa"] == null ? null : json["fifa"],
    car: json["car"] == null ? null : Car.fromJson(json["car"]),
    timezones: json["timezones"] == null ? null : List<String>.from(json["timezones"].map((x) => x)),
    continents: json["continents"] == null ? null : List<Continent>.from(json["continents"].map((x) => continentValues.map![x])),
    flags: json["flags"] == null ? null : CoatOfArms.fromJson(json["flags"]),
    coatOfArms: json["coatOfArms"] == null ? null : CoatOfArms.fromJson(json["coatOfArms"]),
    startOfWeek: json["startOfWeek"] == null ? null : startOfWeekValues.map![json["startOfWeek"]],
    capitalInfo: json["capitalInfo"] == null ? null : CapitalInfo.fromJson(json["capitalInfo"]),
    postalCode: json["postalCode"] == null ? null : PostalCode.fromJson(json["postalCode"]),
    borders: json["borders"] == null ? null : List<String>.from(json["borders"].map((x) => x)),
    gini: json["gini"] == null ? null : Map.from(json["gini"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name?.toJson(),
    "tld": tld == null ? null : List<dynamic>.from(tld!.map((x) => x)),
    "cca2": cca2 == null ? null : cca2,
    "ccn3": ccn3 == null ? null : ccn3,
    "cca3": cca3 == null ? null : cca3,
    "cioc": cioc == null ? null : cioc,
    "independent": independent == null ? null : independent,
    "status": status == null ? null : statusValues.reverse![status],
    "unMember": unMember == null ? null : unMember,
    "currencies": currencies == null ? null : currencies?.toJson(),
    "idd": idd == null ? null : idd?.toJson(),
    "capital": capital == null ? null : List<dynamic>.from(capital!.map((x) => x)),
    "altSpellings": altSpellings == null ? null : List<dynamic>.from(altSpellings!.map((x) => x)),
    "region": region == null ? null : regionValues.reverse![region],
    "subregion": subregion == null ? null : subregion,
    "languages": languages == null ? null : Map.from(languages!).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "translations": translations == null ? null : Map.from(translations!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "latlng": latlng == null ? null : List<dynamic>.from(latlng!.map((x) => x)),
    "landlocked": landlocked == null ? null : landlocked,
    "area": area == null ? null : area,
    "demonyms": demonyms == null ? null : demonyms?.toJson(),
    "flag": flag == null ? null : flag,
    "maps": maps == null ? null : maps?.toJson(),
    "population": population == null ? null : population,
    "fifa": fifa == null ? null : fifa,
    "car": car == null ? null : car?.toJson(),
    "timezones": timezones == null ? null : List<dynamic>.from(timezones!.map((x) => x)),
    "continents": continents == null ? null : List<dynamic>.from(continents!.map((x) => continentValues.reverse![x])),
    "flags": flags == null ? null : flags?.toJson(),
    "coatOfArms": coatOfArms == null ? null : coatOfArms?.toJson(),
    "startOfWeek": startOfWeek == null ? null : startOfWeekValues.reverse![startOfWeek],
    "capitalInfo": capitalInfo == null ? null : capitalInfo?.toJson(),
    "postalCode": postalCode == null ? null : postalCode?.toJson(),
    "borders": borders == null ? null : List<dynamic>.from(borders!.map((x) => x)),
    "gini": gini == null ? null : Map.from(gini!).map((k, v) => MapEntry<String, dynamic>(k, v)),
  };
}

class CapitalInfo {
  CapitalInfo({
    this.latlng,
  });

  List<double>? latlng;

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
    latlng: json["latlng"] == null ? null : List<double>.from(json["latlng"].map((x) => x.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "latlng": latlng == null ? null : List<dynamic>.from(latlng!.map((x) => x)),
  };
}

class Car {
  Car({
    this.signs,
    this.side,
  });

  List<String>? signs;
  Side? side;

  factory Car.fromJson(Map<String, dynamic> json) => Car(
    signs: json["signs"] == null ? null : List<String>.from(json["signs"].map((x) => x)),
    side: json["side"] == null ? null : sideValues.map![json["side"]],
  );

  Map<String, dynamic> toJson() => {
    "signs": signs == null ? null : List<dynamic>.from(signs!.map((x) => x)),
    "side": side == null ? null : sideValues.reverse![side],
  };
}

enum Side { LEFT, RIGHT }

final sideValues = EnumValues({
  "left": Side.LEFT,
  "right": Side.RIGHT
});

class CoatOfArms {
  CoatOfArms({
    this.png,
    this.svg,
  });

  String? png;
  String? svg;

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
    png: json["png"] == null ? null : json["png"],
    svg: json["svg"] == null ? null : json["svg"],
  );

  Map<String, dynamic> toJson() => {
    "png": png == null ? null : png,
    "svg": svg == null ? null : svg,
  };
}

enum Continent { NORTH_AMERICA, ASIA, AFRICA, SOUTH_AMERICA, EUROPE, OCEANIA, ANTARCTICA }

final continentValues = EnumValues({
  "Africa": Continent.AFRICA,
  "Antarctica": Continent.ANTARCTICA,
  "Asia": Continent.ASIA,
  "Europe": Continent.EUROPE,
  "North America": Continent.NORTH_AMERICA,
  "Oceania": Continent.OCEANIA,
  "South America": Continent.SOUTH_AMERICA
});

class Currencies {
  Currencies({
    this.bbd,
    this.usd,
    this.xaf,
    this.brl,
    this.eur,
    this.aud,
    this.kid,
    this.ron,
    this.lak,
    this.xof,
    this.iqd,
    this.kes,
    this.kyd,
    this.gnf,
    this.tnd,
    this.bob,
    this.cny,
    this.krw,
    this.kwd,
    this.dzd,
    this.awg,
    this.rub,
    this.dkk,
    this.gbp,
    this.twd,
    this.cad,
    this.fjd,
    this.xpf,
    this.pen,
    this.clp,
    this.egp,
    this.mkd,
    this.bdt,
    this.sgd,
    this.etb,
    this.bsd,
    this.tmt,
    this.ang,
    this.zmw,
    this.hnl,
    this.mad,
    this.npr,
    this.xcd,
    this.omr,
    this.hkd,
    this.pyg,
    this.mdl,
    this.kgs,
    this.mur,
    this.btn,
    this.inr,
    this.yer,
    this.imp,
    this.dop,
    this.ggp,
    this.lrd,
    this.zwl,
    this.ugx,
    this.vuv,
    this.ils,
    this.jod,
    this.pkr,
    this.bnd,
    this.aed,
    this.gel,
    this.scr,
    this.fkp,
    this.gip,
    this.sbd,
    this.uzs,
    this.mnt,
    this.gyd,
    this.bam,
    this.top,
    this.rwf,
    this.bgn,
    this.ngn,
    this.shp,
    this.fok,
    this.lsl,
    this.zar,
    this.cve,
    this.kpw,
    this.cuc,
    this.cup,
    this.srd,
    this.nzd,
    this.mxn,
    this.php,
    this.sek,
    this.jmd,
    this.ves,
    this.jep,
    this.afn,
    this.mop,
    this.syp,
    this.stn,
    this.chf,
    this.szl,
    this.myr,
    this.pln,
    this.ssp,
    this.khr,
    this.lkr,
    this.ghs,
    this.ern,
    this.bzd,
    this.ttd,
    this.ckd,
    this.mzn,
    this.irr,
    this.cdf,
    this.mvr,
    this.mru,
    this.czk,
    this.byn,
    this.all,
    this.mwk,
    this.sos,
    this.rsd,
    this.isk,
    this.wst,
    this.mmk,
    this.thb,
    this.lbp,
    this.kzt,
    this.tvd,
    this.huf,
    this.nok,
    this.kmf,
    this.sdg,
    this.amd,
    this.uyu,
    this.sar,
    this.bif,
    this.uah,
    this.sll,
    this.bmd,
    this.nad,
    this.htg,
    this.lyd,
    this.pgk,
    this.aoa,
    this.idr,
    this.ars,
    this.pab,
    this.jpy,
    this.nio,
    this.tzs,
    this.tjs,
    this.gtq,
    this.bhd,
    this.mga,
    this.djf,
    this.gmd,
    this.bwp,
    this.currenciesTry,
    this.azn,
    this.crc,
    this.vnd,
    this.hrk,
    this.qar,
    this.cop,
  });

  Aed? bbd;
  Aed? usd;
  Aed? xaf;
  Aed? brl;
  Aed? eur;
  Aed? aud;
  Aed? kid;
  Aed? ron;
  Aed? lak;
  Aed? xof;
  Aed? iqd;
  Aed? kes;
  Aed? kyd;
  Aed? gnf;
  Aed? tnd;
  Aed? bob;
  Aed? cny;
  Aed? krw;
  Aed? kwd;
  Aed? dzd;
  Aed? awg;
  Aed? rub;
  Aed? dkk;
  Aed? gbp;
  Aed? twd;
  Aed? cad;
  Aed? fjd;
  Aed? xpf;
  Aed? pen;
  Aed? clp;
  Aed? egp;
  Aed? mkd;
  Aed? bdt;
  Aed? sgd;
  Aed? etb;
  Aed? bsd;
  Aed? tmt;
  Aed? ang;
  Aed? zmw;
  Aed? hnl;
  Aed? mad;
  Aed? npr;
  Aed? xcd;
  Aed? omr;
  Aed? hkd;
  Aed? pyg;
  Aed? mdl;
  Aed? kgs;
  Aed? mur;
  Aed? btn;
  Aed? inr;
  Aed? yer;
  Aed? imp;
  Aed? dop;
  Aed? ggp;
  Aed? lrd;
  Aed? zwl;
  Aed? ugx;
  Aed? vuv;
  Aed? ils;
  Aed? jod;
  Aed? pkr;
  Aed? bnd;
  Aed? aed;
  Aed? gel;
  Aed? scr;
  Aed? fkp;
  Aed? gip;
  Aed? sbd;
  Aed? uzs;
  Aed? mnt;
  Aed? gyd;
  Bam? bam;
  Aed? top;
  Aed? rwf;
  Aed? bgn;
  Aed? ngn;
  Aed? shp;
  Aed? fok;
  Aed? lsl;
  Aed? zar;
  Aed? cve;
  Aed? kpw;
  Aed? cuc;
  Aed? cup;
  Aed? srd;
  Aed? nzd;
  Aed? mxn;
  Aed? php;
  Aed? sek;
  Aed? jmd;
  Aed? ves;
  Aed? jep;
  Aed? afn;
  Aed? mop;
  Aed? syp;
  Aed? stn;
  Aed? chf;
  Aed? szl;
  Aed? myr;
  Aed? pln;
  Aed? ssp;
  Aed? khr;
  Aed? lkr;
  Aed? ghs;
  Aed? ern;
  Aed? bzd;
  Aed? ttd;
  Aed? ckd;
  Aed? mzn;
  Aed? irr;
  Aed? cdf;
  Aed? mvr;
  Aed? mru;
  Aed? czk;
  Aed? byn;
  Aed? all;
  Aed? mwk;
  Aed? sos;
  Aed? rsd;
  Aed? isk;
  Aed? wst;
  Aed? mmk;
  Aed? thb;
  Aed? lbp;
  Aed? kzt;
  Aed? tvd;
  Aed? huf;
  Aed? nok;
  Aed? kmf;
  Bam? sdg;
  Aed? amd;
  Aed? uyu;
  Aed? sar;
  Aed? bif;
  Aed? uah;
  Aed? sll;
  Aed? bmd;
  Aed? nad;
  Aed? htg;
  Aed? lyd;
  Aed? pgk;
  Aed? aoa;
  Aed? idr;
  Aed? ars;
  Aed? pab;
  Aed? jpy;
  Aed? nio;
  Aed? tzs;
  Aed? tjs;
  Aed? gtq;
  Aed? bhd;
  Aed? mga;
  Aed? djf;
  Aed? gmd;
  Aed? bwp;
  Aed? currenciesTry;
  Aed? azn;
  Aed? crc;
  Aed? vnd;
  Aed? hrk;
  Aed? qar;
  Aed? cop;

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
    bbd: json["BBD"] == null ? null : Aed.fromJson(json["BBD"]),
    usd: json["USD"] == null ? null : Aed.fromJson(json["USD"]),
    xaf: json["XAF"] == null ? null : Aed.fromJson(json["XAF"]),
    brl: json["BRL"] == null ? null : Aed.fromJson(json["BRL"]),
    eur: json["EUR"] == null ? null : Aed.fromJson(json["EUR"]),
    aud: json["AUD"] == null ? null : Aed.fromJson(json["AUD"]),
    kid: json["KID"] == null ? null : Aed.fromJson(json["KID"]),
    ron: json["RON"] == null ? null : Aed.fromJson(json["RON"]),
    lak: json["LAK"] == null ? null : Aed.fromJson(json["LAK"]),
    xof: json["XOF"] == null ? null : Aed.fromJson(json["XOF"]),
    iqd: json["IQD"] == null ? null : Aed.fromJson(json["IQD"]),
    kes: json["KES"] == null ? null : Aed.fromJson(json["KES"]),
    kyd: json["KYD"] == null ? null : Aed.fromJson(json["KYD"]),
    gnf: json["GNF"] == null ? null : Aed.fromJson(json["GNF"]),
    tnd: json["TND"] == null ? null : Aed.fromJson(json["TND"]),
    bob: json["BOB"] == null ? null : Aed.fromJson(json["BOB"]),
    cny: json["CNY"] == null ? null : Aed.fromJson(json["CNY"]),
    krw: json["KRW"] == null ? null : Aed.fromJson(json["KRW"]),
    kwd: json["KWD"] == null ? null : Aed.fromJson(json["KWD"]),
    dzd: json["DZD"] == null ? null : Aed.fromJson(json["DZD"]),
    awg: json["AWG"] == null ? null : Aed.fromJson(json["AWG"]),
    rub: json["RUB"] == null ? null : Aed.fromJson(json["RUB"]),
    dkk: json["DKK"] == null ? null : Aed.fromJson(json["DKK"]),
    gbp: json["GBP"] == null ? null : Aed.fromJson(json["GBP"]),
    twd: json["TWD"] == null ? null : Aed.fromJson(json["TWD"]),
    cad: json["CAD"] == null ? null : Aed.fromJson(json["CAD"]),
    fjd: json["FJD"] == null ? null : Aed.fromJson(json["FJD"]),
    xpf: json["XPF"] == null ? null : Aed.fromJson(json["XPF"]),
    pen: json["PEN"] == null ? null : Aed.fromJson(json["PEN"]),
    clp: json["CLP"] == null ? null : Aed.fromJson(json["CLP"]),
    egp: json["EGP"] == null ? null : Aed.fromJson(json["EGP"]),
    mkd: json["MKD"] == null ? null : Aed.fromJson(json["MKD"]),
    bdt: json["BDT"] == null ? null : Aed.fromJson(json["BDT"]),
    sgd: json["SGD"] == null ? null : Aed.fromJson(json["SGD"]),
    etb: json["ETB"] == null ? null : Aed.fromJson(json["ETB"]),
    bsd: json["BSD"] == null ? null : Aed.fromJson(json["BSD"]),
    tmt: json["TMT"] == null ? null : Aed.fromJson(json["TMT"]),
    ang: json["ANG"] == null ? null : Aed.fromJson(json["ANG"]),
    zmw: json["ZMW"] == null ? null : Aed.fromJson(json["ZMW"]),
    hnl: json["HNL"] == null ? null : Aed.fromJson(json["HNL"]),
    mad: json["MAD"] == null ? null : Aed.fromJson(json["MAD"]),
    npr: json["NPR"] == null ? null : Aed.fromJson(json["NPR"]),
    xcd: json["XCD"] == null ? null : Aed.fromJson(json["XCD"]),
    omr: json["OMR"] == null ? null : Aed.fromJson(json["OMR"]),
    hkd: json["HKD"] == null ? null : Aed.fromJson(json["HKD"]),
    pyg: json["PYG"] == null ? null : Aed.fromJson(json["PYG"]),
    mdl: json["MDL"] == null ? null : Aed.fromJson(json["MDL"]),
    kgs: json["KGS"] == null ? null : Aed.fromJson(json["KGS"]),
    mur: json["MUR"] == null ? null : Aed.fromJson(json["MUR"]),
    btn: json["BTN"] == null ? null : Aed.fromJson(json["BTN"]),
    inr: json["INR"] == null ? null : Aed.fromJson(json["INR"]),
    yer: json["YER"] == null ? null : Aed.fromJson(json["YER"]),
    imp: json["IMP"] == null ? null : Aed.fromJson(json["IMP"]),
    dop: json["DOP"] == null ? null : Aed.fromJson(json["DOP"]),
    ggp: json["GGP"] == null ? null : Aed.fromJson(json["GGP"]),
    lrd: json["LRD"] == null ? null : Aed.fromJson(json["LRD"]),
    zwl: json["ZWL"] == null ? null : Aed.fromJson(json["ZWL"]),
    ugx: json["UGX"] == null ? null : Aed.fromJson(json["UGX"]),
    vuv: json["VUV"] == null ? null : Aed.fromJson(json["VUV"]),
    ils: json["ILS"] == null ? null : Aed.fromJson(json["ILS"]),
    jod: json["JOD"] == null ? null : Aed.fromJson(json["JOD"]),
    pkr: json["PKR"] == null ? null : Aed.fromJson(json["PKR"]),
    bnd: json["BND"] == null ? null : Aed.fromJson(json["BND"]),
    aed: json["AED"] == null ? null : Aed.fromJson(json["AED"]),
    gel: json["GEL"] == null ? null : Aed.fromJson(json["GEL"]),
    scr: json["SCR"] == null ? null : Aed.fromJson(json["SCR"]),
    fkp: json["FKP"] == null ? null : Aed.fromJson(json["FKP"]),
    gip: json["GIP"] == null ? null : Aed.fromJson(json["GIP"]),
    sbd: json["SBD"] == null ? null : Aed.fromJson(json["SBD"]),
    uzs: json["UZS"] == null ? null : Aed.fromJson(json["UZS"]),
    mnt: json["MNT"] == null ? null : Aed.fromJson(json["MNT"]),
    gyd: json["GYD"] == null ? null : Aed.fromJson(json["GYD"]),
    bam: json["BAM"] == null ? null : Bam.fromJson(json["BAM"]),
    top: json["TOP"] == null ? null : Aed.fromJson(json["TOP"]),
    rwf: json["RWF"] == null ? null : Aed.fromJson(json["RWF"]),
    bgn: json["BGN"] == null ? null : Aed.fromJson(json["BGN"]),
    ngn: json["NGN"] == null ? null : Aed.fromJson(json["NGN"]),
    shp: json["SHP"] == null ? null : Aed.fromJson(json["SHP"]),
    fok: json["FOK"] == null ? null : Aed.fromJson(json["FOK"]),
    lsl: json["LSL"] == null ? null : Aed.fromJson(json["LSL"]),
    zar: json["ZAR"] == null ? null : Aed.fromJson(json["ZAR"]),
    cve: json["CVE"] == null ? null : Aed.fromJson(json["CVE"]),
    kpw: json["KPW"] == null ? null : Aed.fromJson(json["KPW"]),
    cuc: json["CUC"] == null ? null : Aed.fromJson(json["CUC"]),
    cup: json["CUP"] == null ? null : Aed.fromJson(json["CUP"]),
    srd: json["SRD"] == null ? null : Aed.fromJson(json["SRD"]),
    nzd: json["NZD"] == null ? null : Aed.fromJson(json["NZD"]),
    mxn: json["MXN"] == null ? null : Aed.fromJson(json["MXN"]),
    php: json["PHP"] == null ? null : Aed.fromJson(json["PHP"]),
    sek: json["SEK"] == null ? null : Aed.fromJson(json["SEK"]),
    jmd: json["JMD"] == null ? null : Aed.fromJson(json["JMD"]),
    ves: json["VES"] == null ? null : Aed.fromJson(json["VES"]),
    jep: json["JEP"] == null ? null : Aed.fromJson(json["JEP"]),
    afn: json["AFN"] == null ? null : Aed.fromJson(json["AFN"]),
    mop: json["MOP"] == null ? null : Aed.fromJson(json["MOP"]),
    syp: json["SYP"] == null ? null : Aed.fromJson(json["SYP"]),
    stn: json["STN"] == null ? null : Aed.fromJson(json["STN"]),
    chf: json["CHF"] == null ? null : Aed.fromJson(json["CHF"]),
    szl: json["SZL"] == null ? null : Aed.fromJson(json["SZL"]),
    myr: json["MYR"] == null ? null : Aed.fromJson(json["MYR"]),
    pln: json["PLN"] == null ? null : Aed.fromJson(json["PLN"]),
    ssp: json["SSP"] == null ? null : Aed.fromJson(json["SSP"]),
    khr: json["KHR"] == null ? null : Aed.fromJson(json["KHR"]),
    lkr: json["LKR"] == null ? null : Aed.fromJson(json["LKR"]),
    ghs: json["GHS"] == null ? null : Aed.fromJson(json["GHS"]),
    ern: json["ERN"] == null ? null : Aed.fromJson(json["ERN"]),
    bzd: json["BZD"] == null ? null : Aed.fromJson(json["BZD"]),
    ttd: json["TTD"] == null ? null : Aed.fromJson(json["TTD"]),
    ckd: json["CKD"] == null ? null : Aed.fromJson(json["CKD"]),
    mzn: json["MZN"] == null ? null : Aed.fromJson(json["MZN"]),
    irr: json["IRR"] == null ? null : Aed.fromJson(json["IRR"]),
    cdf: json["CDF"] == null ? null : Aed.fromJson(json["CDF"]),
    mvr: json["MVR"] == null ? null : Aed.fromJson(json["MVR"]),
    mru: json["MRU"] == null ? null : Aed.fromJson(json["MRU"]),
    czk: json["CZK"] == null ? null : Aed.fromJson(json["CZK"]),
    byn: json["BYN"] == null ? null : Aed.fromJson(json["BYN"]),
    all: json["ALL"] == null ? null : Aed.fromJson(json["ALL"]),
    mwk: json["MWK"] == null ? null : Aed.fromJson(json["MWK"]),
    sos: json["SOS"] == null ? null : Aed.fromJson(json["SOS"]),
    rsd: json["RSD"] == null ? null : Aed.fromJson(json["RSD"]),
    isk: json["ISK"] == null ? null : Aed.fromJson(json["ISK"]),
    wst: json["WST"] == null ? null : Aed.fromJson(json["WST"]),
    mmk: json["MMK"] == null ? null : Aed.fromJson(json["MMK"]),
    thb: json["THB"] == null ? null : Aed.fromJson(json["THB"]),
    lbp: json["LBP"] == null ? null : Aed.fromJson(json["LBP"]),
    kzt: json["KZT"] == null ? null : Aed.fromJson(json["KZT"]),
    tvd: json["TVD"] == null ? null : Aed.fromJson(json["TVD"]),
    huf: json["HUF"] == null ? null : Aed.fromJson(json["HUF"]),
    nok: json["NOK"] == null ? null : Aed.fromJson(json["NOK"]),
    kmf: json["KMF"] == null ? null : Aed.fromJson(json["KMF"]),
    sdg: json["SDG"] == null ? null : Bam.fromJson(json["SDG"]),
    amd: json["AMD"] == null ? null : Aed.fromJson(json["AMD"]),
    uyu: json["UYU"] == null ? null : Aed.fromJson(json["UYU"]),
    sar: json["SAR"] == null ? null : Aed.fromJson(json["SAR"]),
    bif: json["BIF"] == null ? null : Aed.fromJson(json["BIF"]),
    uah: json["UAH"] == null ? null : Aed.fromJson(json["UAH"]),
    sll: json["SLL"] == null ? null : Aed.fromJson(json["SLL"]),
    bmd: json["BMD"] == null ? null : Aed.fromJson(json["BMD"]),
    nad: json["NAD"] == null ? null : Aed.fromJson(json["NAD"]),
    htg: json["HTG"] == null ? null : Aed.fromJson(json["HTG"]),
    lyd: json["LYD"] == null ? null : Aed.fromJson(json["LYD"]),
    pgk: json["PGK"] == null ? null : Aed.fromJson(json["PGK"]),
    aoa: json["AOA"] == null ? null : Aed.fromJson(json["AOA"]),
    idr: json["IDR"] == null ? null : Aed.fromJson(json["IDR"]),
    ars: json["ARS"] == null ? null : Aed.fromJson(json["ARS"]),
    pab: json["PAB"] == null ? null : Aed.fromJson(json["PAB"]),
    jpy: json["JPY"] == null ? null : Aed.fromJson(json["JPY"]),
    nio: json["NIO"] == null ? null : Aed.fromJson(json["NIO"]),
    tzs: json["TZS"] == null ? null : Aed.fromJson(json["TZS"]),
    tjs: json["TJS"] == null ? null : Aed.fromJson(json["TJS"]),
    gtq: json["GTQ"] == null ? null : Aed.fromJson(json["GTQ"]),
    bhd: json["BHD"] == null ? null : Aed.fromJson(json["BHD"]),
    mga: json["MGA"] == null ? null : Aed.fromJson(json["MGA"]),
    djf: json["DJF"] == null ? null : Aed.fromJson(json["DJF"]),
    gmd: json["GMD"] == null ? null : Aed.fromJson(json["GMD"]),
    bwp: json["BWP"] == null ? null : Aed.fromJson(json["BWP"]),
    currenciesTry: json["TRY"] == null ? null : Aed.fromJson(json["TRY"]),
    azn: json["AZN"] == null ? null : Aed.fromJson(json["AZN"]),
    crc: json["CRC"] == null ? null : Aed.fromJson(json["CRC"]),
    vnd: json["VND"] == null ? null : Aed.fromJson(json["VND"]),
    hrk: json["HRK"] == null ? null : Aed.fromJson(json["HRK"]),
    qar: json["QAR"] == null ? null : Aed.fromJson(json["QAR"]),
    cop: json["COP"] == null ? null : Aed.fromJson(json["COP"]),
  );

  Map<String, dynamic> toJson() => {
    "BBD": bbd == null ? null : bbd?.toJson(),
    "USD": usd == null ? null : usd?.toJson(),
    "XAF": xaf == null ? null : xaf?.toJson(),
    "BRL": brl == null ? null : brl?.toJson(),
    "EUR": eur == null ? null : eur?.toJson(),
    "AUD": aud == null ? null : aud?.toJson(),
    "KID": kid == null ? null : kid?.toJson(),
    "RON": ron == null ? null : ron?.toJson(),
    "LAK": lak == null ? null : lak?.toJson(),
    "XOF": xof == null ? null : xof?.toJson(),
    "IQD": iqd == null ? null : iqd?.toJson(),
    "KES": kes == null ? null : kes?.toJson(),
    "KYD": kyd == null ? null : kyd?.toJson(),
    "GNF": gnf == null ? null : gnf?.toJson(),
    "TND": tnd == null ? null : tnd?.toJson(),
    "BOB": bob == null ? null : bob?.toJson(),
    "CNY": cny == null ? null : cny?.toJson(),
    "KRW": krw == null ? null : krw?.toJson(),
    "KWD": kwd == null ? null : kwd?.toJson(),
    "DZD": dzd == null ? null : dzd?.toJson(),
    "AWG": awg == null ? null : awg?.toJson(),
    "RUB": rub == null ? null : rub?.toJson(),
    "DKK": dkk == null ? null : dkk?.toJson(),
    "GBP": gbp == null ? null : gbp?.toJson(),
    "CAD": cad == null ? null : cad?.toJson(),
    "FJD": fjd == null ? null : fjd?.toJson(),
    "XPF": xpf == null ? null : xpf?.toJson(),
    "PEN": pen == null ? null : pen?.toJson(),
    "CLP": clp == null ? null : clp?.toJson(),
    "EGP": egp == null ? null : egp?.toJson(),
    "MKD": mkd == null ? null : mkd?.toJson(),
    "BDT": bdt == null ? null : bdt?.toJson(),
    "SGD": sgd == null ? null : sgd?.toJson(),
    "ETB": etb == null ? null : etb?.toJson(),
    "BSD": bsd == null ? null : bsd?.toJson(),
    "TMT": tmt == null ? null : tmt?.toJson(),
    "ANG": ang == null ? null : ang?.toJson(),
    "ZMW": zmw == null ? null : zmw?.toJson(),
    "HNL": hnl == null ? null : hnl?.toJson(),
    "MAD": mad == null ? null : mad?.toJson(),
    "NPR": npr == null ? null : npr?.toJson(),
    "XCD": xcd == null ? null : xcd?.toJson(),
    "OMR": omr == null ? null : omr?.toJson(),
    "HKD": hkd == null ? null : hkd?.toJson(),
    "PYG": pyg == null ? null : pyg?.toJson(),
    "MDL": mdl == null ? null : mdl?.toJson(),
    "KGS": kgs == null ? null : kgs?.toJson(),
    "MUR": mur == null ? null : mur?.toJson(),
    "BTN": btn == null ? null : btn?.toJson(),
    "INR": inr == null ? null : inr?.toJson(),
    "YER": yer == null ? null : yer?.toJson(),
    "IMP": imp == null ? null : imp?.toJson(),
    "DOP": dop == null ? null : dop?.toJson(),
    "GGP": ggp == null ? null : ggp?.toJson(),
    "LRD": lrd == null ? null : lrd?.toJson(),
    "ZWL": zwl == null ? null : zwl?.toJson(),
    "UGX": ugx == null ? null : ugx?.toJson(),
    "ILS": ils == null ? null : ils?.toJson(),
    "JOD": jod == null ? null : jod?.toJson(),
    "PKR": pkr == null ? null : pkr?.toJson(),
    "BND": bnd == null ? null : bnd?.toJson(),
    "AED": aed == null ? null : aed?.toJson(),
    "GEL": gel == null ? null : gel?.toJson(),
    "SCR": scr == null ? null : scr?.toJson(),
    "FKP": fkp == null ? null : fkp?.toJson(),
    "GIP": gip == null ? null : gip?.toJson(),
    "SBD": sbd == null ? null : sbd?.toJson(),
    "UZS": uzs == null ? null : uzs?.toJson(),
    "MNT": mnt == null ? null : mnt?.toJson(),
    "GYD": gyd == null ? null : gyd?.toJson(),
    "BAM": bam == null ? null : bam?.toJson(),
    "TOP": top == null ? null : top?.toJson(),
    "RWF": rwf == null ? null : rwf?.toJson(),
    "BGN": bgn == null ? null : bgn?.toJson(),
    "NGN": ngn == null ? null : ngn?.toJson(),
    "SHP": shp == null ? null : shp?.toJson(),
    "FOK": fok == null ? null : fok?.toJson(),
    "LSL": lsl == null ? null : lsl?.toJson(),
    "ZAR": zar == null ? null : zar?.toJson(),
    "CVE": cve == null ? null : cve?.toJson(),
    "KPW": kpw == null ? null : kpw?.toJson(),
    "CUC": cuc == null ? null : cuc?.toJson(),
    "CUP": cup == null ? null : cup?.toJson(),
    "SRD": srd == null ? null : srd?.toJson(),
    "NZD": nzd == null ? null : nzd?.toJson(),
    "MXN": mxn == null ? null : mxn?.toJson(),
    "PHP": php == null ? null : php?.toJson(),
    "SEK": sek == null ? null : sek?.toJson(),
    "JMD": jmd == null ? null : jmd?.toJson(),
    "VES": ves == null ? null : ves?.toJson(),
    "JEP": jep == null ? null : jep?.toJson(),
    "AFN": afn == null ? null : afn?.toJson(),
    "MOP": mop == null ? null : mop?.toJson(),
    "SYP": syp == null ? null : syp?.toJson(),
    "STN": stn == null ? null : stn?.toJson(),
    "CHF": chf == null ? null : chf?.toJson(),
    "SZL": szl == null ? null : szl?.toJson(),
    "MYR": myr == null ? null : myr?.toJson(),
    "PLN": pln == null ? null : pln?.toJson(),
    "SSP": ssp == null ? null : ssp?.toJson(),
    "KHR": khr == null ? null : khr?.toJson(),
    "LKR": lkr == null ? null : lkr?.toJson(),
    "GHS": ghs == null ? null : ghs?.toJson(),
    "ERN": ern == null ? null : ern?.toJson(),
    "BZD": bzd == null ? null : bzd?.toJson(),
    "TTD": ttd == null ? null : ttd?.toJson(),
    "CKD": ckd == null ? null : ckd?.toJson(),
    "MZN": mzn == null ? null : mzn?.toJson(),
    "IRR": irr == null ? null : irr?.toJson(),
    "CDF": cdf == null ? null : cdf?.toJson(),
    "MVR": mvr == null ? null : mvr?.toJson(),
    "MRU": mru == null ? null : mru?.toJson(),
    "CZK": czk == null ? null : czk?.toJson(),
    "BYN": byn == null ? null : byn?.toJson(),
    "ALL": all == null ? null : all?.toJson(),
    "MWK": mwk == null ? null : mwk?.toJson(),
    "SOS": sos == null ? null : sos?.toJson(),
    "RSD": rsd == null ? null : rsd?.toJson(),
    "ISK": isk == null ? null : isk?.toJson(),
    "WST": wst == null ? null : wst?.toJson(),
    "MMK": mmk == null ? null : mmk?.toJson(),
    "THB": thb == null ? null : thb?.toJson(),
    "LBP": lbp == null ? null : lbp?.toJson(),
    "KZT": kzt == null ? null : kzt?.toJson(),
    "TVD": tvd == null ? null : tvd?.toJson(),
    "HUF": huf == null ? null : huf?.toJson(),
    "NOK": nok == null ? null : nok?.toJson(),
    "KMF": kmf == null ? null : kmf?.toJson(),
    "SDG": sdg == null ? null : sdg?.toJson(),
    "AMD": amd == null ? null : amd?.toJson(),
    "UYU": uyu == null ? null : uyu?.toJson(),
    "SAR": sar == null ? null : sar?.toJson(),
    "BIF": bif == null ? null : bif?.toJson(),
    "UAH": uah == null ? null : uah?.toJson(),
    "SLL": sll == null ? null : sll?.toJson(),
    "BMD": bmd == null ? null : bmd?.toJson(),
    "NAD": nad == null ? null : nad?.toJson(),
    "HTG": htg == null ? null : htg?.toJson(),
    "LYD": lyd == null ? null : lyd?.toJson(),
    "PGK": pgk == null ? null : pgk?.toJson(),
    "AOA": aoa == null ? null : aoa?.toJson(),
    "IDR": idr == null ? null : idr?.toJson(),
    "ARS": ars == null ? null : ars?.toJson(),
    "PAB": pab == null ? null : pab?.toJson(),
    "JPY": jpy == null ? null : jpy?.toJson(),
    "NIO": nio == null ? null : nio?.toJson(),
    "TZS": tzs == null ? null : tzs?.toJson(),
    "TJS": tjs == null ? null : tjs?.toJson(),
    "GTQ": gtq == null ? null : gtq?.toJson(),
    "BHD": bhd == null ? null : bhd?.toJson(),
    "MGA": mga == null ? null : mga?.toJson(),
    "DJF": djf == null ? null : djf?.toJson(),
    "GMD": gmd == null ? null : gmd?.toJson(),
    "BWP": bwp == null ? null : bwp?.toJson(),
    "TRY": currenciesTry == null ? null : currenciesTry?.toJson(),
    "AZN": azn == null ? null : azn?.toJson(),
    "CRC": crc == null ? null : crc?.toJson(),
    "VND": vnd == null ? null : vnd?.toJson(),
    "HRK": hrk == null ? null : hrk?.toJson(),
    "QAR": qar == null ? null : qar?.toJson(),
    "COP": cop == null ? null : cop?.toJson(),
  };
}

class Aed {
  Aed({
    this.name,
    this.symbol,
  });

  String? name;
  String? symbol;

  factory Aed.fromJson(Map<String, dynamic> json) => Aed(
    name: json["name"] == null ? null : json["name"],
    symbol: json["symbol"] == null ? null : json["symbol"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "symbol": symbol == null ? null : symbol,
  };
}

class Bam {
  Bam({
    this.name,
  });

  String? name;

  factory Bam.fromJson(Map<String, dynamic> json) => Bam(
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
  };
}

class Demonyms {
  Demonyms({
    this.eng,
    this.fra,
  });

  Eng? eng;
  Eng? fra;

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
    eng: json["eng"] == null ? null : Eng.fromJson(json["eng"]),
    fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
  );

  Map<String, dynamic> toJson() => {
    "eng": eng == null ? null : eng?.toJson(),
    "fra": fra == null ? null : fra?.toJson(),
  };
}

class Eng {
  Eng({
    this.f,
    this.m,
  });

  String? f;
  String? m;

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
    f: json["f"] == null ? null : json["f"],
    m: json["m"] == null ? null : json["m"],
  );

  Map<String, dynamic> toJson() => {
    "f": f == null ? null : f,
    "m": m == null ? null : m,
  };
}

class Idd {
  Idd({
    this.root,
    this.suffixes,
  });

  String? root;
  List<String>? suffixes;

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
    root: json["root"] == null ? null : json["root"],
    suffixes: json["suffixes"] == null ? null : List<String>.from(json["suffixes"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "root": root == null ? null : root,
    "suffixes": suffixes == null ? null : List<dynamic>.from(suffixes!.map((x) => x)),
  };
}

class Maps {
  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  String? googleMaps;
  String? openStreetMaps;

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
    googleMaps: json["googleMaps"] == null ? null : json["googleMaps"],
    openStreetMaps: json["openStreetMaps"] == null ? null : json["openStreetMaps"],
  );

  Map<String, dynamic> toJson() => {
    "googleMaps": googleMaps == null ? null : googleMaps,
    "openStreetMaps": openStreetMaps == null ? null : openStreetMaps,
  };
}

class Name {
  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  String? common;
  String? official;
  Map<String, Translation>? nativeName;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    common: json["common"] == null ? null : json["common"],
    official: json["official"] == null ? null : json["official"],
    nativeName: json["nativeName"] == null ? null : Map.from(json["nativeName"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
  );

  Map<String, dynamic> toJson() => {
    "common": common == null ? null : common,
    "official": official == null ? null : official,
    "nativeName": nativeName == null ? null : Map.from(nativeName!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
  };
}

class Translation {
  Translation({
    this.official,
    this.common,
  });

  String? official;
  String? common;

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
    official: json["official"] == null ? null : json["official"],
    common: json["common"] == null ? null : json["common"],
  );

  Map<String, dynamic> toJson() => {
    "official": official == null ? null : official,
    "common": common == null ? null : common,
  };
}

class PostalCode {
  PostalCode({
    this.format,
    this.regex,
  });

  String? format;
  String? regex;

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
    format: json["format"] == null ? null : json["format"],
    regex: json["regex"] == null ? null : json["regex"],
  );

  Map<String, dynamic> toJson() => {
    "format": format == null ? null : format,
    "regex": regex == null ? null : regex,
  };
}

enum Region { AMERICAS, AFRICA, EUROPE, OCEANIA, ASIA, ANTARCTIC }

final regionValues = EnumValues({
  "Africa": Region.AFRICA,
  "Americas": Region.AMERICAS,
  "Antarctic": Region.ANTARCTIC,
  "Asia": Region.ASIA,
  "Europe": Region.EUROPE,
  "Oceania": Region.OCEANIA
});

enum StartOfWeek { MONDAY, SUNDAY, SATURDAY }

final startOfWeekValues = EnumValues({
  "monday": StartOfWeek.MONDAY,
  "saturday": StartOfWeek.SATURDAY,
  "sunday": StartOfWeek.SUNDAY
});

enum Status { OFFICIALLY_ASSIGNED, USER_ASSIGNED }

final statusValues = EnumValues({
  "officially-assigned": Status.OFFICIALLY_ASSIGNED,
  "user-assigned": Status.USER_ASSIGNED
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map?.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
