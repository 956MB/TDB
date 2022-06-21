//
//  CYBERTRUCK_PRODUCTS.swift
//  TDB
//
//  Created by Trevor Bays on 7/12/21.
//

let CYBERTRUCK_2022_PRODUCT = Product(
    title: ProductTitle(nameFull: "Cybertruck", nameShort: "Cybertruck", year: "2022"),
    thumbnail: "CYBERTRUCK_THUMBNAIL",
    model_dae: "650s.dae",
    model_usdz: "650s.usdz",
    model_height: 160,
//    preview_w: 380,
//    preview_h: 240,
//    header_min_h: 250,
//    previews: [
//        "CYBERTRUCK_THUMBNAIL"
//    ],
    // TODO: TEMP PLACEHOLDER VALUES
    preview_w: 380,
    preview_h: 170,
    header_min_h: 230,
    previews: [
        "MODEL_Y_PREVIEW"
    ],
    trims: [
        ProductTrim(title: "Single Motor", index: 0),
        ProductTrim(title: "Dual Motor", index: 1),
        ProductTrim(title: "Tri Motor", index: 2)
    ],
    sections: [
        ProductSection(header: "OVERVIEW", rows: [
            ProductRow(title: "Manufacturer", values: ["Tesla, Inc."]),
            ProductRow(title: "Production", values: ["2021 (to commence)"]),
            ProductRow(title: "Also called", values: ["Cybrtrk"]),
//            ProductRow(title: "local_assembly_row", values: ["United States: Fremont, California (Tesla Factory)\nChina: Shanghai (Gigafactory 3)"]),
            ProductRow(title: "Designer", values: ["Franz von Holzhausen\nSahm Jafari\nIan Kettle\nWooTak Kim\nJulien Bilodeau"]),
            ProductRow(title: "Base price (US)", values: ["$39,900", "$49,900", "$69,900"]),
        ]),
        ProductSection(header: "BODY AND CHASSIS", rows: [
            ProductRow(title: "Class", values: ["Light commercial vehicle/Multi-purpose vehicle (EU)\nLarge pickup (North America)"]),
            ProductRow(title: "Body style", values: ["4-door polygonal pickup truck"]),
            ProductRow(title: "Doors", values: ["4"]),
            ProductRow(title: "Seats", values: ["6"]),
            ProductRow(title: "Layout", values: ["Single-motor rear-wheel drive", "Dual-motor all-wheel drive", "Tri-motor all-wheel drive"]),
//            ProductRow(title: "Related", values: ["Tesla Model X"]),
            ProductRow(title: "Chassis", values: ["Unibody"]),
//            ProductRow(title: "Roof", values: ["Tinted glass roof with ultraviolet and infrared protection, with mounting points for a roof rack (sold separately).[234][235] A single pane of glass extends from the center of the roof to the trunk."]),
//            ProductRow(title: "Luggage", values: ["Rear 12 cu ft (340 L) and front 3 cu ft (85 L) trunks with 15 cu ft (425 L) (542 L EU specs) total volume"]),
//            ProductRow(title: "Rear seat", values: ["60/40-split-folding rear seat"]),
            ProductRow(title: "Display", values: ["Single center-mounted WUXGA 15.4-inch (39 cm) LCD touchscreen in landscape orientation that combines the instrument cluster and infotainment"]),
            ProductRow(title: "Entry", values: ["Keyless NFC keycard and Bluetooth Low Energy smartphone connection for vehicle access; optional key fob."]),
            ProductRow(title: "Safety", values: ["Airbags including front driver/passenger, knee airbag driver/passenger, torso for front passengers, and curtain airbags front/rear"]),
        ]),
        ProductSection(header: "SPECS", rows: [
            ProductRow(title: "Powertrain", values: ["Single-motor rear-wheel drive", "Dual-motor all-wheel drive", "Tri-motor all-wheel drive"]),
            ProductRow(title: "Electric motor", values: ["Internal Permanent Magnet - Synchronous Reluctance Motor (IPM-SynRM)"]),
            ProductRow(title: "Transmission", values: ["1-speed fixed gear 9:1 ratio"]),
//            ProductRow(title: "Battery", values: ["54 kWh (190 MJ)", "82 kWh (300 MJ)"]),
            ProductRow(title: "Range", values: ["250+ MILES (EPA EST.)", "300+ MILES (EPA EST.)", "500+ MILES (EPA EST.)"]),
//            ProductRow(title: "Efficiency", values: ["141m(211km)/148m(222km)/132m(200km", "116m(187km)/120m(192km)/112m(180km)", "116m(187km)/120m(192km)/112m(180km)"]),
//            ProductRow(title: "DC Charging", values: ["up to 170 kW (V3 Supercharger)", "up to 75 mi (121 km) in 5 minutes, and 180 mi (290 km) in 15 minutes. (250 kW V3 Supercharger)"]),
//            ProductRow(title: "AC Charging", values: ["32 miles (51 km) range per hour (240 V 32 A)", "39.7 miles (63.9 km) range per hour (240 V 48 A)"]),
//            ProductRow(title: "AC charge time (10% -> 90%)", values: ["6.25 hours", "6.5 hours"]),
//            ProductRow(title: "Power (peak)", values: ["211 kW (283 hp)", "258 kW (346 hp)", "340 kW (450 hp)"]),
//            ProductRow(title: "Power-to-weight", values: ["128 W/kg (12.8 lb/hp", "166 W/kg (9.9 lb/hp", "191 W/kg (8.6 lb/hp)"]),
//            ProductRow(title: "Torque (peak)", values: ["450 N⋅m (330 lb⋅ft", "510 N⋅m (376 lb⋅ft", "639 N⋅m (471 lb⋅ft)"]),
            ProductRow(title: "Acceleration 0–60 mph (0–97 km/h)", values: ["6.4s", "4.5s", "2.9s"]),
//            ProductRow(title: "Quarter Mile", values: ["13.5 sec @ 104.9 mph", "13.6 sec @ 101.9 mph", "11.5 sec @ 116.5 mph"]),
            ProductRow(title: "Top speed", values: ["110.0 mph (177.0 km/h)", "119.9 mph (193.0 km/h)", "129.9 mph (209.0 km/h)"]),
        ]),
        ProductSection(header: "DIMENSIONS", rows: [
            ProductRow(title: "Wheelbase", values: ["149.9 in (3,807 mm)"]),
            ProductRow(title: "Length", values: ["231.7 in (5,885 mm)"]),
            ProductRow(title: "Width", values: ["79.8 in (2,027 mm)"]),
            ProductRow(title: "Height", values: ["75 in (1,905 mm)"]),
            ProductRow(title: "Payload", values: ["3499.99 lb (1587.57 kg)"]),
            ProductRow(title: "Storage", values: ["100 cu ft"]),
            ProductRow(title: "Vault length", values: ["6.5 ft"]),
            ProductRow(title: "Towing capacity", values: ["7,500+ lbs", "10,000+ lbs", "14,000+ lbs"]),
            ProductRow(title: "Ground clearance", values: ["up to 16\""]),
            ProductRow(title: "Approach angle", values: ["35°"]),
            ProductRow(title: "Departure angle", values: ["28°"]),
//            ProductRow(title: "Curb weight", values: ["3,627 lb (1,645 kg)", "3,814 lb (1,730 kg)", "4,072 lb (1,847 kg)"]),
        ]),
//        ProductSection(header: "OPTIONS", rows: [
//            ProductRow(title: "Paint", values: ["Pearl White Multi-Coat, Solid Black, Midnight Silver Metallic, Deep Blue Metallic, Red Multi-Coat (discontinued: Silver Metallic & Obsidian Black Metallic)"]),
//            ProductRow(title: "Wheels", values: ["19-inch (480 mm) diameter 8.5-inch (220 mm) width 29.5 lb (13.4 kg, 235/40R19 tires", "20-inch (508 mm) 8.5-inch (220 mm) 235/35R20"]),
//            ProductRow(title: "Interior", values: ["Black, White"]),
//        ]),
    ]
)

let CYBERTRUCK_PRODUCTS = ProductList(
    products: [
        CYBERTRUCK_2022_PRODUCT
    ],
    years: ["6F21":0],
    yearsSpan: "2022 (to commence)",
    productDisabled: false,
    useHeader: "",
    productID: ProductIdentifier._cybertruck,
    categoryImage: "folder"
)
