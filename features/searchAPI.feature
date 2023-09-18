@SearchAPIFeature
Feature: iTunes SearchAPI Feature
  User require to validate SearchAPI with different input API parameters

  @singleParam @singleParamSearchAPI
  Scenario Outline: Validate SearchAPI with API parameter term
    Given Query iTunes SearchAPI with single or multiple API parameters
      | ParamName | ParamValue   |
      | term      | jack+johnson |
    Then validate SearchAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 50 |

  @multipleParams @multipleParamsSearchAPI
  Scenario Outline: Validate SearchAPI with multiple API parameters term, limit
    Given Query iTunes SearchAPI with single or multiple API parameters
      | ParamName | ParamValue   |
      | term      | jack+johnson |
      | limit     |           40 |
    Then validate SearchAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 40 |

  @multipleParams @multipleParamsSearchAPI
  Scenario Outline: Validate SearchAPI with multiple API parameters term, entity
    Given Query iTunes SearchAPI with single or multiple API parameters
      | ParamName | ParamValue   |
      | term      | jack+johnson |
      | entity    | musicVideo   |
    Then validate SearchAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 13 |

  @multipleParams @multipleParamsSearchAPI
  Scenario Outline: Validate SearchAPI with multiple API parameters term, country
    Given Query iTunes SearchAPI with single or multiple API parameters
      | ParamName | ParamValue |
      | term      | jim+jones  |
      | country   | ca         |
    Then validate SearchAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 50 |

  @multipleParams @multipleParamsSearchAPI
  Scenario Outline: Validate SearchAPI with multiple API parameters term, country, entity
    Given Query iTunes SearchAPI with single or multiple API parameters
      | ParamName | ParamValue  |
      | term      | jim+jones   |
      | country   | us          |
      | entity    | musicArtist |
    Then validate SearchAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 40 |

  @multipleParams @multipleParamsSearchAPI
  Scenario Outline: Validate SearchAPI with multiple API parameters term, country, entity, media
    Given Query iTunes SearchAPI with single or multiple API parameters
      | ParamName | ParamValue  |
      | term      | jim+jones   |
      | country   | us          |
      | media     | movie       |
      | entity    | movieArtist |
    Then validate SearchAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                  2 |

  @multipleParams @multipleParamsSearchAPI
  Scenario Outline: Validate SearchAPI with multiple API parameters term, country, entity, media, lang
    Given Query iTunes SearchAPI with single or multiple API parameters
      | ParamName | ParamValue  |
      | term      | jim+jones   |
      | country   | us          |
      | media     | musicVideo  |
      | entity    | musicArtist |
      | lang      | en-us       |
    Then validate SearchAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 40 |

  @multipleParams @multipleParamsSearchAPI
  Scenario Outline: Validate SearchAPI with multiple API parameters term, country, entity, media, lang, attribute
    Given Query iTunes SearchAPI with single or multiple API parameters
      | ParamName | ParamValue |
      | term      | jim+jones  |
      | country   | us         |
      | media     | music      |
      | entity    | song       |
      | lang      | en-us      |
      | attribute | mixTerm    |
    Then validate SearchAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 50 |

  @multipleParams @multipleParamsSearchAPI
  Scenario Outline: Validate SearchAPI with multiple API parameters term, country, entity, lang, media, attribute, version
    Given Query iTunes SearchAPI with single or multiple API parameters
      | ParamName | ParamValue |
      | term      | jim+jones  |
      | country   | us         |
      | media     | music      |
      | entity    | song       |
      | lang      | en-us      |
      | attribute | mixTerm    |
      | version   |          2 |
    Then validate SearchAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 50 |

  @multipleParams @multipleParamsSearchAPI
  Scenario Outline: Validate SearchAPI with multiple API parameters term, country, entity, lang, media, attribute, version, explicit
    Given Query iTunes SearchAPI with single or multiple API parameters
      | term      | jim+jones |
      | country   | us        |
      | media     | music     |
      | entity    | song      |
      | lang      | en-us     |
      | attribute | mixTerm   |
      | version   |         1 |
      | explicit  | Yes       |
    Then validate SearchAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 50 |

  @multipleParams @multipleParamsSearchAPI
  Scenario Outline: Validate SearchAPI with multiple API parameters term, country, entity, lang, media, attribute, version, explicit,limit
    Given Query iTunes SearchAPI with single or multiple API parameters
      | ParamName | ParamValue |
      | term      | jim+jones  |
      | country   | us         |
      | media     | music      |
      | entity    | song       |
      | lang      | en-us      |
      | attribute | mixTerm    |
      | version   |          2 |
      | explicit  | Yes        |
      | limit     |         40 |
    Then validate SearchAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 40 |
