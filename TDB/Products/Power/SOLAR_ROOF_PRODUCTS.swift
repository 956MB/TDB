//
//  SOLAR_ROOF_PRODUCTS.swift
//  TDB
//
//  Created by Trevor Bays on 3/20/22.
//

let SOLAR_ROOF_PRODUCT = Product(
    title: ProductTitle(nameFull: "Solar Roof", nameShort: "Solar Roof", year: ""),
    thumbnail: "",
    model_dae: "",
    model_usdz: "",
    model_height: 175,
    // TODO: TEMP PLACEHOLDER VALUES
    preview_w: 380,
    preview_h: 170,
    header_min_h: 230,
    previews: [
        ""
    ],
    trims: [
    ],
    sections: [
        ProductSection(header: "OVERVIEW", rows: [
            ProductRow(title: "Manufacturer", values: ["Tesla Energy"]),
            ProductRow(title: "Industry", values: ["Renewable energy"]),
            ProductRow(title: "Founded", values: ["April 30, 2015; 6 years ago"]),
            ProductRow(title: "Production", values: ["2020 - present"]),
            ProductRow(title: "Parent", values: ["Tesla, Inc."]),
            ProductRow(title: "Production output", values: ["3.99 GWh batteries (2021)"]),
            ProductRow(title: "Revenue", values: ["US$2.79 billion (2021)"]),
            ProductRow(title: "Base price (US)", values: ["TBD"]),
            ProductRow(title: "Tile/Power Warranty", values: ["25 years"]),
        ]),
        ProductSection(header: "SPECS", rows: [
            ProductRow(title: "Wind Rating", values: ["ASTM D3161 Class F"]),
            ProductRow(title: "Fire Rating", values: ["Class A (highest rating)"]),
            ProductRow(title: "Hail Rating", values: ["ANSI FM 4473 Class 3"]),
            ProductRow(title: "Roof Pitch", values: ["2:12 to 24:12"]),
            ProductRow(title: "Inverter Power", values: ["3.8kW / 7.6kW\n97.5% efficiency"]),
        ]),
//        ProductSection(header: "DIMENSIONS", rows: [
//            ProductRow(title: "Wheelbase", values: ["149.9 in (3,807 mm)"]),
//            ProductRow(title: "Length", values: ["231.7 in (5,885 mm)"]),
//            ProductRow(title: "Width", values: ["79.8 in (2,027 mm)"]),
//            ProductRow(title: "Height", values: ["75 in (1,905 mm)"]),
//            ProductRow(title: "Payload", values: ["3499.99 lb (1587.57 kg)"]),
//            ProductRow(title: "Storage", values: ["100 cu ft"]),
//            ProductRow(title: "Vault length", values: ["6.5 ft"]),
//            ProductRow(title: "Towing capacity", values: ["7,500+ lbs", "10,000+ lbs", "14,000+ lbs"]),
//            ProductRow(title: "Ground clearance", values: ["up to 16\""]),
//            ProductRow(title: "Approach angle", values: ["35°"]),
//            ProductRow(title: "Departure angle", values: ["28°"]),
//            ProductRow(title: "Curb weight", values: ["3,627 lb (1,645 kg)", "3,814 lb (1,730 kg)", "4,072 lb (1,847 kg)"]),
//        ]),
        ProductSection(header: "SIZES", rows: [
            ProductRow(title: "Small", values: ["Power rating: 4.8kW\n# of Panels: 12\nRoof area: 260 sq ft"]),
            ProductRow(title: "Medium", values: ["Power rating: 9.6kW\n# of Panels: 24\nRoof area: 520 sq ft"]),
            ProductRow(title: "Large", values: ["Power rating: 14.4kW\n# of Panels: 36\nRoof area: 780 sq ft"]),
            ProductRow(title: "X-Large", values: ["Power rating: 19.2kW\n# of Panels: 48\nRoof area: 1,040 sq ft"]),
        ]),
    ]
)

let SOLAR_ROOF_PRODUCTS = ProductList(
    products: [
        SOLAR_ROOF_PRODUCT
    ],
    years: ["6F21":0],
    yearsSpan: "2020 - present",
    productDisabled: false,
    useHeader: "POWER",
    productID: ProductIdentifier._roof,
    categoryImage: "bolt.fill"
)
