//
//  MODEL_S_2021_PRODUCT.swift
//  TDB
//
//  Created by Trevor Bays on 7/10/21.
//

let MODEL_S_2022_PRODUCT = Product(
    title: ProductTitle(nameFull: "Model S", nameShort: "Model S", year: "2022"),
    thumbnail: "MODEL_S_THUMBNAIL",
    model_dae: "senna.dae",
    model_usdz: "senna.usdz",
    model_height: 170,
//    preview_w: 370,
//    preview_h: 240,
//    header_min_h: 250,
//    previews: [
//        "MODEL_S_PREVIEW"
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
            ProductRow(title: "Production", values: ["Dec 2021 - present"]),
            ProductRow(title: "Code name", values: ["WhiteStar"]),
            ProductRow(title: "Assembly", values: ["United States: Fremont, California (Tesla Factory)\nNetherlands: Tilburg"]),
            ProductRow(title: "Designer", values: ["Franz von Holzhausen"]),
            ProductRow(title: "Related", values: ["Tesla Model X"]),
            ProductRow(title: "Base price (US)", values: ["$84,990", "$129,990"]),
        ]),
        ProductSection(header: "BODY AND CHASSIS", rows: [
            ProductRow(title: "Class", values: ["Full-size car/Executive car (E)"]),
            ProductRow(title: "Body style", values: ["5-door liftback"]),
            ProductRow(title: "Layout", values: ["Dual Motor All-Wheel Drive", "Tri Motor All-Wheel Drive"]),
            ProductRow(title: "Roof", values: ["Tinted glass roof with ultraviolet and infrared protection, with mounting points for a roof rack (sold separately)"]),
            ProductRow(title: "Luggage", values: ["25 to 26.3 ft³, 60.2 ft³ with seat area"]),
            ProductRow(title: "Rear seat", values: ["60/40-split-folding rear seat"]),
            ProductRow(title: "Display", values: ["17″ widescreen display"]),
            ProductRow(title: "Instrument cluster", values: ["12.3-inch (310 mm) liquid-crystal display"]),
            ProductRow(title: "Entry", values: ["Keyless NFC keycard and Bluetooth Low Energy smartphone connection for vehicle access; optional key fob."]),
            ProductRow(title: "Safety", values: ["Airbags including front driver/passenger, knee airbag driver/passenger, torso for front passengers, and curtain airbags front/rear"]),
        ]),
        ProductSection(header: "SPECS", rows: [
            ProductRow(title: "Powertrain", values: ["Dual Motor All-Wheel Drive", "Tri Motor All-Wheel Drive"]),
            ProductRow(title: "Electric motor", values: ["3-phase AC induction motor"]),
            ProductRow(title: "Transmission", values: ["1-speed fixed gear 9:1 ratio; direct-drive"]),
            ProductRow(title: "Battery", values: ["100 kWh 350 V lithium-ion"]),
            ProductRow(title: "Range", values: ["405 mi (EPA est.)", "390 mi (est.)"]),
            ProductRow(title: "Efficiency", values: ["120/124/115", "101/102/99"]),
            // ProductRow(title: "DC Charging", values: [""]),
            // ProductRow(title: "AC Charging", values: ["32 miles (51 km) range per hour (240 V 32 A)", "39.7 miles (63.9 km) range per hour (240 V 48 A)"]),
            // ProductRow(title: "AC charge time (10% -> 90%)", values: ["6.25 hours", "6.5 hours"]),
            ProductRow(title: "Power (peak)", values: ["670 hp", "1,020 hp"]),
            // ProductRow(title: "Power-to-weight", values: ["128 W/kg (12.8 lb/hp", "166 W/kg (9.9 lb/hp", "191 W/kg (8.6 lb/hp)"]),
            // ProductRow(title: "Torque (peak)", values: ["450 N⋅m (330 lb⋅ft", "510 N⋅m (376 lb⋅ft", "639 N⋅m (471 lb⋅ft)"]),
            ProductRow(title: "Acceleration", values: ["3.1 s 0-60 mph", "1.99 s 0-60 mph*"]),
            ProductRow(title: "Quarter Mile", values: ["9.23@155 mph trap speed"]),
            ProductRow(title: "Top speed", values: ["155.3 mph (250km/h)", "198.8 mph (320km/h)"]),
        ]),
        ProductSection(header: "DIMENSIONS", rows: [
            ProductRow(title: "Wheelbase", values: ["116.5 in (2,959 mm)"]),
            ProductRow(title: "Length", values: ["196.0 in (4,978 mm)"]),
            ProductRow(title: "Width", values: ["77.3 in (1,963 mm)"]),
            ProductRow(title: "Height", values: ["56.5 in (1,435 mm)"]),
            ProductRow(title: "Curb weight", values: ["4883.24 lb (2,215 kg)", "4940.56 lb (2,241 kg)"]),
        ]),
        ProductSection(header: "OPTIONS", rows: [
            ProductRow(title: "Paint", values: ["Solid Black\nMidnight Silver Metallic\nDeep Blue Metallic\nPearl White Multi-Coat\nRed Multi-Coat"]),
            ProductRow(title: "Wheels", values: ["19\" (482 mm) Tempest\n21\" (533 mm) Arachnid"]),
            ProductRow(title: "Interior", values: ["Black, White, Cream"]),
        ]),
    ]
)

let MODEL_S_PRODUCTS = ProductList(
    products: [
        MODEL_S_2022_PRODUCT
    ],
    years: ["6F21":0],
    yearsSpan: "2012 - present",
    productDisabled: false,
    useHeader: "VEHICLES",
    productID: ProductIdentifier._s,
    categoryImage: "folder"
)
