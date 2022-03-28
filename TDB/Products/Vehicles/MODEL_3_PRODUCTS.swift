//
//  MODEL_3_2021_PRODUCT.swift
//  TDB
//
//  Created by Trevor Bays on 7/9/21.
//

let MODEL_3_2021_PRODUCT = Product(
    title: ProductTitle(nameFull: "Model 3", nameShort: "Model 3", year: "2021"),
    thumbnail: "MODEL_3_THUMBNAIL",
    model_dae: "porsche.dae",
    model_usdz: "porsche.usdz",
    model_height: 155,
//    preview_w: 380,
//    preview_h: 240,
//    header_min_h: 250,
//    previews: [
//        "MODEL_3_PREVIEW"
//    ],
    // TODO: TEMP PLACEHOLDER VALUES
    preview_w: 380,
    preview_h: 170,
    header_min_h: 230,
    previews: [
        "MODEL_Y_PREVIEW"
    ],
    trims: [
        ProductTrim(title: "Standard", index: 0),
        ProductTrim(title: "Long Range", index: 1),
        ProductTrim(title: "Performance", index: 2)
    ],
    sections: [
        ProductSection(header: "OVERVIEW", rows: [
            ProductRow(title: "Manufacturer", values: ["Tesla, Inc."]),
            ProductRow(title: "Production", values: ["Oct 2020 - present"]),
            ProductRow(title: "Assembly", values: ["United States: Fremont, California (Tesla Factory)\nChina: Shanghai (Gigafactory 3)"]),
            ProductRow(title: "Designer", values: ["Franz von Holzhausen"]),
            ProductRow(title: "Base price (US)", values: ["$39,990", "$48,990", "$56,990"]),
        ]),
        ProductSection(header: "BODY AND CHASSIS", rows: [
            ProductRow(title: "Class", values: ["Compact executive car (D)"]),
            ProductRow(title: "Body style", values: ["4-door fastback sedan"]),
            ProductRow(title: "Layout", values: ["Rear-motor, rear-wheel drive", "Dual-motor, all-wheel drive"]),
            ProductRow(title: "Related", values: ["Tesla Model Y\nTesla Model S"]),
            ProductRow(title: "Roof", values: ["Tinted glass roof with ultraviolet and infrared protection, with mounting points for a roof rack (sold separately).[234][235] A single pane of glass extends from the center of the roof to the trunk."]),
            ProductRow(title: "Luggage", values: ["Rear 12 cu ft (340 L) and front 3 cu ft (85 L) trunks with 15 cu ft (425 L) (542 L EU specs) total volume"]),
            ProductRow(title: "Rear seat", values: ["60/40-split-folding rear seat"]),
            ProductRow(title: "Display", values: ["Single center-mounted WUXGA 15.4-inch (39 cm) LCD touchscreen in landscape orientation that combines the instrument cluster and infotainment"]),
            ProductRow(title: "Entry", values: ["Keyless NFC keycard and Bluetooth Low Energy smartphone connection for vehicle access; optional key fob."]),
            ProductRow(title: "Safety", values: ["Airbags including front driver/passenger, knee airbag driver/passenger, torso for front passengers, and curtain airbags front/rear"]),
        ]),
        ProductSection(header: "SPECS", rows: [
            ProductRow(title: "Powertrain", values: ["Single-motor rear-wheel drive", "Dual-motor all-wheel drive"]),
            ProductRow(title: "Electric motor", values: ["Permanent magnet synchronous reluctance motor"]),
            ProductRow(title: "Transmission", values: ["1-speed fixed gear 9:1 ratio"]),
            ProductRow(title: "Battery", values: ["54 kWh (190 MJ)", "82 kWh (300 MJ)"]),
            ProductRow(title: "Range", values: ["EPA: 263 miles (423 km)", "EPA: 353 miles (568 km)", "EPA: 315 miles (507 km)"]),
            ProductRow(title: "Efficiency", values: ["141m(211km)/148m(222km)/132m(200km", "116m(187km)/120m(192km)/112m(180km)", "116m(187km)/120m(192km)/112m(180km)"]),
            ProductRow(title: "DC Charging", values: ["up to 170 kW (V3 Supercharger)", "up to 75 mi (121 km) in 5 minutes, and 180 mi (290 km) in 15 minutes. (250 kW V3 Supercharger)"]),
            ProductRow(title: "AC Charging", values: ["32 miles (51 km) range per hour (240 V 32 A)", "39.7 miles (63.9 km) range per hour (240 V 48 A)"]),
            ProductRow(title: "AC charge time (10% -> 90%)", values: ["6.25 hours", "6.5 hours"]),
            ProductRow(title: "Power (peak)", values: ["211 kW (283 hp)", "258 kW (346 hp)", "340 kW (450 hp)"]),
            ProductRow(title: "Power-to-weight", values: ["128 W/kg (12.8 lb/hp", "166 W/kg (9.9 lb/hp", "191 W/kg (8.6 lb/hp)"]),
            ProductRow(title: "Torque (peak)", values: ["450 N⋅m (330 lb⋅ft", "510 N⋅m (376 lb⋅ft", "639 N⋅m (471 lb⋅ft)"]),
            ProductRow(title: "Acceleration 0–60 mph (0–97 km/h)", values: ["5.3s", "4.0s", "3.1s"]),
            ProductRow(title: "Quarter Mile", values: ["13.5 sec @ 104.9 mph", "13.6 sec @ 101.9 mph", "11.5 sec @ 116.5 mph"]),
            ProductRow(title: "Top speed", values: ["140 mph (225 km/h)", "145 mph (233 km/h)", "162 mph (261 km/h)"]),
        ]),
        ProductSection(header: "DIMENSIONS", rows: [
            ProductRow(title: "Wheelbase", values: ["113.2 in (2,875 mm)"]),
            ProductRow(title: "Length", values: ["184.8 in (4,694 mm)"]),
            ProductRow(title: "Width", values: ["72.8 in (1,849 mm)"]),
            ProductRow(title: "Height", values: ["56.8 in (1,443 mm)"]),
            ProductRow(title: "Curb weight", values: ["3,627 lb (1,645 kg)", "3,814 lb (1,730 kg)", "4,072 lb (1,847 kg)"]),
        ]),
        ProductSection(header: "OPTIONS", rows: [
            ProductRow(title: "Paint", values: ["Pearl White Multi-Coat, Solid Black, Midnight Silver Metallic, Deep Blue Metallic, Red Multi-Coat (discontinued: Silver Metallic & Obsidian Black Metallic)"]),
            ProductRow(title: "Wheels", values: ["19-inch (480 mm) diameter 8.5-inch (220 mm) width 29.5 lb (13.4 kg, 235/40R19 tires", "20-inch (508 mm) 8.5-inch (220 mm) 235/35R20"]),
            ProductRow(title: "Interior", values: ["Black, White"]),
        ]),
    ]
)
//let MODEL_3_2020_PRODUCT = Product(
//    title: ProductTitle(nameFull: "Model 3", nameShort: "3", year: "2020"),
//    thumbnail: "MODEL_3_THUMBNAIL",
//    model_dae: "porsche.dae",
//    model_usdz: "porsche.usdz",
//    model_height: 170,
////    preview_w: 380,
////    preview_h: 240,
////    header_min_h: 250,
////    previews: [
////        "MODEL_3_PREVIEW"
////    ],
//    // TODO: TEMP PLACEHOLDER VALUES
//    preview_w: 380,
//    preview_h: 170,
//    header_min_h: 230,
//    previews: [
//        "MODEL_Y_PREVIEW"
//    ],
//    trims: [
//        ProductTrim(title: "Standard", index: 0),
//        ProductTrim(title: "Long Range", index: 1),
//        ProductTrim(title: "Performance", index: 2)
//    ],
//    sections: [
//        ProductSection(header: "OVERVIEW", rows: [
//            ProductRow(title: "Manufacturer", values: ["Tesla, Inc."]),
//            ProductRow(title: "Production", values: ["2019 - 2021"]),
//            ProductRow(title: "Assembly", values: ["United States: Fremont, California (Tesla Factory)\nChina: Shanghai (Gigafactory 3)"]),
//            ProductRow(title: "Designer", values: ["Franz von Holzhausen"]),
//            ProductRow(title: "Base price (US)", values: ["$39,990", "$48,990", "$56,990"]),
//        ]),
//        ProductSection(header: "BODY AND CHASSIS", rows: [
//            ProductRow(title: "Class", values: ["Compact executive car (D)"]),
//            ProductRow(title: "Body style", values: ["4-door fastback sedan"]),
//            ProductRow(title: "Layout", values: ["Rear-motor, rear-wheel drive", "Dual-motor, all-wheel drive"]),
//            ProductRow(title: "Related", values: ["Tesla Model Y\nTesla Model S"]),
//            ProductRow(title: "Roof", values: ["Tinted glass roof with ultraviolet and infrared protection, with mounting points for a roof rack (sold separately).[234][235] A single pane of glass extends from the center of the roof to the trunk."]),
//            ProductRow(title: "Luggage", values: ["Rear 12 cu ft (340 L) and front 3 cu ft (85 L) trunks with 15 cu ft (425 L) (542 L EU specs) total volume"]),
//            ProductRow(title: "Rear seat", values: ["60/40-split-folding rear seat"]),
//            ProductRow(title: "Display", values: ["Single center-mounted WUXGA 15.4-inch (39 cm) LCD touchscreen in landscape orientation that combines the instrument cluster and infotainment"]),
//            ProductRow(title: "Entry", values: ["Keyless NFC keycard and Bluetooth Low Energy smartphone connection for vehicle access; optional key fob."]),
//            ProductRow(title: "Safety", values: ["Airbags including front driver/passenger, knee airbag driver/passenger, torso for front passengers, and curtain airbags front/rear"]),
//        ]),
//        ProductSection(header: "SPECS", rows: [
//            ProductRow(title: "Powertrain", values: ["Single-motor rear-wheel drive", "Dual-motor all-wheel drive"]),
//            ProductRow(title: "Electric motor", values: ["Permanent magnet synchronous reluctance motor"]),
//            ProductRow(title: "Transmission", values: ["1-speed fixed gear 9:1 ratio"]),
//            ProductRow(title: "Battery", values: ["54 kWh (190 MJ)", "82 kWh (300 MJ)"]),
//            ProductRow(title: "Range", values: ["EPA: 263 miles (423 km)", "EPA: 353 miles (568 km)", "EPA: 315 miles (507 km)"]),
//            ProductRow(title: "Efficiency", values: ["141m(211km)/148m(222km)/132m(200km", "116m(187km)/120m(192km)/112m(180km)", "116m(187km)/120m(192km)/112m(180km)"]),
//            ProductRow(title: "DC Charging", values: ["up to 170 kW (V3 Supercharger)", "up to 75 mi (121 km) in 5 minutes, and 180 mi (290 km) in 15 minutes. (250 kW V3 Supercharger)"]),
//            ProductRow(title: "AC Charging", values: ["32 miles (51 km) range per hour (240 V 32 A)", "39.7 miles (63.9 km) range per hour (240 V 48 A)"]),
//            ProductRow(title: "AC charge time (10% -> 90%)", values: ["6.25 hours", "6.5 hours"]),
//            ProductRow(title: "Power (peak)", values: ["211 kW (283 hp)", "258 kW (346 hp)", "340 kW (450 hp)"]),
//            ProductRow(title: "Power-to-weight", values: ["128 W/kg (12.8 lb/hp", "166 W/kg (9.9 lb/hp", "191 W/kg (8.6 lb/hp)"]),
//            ProductRow(title: "Torque (peak)", values: ["450 N⋅m (330 lb⋅ft", "510 N⋅m (376 lb⋅ft", "639 N⋅m (471 lb⋅ft)"]),
//            ProductRow(title: "Acceleration 0–60 mph (0–97 km/h)", values: ["5.3s", "4.0s", "3.1s"]),
//            ProductRow(title: "Quarter Mile", values: ["13.5 sec @ 104.9 mph", "13.6 sec @ 101.9 mph", "11.5 sec @ 116.5 mph"]),
//            ProductRow(title: "Top speed", values: ["140 mph (225 km/h)", "145 mph (233 km/h)", "162 mph (261 km/h)"]),
//        ]),
//        ProductSection(header: "DIMENSIONS", rows: [
//            ProductRow(title: "Wheelbase", values: ["113.2 in (2,875 mm)"]),
//            ProductRow(title: "Length", values: ["184.8 in (4,694 mm)"]),
//            ProductRow(title: "Width", values: ["72.8 in (1,849 mm)"]),
//            ProductRow(title: "Height", values: ["56.8 in (1,443 mm)"]),
//            ProductRow(title: "Curb weight", values: ["3,627 lb (1,645 kg)", "3,814 lb (1,730 kg)", "4,072 lb (1,847 kg)"]),
//        ]),
//        ProductSection(header: "OPTIONS", rows: [
//            ProductRow(title: "Paint", values: ["Pearl White Multi-Coat, Solid Black, Midnight Silver Metallic, Deep Blue Metallic, Red Multi-Coat (discontinued: Silver Metallic & Obsidian Black Metallic)"]),
//            ProductRow(title: "Wheels", values: ["19-inch (480 mm) diameter 8.5-inch (220 mm) width 29.5 lb (13.4 kg, 235/40R19 tires", "20-inch (508 mm) 8.5-inch (220 mm) 235/35R20"]),
//            ProductRow(title: "Interior", values: ["Black, White"]),
//        ]),
//    ]
//)
let MODEL_3_2017_PRODUCT = Product(
    title: ProductTitle(nameFull: "Model 3", nameShort: "3", year: "2017"),
    thumbnail: "MODEL_3_THUMBNAIL",
    model_dae: "porsche.dae",
    model_usdz: "porsche.usdz",
    model_height: 170,
//    preview_w: 380,
//    preview_h: 240,
//    header_min_h: 250,
//    previews: [
//        "MODEL_3_PREVIEW"
//    ],
    // TODO: TEMP PLACEHOLDER VALUES
    preview_w: 380,
    preview_h: 170,
    header_min_h: 230,
    previews: [
        "MODEL_Y_PREVIEW"
    ],
    trims: [
        ProductTrim(title: "Standard", index: 0),
        ProductTrim(title: "Long Range", index: 1),
        ProductTrim(title: "Performance", index: 2)
    ],
    sections: [
        ProductSection(header: "OVERVIEW", rows: [
            ProductRow(title: "Manufacturer", values: ["Tesla, Inc."]),
            ProductRow(title: "Production", values: ["Jul 2017 - Oct 2020"]),
            ProductRow(title: "Assembly", values: ["United States: Fremont, California (Tesla Factory)\nChina: Shanghai (Gigafactory 3)"]),
            ProductRow(title: "Designer", values: ["Franz von Holzhausen"]),
            ProductRow(title: "Base price (US)", values: ["$39,990", "$48,990", "$56,990"]),
        ]),
        ProductSection(header: "BODY AND CHASSIS", rows: [
            ProductRow(title: "Class", values: ["Compact executive car (D)"]),
            ProductRow(title: "Body style", values: ["4-door fastback sedan"]),
            ProductRow(title: "Layout", values: ["Rear-motor, rear-wheel drive", "Dual-motor, all-wheel drive"]),
            ProductRow(title: "Related", values: ["Tesla Model Y\nTesla Model S"]),
            ProductRow(title: "Roof", values: ["Tinted glass roof with ultraviolet and infrared protection, with mounting points for a roof rack (sold separately).[234][235] A single pane of glass extends from the center of the roof to the trunk."]),
            ProductRow(title: "Luggage", values: ["Rear 12 cu ft (340 L) and front 3 cu ft (85 L) trunks with 15 cu ft (425 L) (542 L EU specs) total volume"]),
            ProductRow(title: "Rear seat", values: ["60/40-split-folding rear seat"]),
            ProductRow(title: "Display", values: ["Single center-mounted WUXGA 15.4-inch (39 cm) LCD touchscreen in landscape orientation that combines the instrument cluster and infotainment"]),
            ProductRow(title: "Entry", values: ["Keyless NFC keycard and Bluetooth Low Energy smartphone connection for vehicle access; optional key fob."]),
            ProductRow(title: "Safety", values: ["Airbags including front driver/passenger, knee airbag driver/passenger, torso for front passengers, and curtain airbags front/rear"]),
        ]),
        ProductSection(header: "SPECS", rows: [
            ProductRow(title: "Powertrain", values: ["Single-motor rear-wheel drive", "Dual-motor all-wheel drive"]),
            ProductRow(title: "Electric motor", values: ["Permanent magnet synchronous reluctance motor"]),
            ProductRow(title: "Transmission", values: ["1-speed fixed gear 9:1 ratio"]),
            ProductRow(title: "Battery", values: ["54 kWh (190 MJ)", "82 kWh (300 MJ)"]),
            ProductRow(title: "Range", values: ["EPA: 263 miles (423 km)", "EPA: 353 miles (568 km)", "EPA: 315 miles (507 km)"]),
            ProductRow(title: "Efficiency", values: ["141m(211km)/148m(222km)/132m(200km", "116m(187km)/120m(192km)/112m(180km)", "116m(187km)/120m(192km)/112m(180km)"]),
            ProductRow(title: "DC Charging", values: ["up to 170 kW (V3 Supercharger)", "up to 75 mi (121 km) in 5 minutes, and 180 mi (290 km) in 15 minutes. (250 kW V3 Supercharger)"]),
            ProductRow(title: "AC Charging", values: ["32 miles (51 km) range per hour (240 V 32 A)", "39.7 miles (63.9 km) range per hour (240 V 48 A)"]),
            ProductRow(title: "AC charge time (10% -> 90%)", values: ["6.25 hours", "6.5 hours"]),
            ProductRow(title: "Power (peak)", values: ["211 kW (283 hp)", "258 kW (346 hp)", "340 kW (450 hp)"]),
            ProductRow(title: "Power-to-weight", values: ["128 W/kg (12.8 lb/hp", "166 W/kg (9.9 lb/hp", "191 W/kg (8.6 lb/hp)"]),
            ProductRow(title: "Torque (peak)", values: ["450 N⋅m (330 lb⋅ft", "510 N⋅m (376 lb⋅ft", "639 N⋅m (471 lb⋅ft)"]),
            ProductRow(title: "Acceleration 0–60 mph (0–97 km/h)", values: ["5.3s", "4.0s", "3.1s"]),
            ProductRow(title: "Quarter Mile", values: ["13.5 sec @ 104.9 mph", "13.6 sec @ 101.9 mph", "11.5 sec @ 116.5 mph"]),
            ProductRow(title: "Top speed", values: ["140 mph (225 km/h)", "145 mph (233 km/h)", "162 mph (261 km/h)"]),
        ]),
        ProductSection(header: "DIMENSIONS", rows: [
            ProductRow(title: "Wheelbase", values: ["113.2 in (2,875 mm)"]),
            ProductRow(title: "Length", values: ["184.8 in (4,694 mm)"]),
            ProductRow(title: "Width", values: ["72.8 in (1,849 mm)"]),
            ProductRow(title: "Height", values: ["56.8 in (1,443 mm)"]),
            ProductRow(title: "Curb weight", values: ["3,627 lb (1,645 kg)", "3,814 lb (1,730 kg)", "4,072 lb (1,847 kg)"]),
        ]),
        ProductSection(header: "OPTIONS", rows: [
            ProductRow(title: "Paint", values: ["Pearl White Multi-Coat, Solid Black, Midnight Silver Metallic, Deep Blue Metallic, Red Multi-Coat (discontinued: Silver Metallic & Obsidian Black Metallic)"]),
            ProductRow(title: "Wheels", values: ["19-inch (480 mm) diameter 8.5-inch (220 mm) width 29.5 lb (13.4 kg, 235/40R19 tires", "20-inch (508 mm) 8.5-inch (220 mm) 235/35R20"]),
            ProductRow(title: "Interior", values: ["Black, White"]),
        ]),
    ]
)

let MODEL_3_PRODUCTS = ProductList(
    products: [
        MODEL_3_2021_PRODUCT,
//        MODEL_3_2020_PRODUCT,
        MODEL_3_2017_PRODUCT
    ],
    years: ["4E0D":0, "A45F":1, "0CE8":2],
    yearsSpan: "2017 - present",
    productDisabled: false,
    useHeader: "",
    productID: ProductIdentifier._3,
    categoryImage: "folder"
)

