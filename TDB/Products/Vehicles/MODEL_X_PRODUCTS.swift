//
//  MODEL_X_2021_PRODUCT.swift
//  TDB
//
//  Created by Trevor Bays on 7/10/21.
//

let MODEL_X_2022_PRODUCT = Product(
    title: ProductTitle(nameFull: "Model X", nameShort: "Model X", year: "2015"),
    thumbnail: "MODEL_X_THUMBNAIL",
    model_dae: "bmw.dae",
    model_usdz: "bmw.usdz",
    model_height: 120,
//    preview_w: 220,
//    preview_h: 150,
//    header_min_h: 250,
//    previews: [
//        "model_x_2"
//    ],

    // TODO: TEMP PLACEHOLDER VALUES
    preview_w: 380,
    preview_h: 170,
    header_min_h: 230,
    previews: [
        "MODEL_Y_PREVIEW"
    ],
    trims: [
        ProductTrim(title: "Long Range", index: 0),
        ProductTrim(title: "Plaid", index: 1)
    ],
    sections: [
        ProductSection(header: "OVERVIEW", rows: [
            ProductRow(title: "Manufacturer", values: ["Tesla, Inc."]),
            ProductRow(title: "Production", values: ["2015 - present"]),
            ProductRow(title: "Assembly", values: ["United States: Fremont, California (Tesla Factory)\nNetherlands: Tilburg"]),
            ProductRow(title: "Designer", values: ["Franz von Holzhausen"]),
            ProductRow(title: "Related", values: ["Tesla Model S\nTesla Model Y"]),
            ProductRow(title: "Base price (US)", values: ["$94,990", "$119,990"]),
        ]),
        ProductSection(header: "BODY AND CHASSIS", rows: [
            ProductRow(title: "Class", values: ["Mid-size luxury crossover SUV"]),
            ProductRow(title: "Body style", values: ["5-door SUV"]),
            ProductRow(title: "Doors", values: ["Conventional doors (front)\nFalcon-wing doors (rear)"]),
            ProductRow(title: "Layout", values: ["Dual Motor All-Wheel Drive", "Tri Motor All-Wheel Drive"]),
            ProductRow(title: "Roof", values: ["Tinted glass roof with ultraviolet and infrared protection, with mounting points for a roof rack (sold separately)"]),
            ProductRow(title: "Luggage", values: ["12.61 ft³, 81.21 ft³ with seat area"]),
            // ProductRow(title: "Rear seat", values: ["60/40-split-folding rear seat"]),
            // ProductRow(title: "Display", values: ["17″ widescreen display"]),
            // ProductRow(title: "Instrument cluster", values: ["12.3-inch (310 mm) liquid-crystal display"]),
            ProductRow(title: "Entry", values: ["Keyless NFC keycard and Bluetooth Low Energy smartphone connection for vehicle access; optional key fob."]),
            ProductRow(title: "Safety", values: ["Airbags including front driver/passenger, knee airbag driver/passenger, torso for front passengers, and curtain airbags front/rear"]),
        ]),
        ProductSection(header: "SPECS", rows: [
            ProductRow(title: "Powertrain", values: ["Dual Motor All-Wheel Drive", "Tri Motor All-Wheel Drive"]),
            ProductRow(title: "Electric motor", values: ["3-phase AC induction motor"]),
            ProductRow(title: "Transmission", values: ["1-speed fixed gear 9:1 ratio; direct-drive"]),
            ProductRow(title: "Battery", values: ["100 kWh 400 V lithium-ion"]),
            ProductRow(title: "Range", values: ["360 mi (est)", "340 mi (est)"]),
            ProductRow(title: "Efficiency", values: ["105/109/101", "97/100/95"]),
            // ProductRow(title: "DC Charging", values: [""]),
            // ProductRow(title: "AC Charging", values: ["32 miles (51 km) range per hour (240 V 32 A)", "39.7 miles (63.9 km) range per hour (240 V 48 A)"]),
            // ProductRow(title: "AC charge time (10% -> 90%)", values: ["6.25 hours", "6.5 hours"]),
            // ProductRow(title: "Power (peak)", values: ["670 hp", "1,020 hp"]),
            // ProductRow(title: "Power-to-weight", values: ["128 W/kg (12.8 lb/hp", "166 W/kg (9.9 lb/hp", "191 W/kg (8.6 lb/hp)"]),
            // ProductRow(title: "Torque (peak)", values: ["450 N⋅m (330 lb⋅ft", "510 N⋅m (376 lb⋅ft", "639 N⋅m (471 lb⋅ft)"]),
            ProductRow(title: "Acceleration", values: ["4.40s 0-60 mph", "2.60s 0-60 mph"]),
            ProductRow(title: "Quarter Mile", values: ["11.2s, 9.9s"]),
            ProductRow(title: "Top speed", values: ["155.3 mph (250km/h)", "162.2 mph (261km/h)"]),
        ]),
        ProductSection(header: "DIMENSIONS", rows: [
            ProductRow(title: "Wheelbase", values: ["116.7 in (2,964 mm)"]),
            ProductRow(title: "Length", values: ["198.3 in (5,037 mm)"]),
            ProductRow(title: "Width", values: ["78.7 in (1,999 mm)"]),
            ProductRow(title: "Height", values: ["66.0 in (1,676 mm)"]),
            ProductRow(title: "Curb weight", values: ["5630.61 lb (2,554 kg)", "5740.84 lb (2,604 kg)"]),
        ]),
        ProductSection(header: "OPTIONS", rows: [
            ProductRow(title: "Paint", values: ["Solid Black\nMidnight Silver Metallic\nDeep Blue Metallic\nPearl White Multi-Coat\nRed Multi-Coat"]),
            ProductRow(title: "Wheels", values: ["20\" (508 mm) Cyberstream\n22\" (558.8 mm) Turbine"]),
            ProductRow(title: "Interior", values: ["Black, White, Cream"]),
        ]),
    ]
)

let MODEL_X_PRODUCTS = ProductList(
    products: [
        MODEL_X_2022_PRODUCT
    ],
    years: ["A85A":0],
    yearsSpan: "2015 - present",
    productDisabled: false,
    useHeader: "",
    productID: ProductIdentifier._x,
    categoryImage: "folder"
)
