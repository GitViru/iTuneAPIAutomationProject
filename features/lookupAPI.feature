@LookupAPIFeature
Feature: iTunes LookupAPI Feature
  User require to validate LookupAPI with different input API parameters

  @singleParam @singleParamLookupAPI
  Scenario Outline: Validate LookupAPI for iTunes artist ID
    Given Query lookupAPI with single or multiple API parameters
      | ParamName | ParamValue |
      | id        |     909253 |
    Then validate LookupAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                  1 |
      
  @singleParam @singleParamLookupAPI
  Scenario Outline: Validate LookupAPI for iTunes ID
    Given Query lookupAPI with single or multiple API parameters
      | ParamName | ParamValue |
      | id        |  284910350 |
    Then validate LookupAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                  1 |
      
  @singleParam @singleParamLookupAPI
  Scenario Outline: Validate LookupAPI with AMG artist id
    Given Query lookupAPI with single or multiple API parameters
      | ParamName   | ParamValue |
      | amgArtistId |     468749 |
    Then validate LookupAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                  1 |
      
  @singleParam @singleParamLookupAPI
  Scenario Outline: Validate LookupAPI for multiple artists with multiple AMG artist ids
    Given Query lookupAPI with single or multiple API parameters
      | ParamName   | ParamValue  |
      | amgArtistId | 468749,5723 |
    Then validate LookupAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                  2 |
      
  @multipleParams @singleParamLookupAPI
  Scenario Outline: Validate all albums returned by Lookup API with id, entity
    Given Query lookupAPI with single or multiple API parameters
      | ParamName | ParamValue |
      | id        |     909253 |
      | entity    | album      |
    Then validate LookupAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 46 |
      
  @multipleParams @singleParamLookupAPI
  Scenario Outline: Validate Top 5 albums returned by LookupAPI for each artist with  id, entity
    Given Query lookupAPI with single or multiple API parameters
      | ParamName   | ParamValue  |
      | amgArtistId | 468749,5723 |
      | limit       |           5 |
      | entity      | album       |
    Then validate LookupAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 12 |

  @multipleParams @singleParamLookupAPI
  Scenario Outline: Validate 5 most recent songs returned by LookupAPI for each artist with Artistid, limit, entity, sort
    Given Query lookupAPI with single or multiple API parameters
      | ParamName   | ParamValue  |
      | amgArtistId | 468749,5723 |
      | limit       |           5 |
      | entity      | album       |
      | sort        | recent      |
    Then validate LookupAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 12 |

  @singleParam @singleParamLookupAPI
  Scenario Outline: Validate album or video returned by LookupAPI with UPC
    Given Query lookupAPI with single or multiple API parameters
      | ParamName | ParamValue   |
      | upc       | 720642462928 |
    Then validate LookupAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                  2 |

  @multipleParams @multipleParamsLookupAPI
  Scenario Outline: Validate album returned by LookupAPI with UPC including tracks on that album
    Given Query lookupAPI with single or multiple API parameters
      | ParamName | ParamValue   |
      | upc       | 720642462928 |
      | entity    | song         |
    Then validate LookupAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                 36 |

  @singleParam @singleParamLookupAPI
  Scenario Outline: Validate album returned by LookupAPI with AMG Album ID
    Given Query lookupAPI with single or multiple API parameters
      | ParamName  | ParamValue                                                             |
      | amgAlbumId | 15175,15176,15177,15178,15183,15184,15187,1519,15191,15195,15197,15198 |
    Then validate LookupAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                  2 |

  @singleParam @singleParamLookupAPI
  Scenario Outline: Validate Movie returned by LookupAPI with videoid
    Given Query lookupAPI with single or multiple API parameters
      | ParamName  | ParamValue |
      | amgVideoId |      17120 |
    Then validate LookupAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                  0 |

  @singleParam @singleParamLookupAPI
  Scenario Outline: Validate book returned by LookupAPI with isbn
    Given Query lookupAPI with single or multiple API parameters
      | ParamName | ParamValue    |
      | isbn      | 9780316069359 |
    Then validate LookupAPI response for "<ResponseParam>" "<ResponseParamValue>"

    Examples: 
      | ResponseParam | ResponseParamValue |
      | resultCount   |                  1 |
