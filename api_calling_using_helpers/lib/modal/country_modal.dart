class Country {
  int gdp;
  double sexRatio;
  int surfaceArea;
  double lifeExpectancyMale;
  double unemployment;
  int imports;
  double homicideRate;
  Currency currency;
  String iso2;
  double employmentServices;
  double employmentIndustry;
  double urbanPopulationGrowth;
  double secondarySchoolEnrollmentFemale;
  double employmentAgriculture;
  String capital;
  double co2Emissions;
  int forestedArea;
  int tourists;
  int exports;
  double lifeExpectancyFemale;
  int postSecondaryEnrollmentFemale;
  int postSecondaryEnrollmentMale;
  double primarySchoolEnrollmentFemale;
  double infantMortality;
  double gdpGrowth;
  int threatenedSpecies;
  int population;
  double urbanPopulation;
  double secondarySchoolEnrollmentMale;
  String name;
  double popGrowth;
  String region;
  double popDensity;
  int internetUsers;
  double gdpPerCapita;
  double fertility;
  double refugees;
  double primarySchoolEnrollmentMale;

  Country({
    required this.gdp,
    required this.sexRatio,
    required this.surfaceArea,
    required this.lifeExpectancyMale,
    required this.unemployment,
    required this.imports,
    required this.homicideRate,
    required this.currency,
    required this.iso2,
    required this.employmentServices,
    required this.employmentIndustry,
    required this.urbanPopulationGrowth,
    required this.secondarySchoolEnrollmentFemale,
    required this.employmentAgriculture,
    required this.capital,
    required this.co2Emissions,
    required this.forestedArea,
    required this.tourists,
    required this.exports,
    required this.lifeExpectancyFemale,
    required this.postSecondaryEnrollmentFemale,
    required this.postSecondaryEnrollmentMale,
    required this.primarySchoolEnrollmentFemale,
    required this.infantMortality,
    required this.gdpGrowth,
    required this.threatenedSpecies,
    required this.population,
    required this.urbanPopulation,
    required this.secondarySchoolEnrollmentMale,
    required this.name,
    required this.popGrowth,
    required this.region,
    required this.popDensity,
    required this.internetUsers,
    required this.gdpPerCapita,
    required this.fertility,
    required this.refugees,
    required this.primarySchoolEnrollmentMale,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        gdp: json["gdp"],
        sexRatio: json["sex_ratio"]?.toDouble(),
        surfaceArea: json["surface_area"],
        lifeExpectancyMale: json["life_expectancy_male"]?.toDouble(),
        unemployment: json["unemployment"]?.toDouble(),
        imports: json["imports"],
        homicideRate: json["homicide_rate"]?.toDouble(),
        currency: Currency.fromJson(json["currency"]),
        iso2: json["iso2"],
        employmentServices: json["employment_services"]?.toDouble(),
        employmentIndustry: json["employment_industry"]?.toDouble(),
        urbanPopulationGrowth: json["urban_population_growth"]?.toDouble(),
        secondarySchoolEnrollmentFemale:
            json["secondary_school_enrollment_female"]?.toDouble(),
        employmentAgriculture: json["employment_agriculture"]?.toDouble(),
        capital: json["capital"],
        co2Emissions: json["co2_emissions"]?.toDouble(),
        forestedArea: json["forested_area"],
        tourists: json["tourists"],
        exports: json["exports"],
        lifeExpectancyFemale: json["life_expectancy_female"]?.toDouble(),
        postSecondaryEnrollmentFemale: json["post_secondary_enrollment_female"],
        postSecondaryEnrollmentMale: json["post_secondary_enrollment_male"],
        primarySchoolEnrollmentFemale:
            json["primary_school_enrollment_female"]?.toDouble(),
        infantMortality: json["infant_mortality"]?.toDouble(),
        gdpGrowth: json["gdp_growth"]?.toDouble(),
        threatenedSpecies: json["threatened_species"],
        population: json["population"],
        urbanPopulation: json["urban_population"]?.toDouble(),
        secondarySchoolEnrollmentMale:
            json["secondary_school_enrollment_male"]?.toDouble(),
        name: json["name"],
        popGrowth: json["pop_growth"]?.toDouble(),
        region: json["region"],
        popDensity: json["pop_density"]?.toDouble(),
        internetUsers: json["internet_users"],
        gdpPerCapita: json["gdp_per_capita"]?.toDouble(),
        fertility: json["fertility"]?.toDouble(),
        refugees: json["refugees"]?.toDouble(),
        primarySchoolEnrollmentMale:
            json["primary_school_enrollment_male"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "gdp": gdp,
        "sex_ratio": sexRatio,
        "surface_area": surfaceArea,
        "life_expectancy_male": lifeExpectancyMale,
        "unemployment": unemployment,
        "imports": imports,
        "homicide_rate": homicideRate,
        "currency": currency.toJson(),
        "iso2": iso2,
        "employment_services": employmentServices,
        "employment_industry": employmentIndustry,
        "urban_population_growth": urbanPopulationGrowth,
        "secondary_school_enrollment_female": secondarySchoolEnrollmentFemale,
        "employment_agriculture": employmentAgriculture,
        "capital": capital,
        "co2_emissions": co2Emissions,
        "forested_area": forestedArea,
        "tourists": tourists,
        "exports": exports,
        "life_expectancy_female": lifeExpectancyFemale,
        "post_secondary_enrollment_female": postSecondaryEnrollmentFemale,
        "post_secondary_enrollment_male": postSecondaryEnrollmentMale,
        "primary_school_enrollment_female": primarySchoolEnrollmentFemale,
        "infant_mortality": infantMortality,
        "gdp_growth": gdpGrowth,
        "threatened_species": threatenedSpecies,
        "population": population,
        "urban_population": urbanPopulation,
        "secondary_school_enrollment_male": secondarySchoolEnrollmentMale,
        "name": name,
        "pop_growth": popGrowth,
        "region": region,
        "pop_density": popDensity,
        "internet_users": internetUsers,
        "gdp_per_capita": gdpPerCapita,
        "fertility": fertility,
        "refugees": refugees,
        "primary_school_enrollment_male": primarySchoolEnrollmentMale,
      };
}

class Currency {
  String code;
  String name;

  Currency({
    required this.code,
    required this.name,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        code: json["code"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
      };
}
