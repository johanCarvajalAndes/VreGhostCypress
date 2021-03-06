report({
  "testSuite": "BackstopJS",
  "tests": [
    {
      "pair": {
        "reference": "..\\bitmaps_reference\\backstop_default_Inicio_0_document_0_default.png",
        "test": "..\\bitmaps_test\\20210516-110211\\backstop_default_Inicio_0_document_0_default.png",
        "selector": "document",
        "fileName": "backstop_default_Inicio_0_document_0_default.png",
        "label": "Inicio",
        "requireSameDimensions": true,
        "misMatchThreshold": 0.1,
        "url": "../PruebasGhostE2Ev0/cypress/Report1.html",
        "referenceUrl": "../PruebasGhostE2Ev1/cypress/Report2.html",
        "expect": 0,
        "viewportLabel": "default",
        "diff": {
          "isSameDimensions": false,
          "dimensionDifference": {
            "width": 0,
            "height": -178
          },
          "misMatchPercentage": "13.45",
          "analysisTime": 282
        },
        "diffImage": "..\\bitmaps_test\\20210516-110211\\failed_diff_backstop_default_Inicio_0_document_0_default.png"
      },
      "status": "fail"
    },
    {
      "pair": {
        "reference": "..\\bitmaps_reference\\backstop_default_Paleta_de_colores_0__0_default.png",
        "test": "..\\bitmaps_test\\20210516-110211\\backstop_default_Paleta_de_colores_0__0_default.png",
        "selector": "",
        "fileName": "backstop_default_Paleta_de_colores_0__0_default.png",
        "label": "Paleta de colores",
        "requireSameDimensions": true,
        "misMatchThreshold": 0.1,
        "url": "../PruebasGhostE2Ev0/cypress/Report1.html",
        "referenceUrl": "../PruebasGhostE2Ev1/cypress/Report2.html",
        "expect": 0,
        "viewportLabel": "default",
        "engineErrorMsg": "waiting for selector `#generate` failed: timeout 30000ms exceeded",
        "diff": {
          "isSameDimensions": true,
          "dimensionDifference": {
            "width": 0,
            "height": 0
          },
          "misMatchPercentage": "0.00"
        }
      },
      "status": "pass"
    }
  ],
  "id": "backstop_default"
});