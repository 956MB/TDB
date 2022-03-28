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
        ProductSection(header: "local_overview_header", rows: [
            ProductRow(title: "local_manufacturer_row", values: ["Tesla, Inc."]),
            ProductRow(title: "local_production_row", values: ["Dec 2021 - present"]),
            ProductRow(title: "local_code_name_row", values: ["WhiteStar"]),
            ProductRow(title: "local_assembly_row", values: ["United States: Fremont, California (Tesla Factory)\nNetherlands: Tilburg"]),
            ProductRow(title: "local_designer_row", values: ["Franz von Holzhausen"]),
            ProductRow(title: "local_related_row", values: ["Tesla Model X"]),
            ProductRow(title: "local_base_price_row", values: ["$84,990", "$129,990"]),
        ]),
        ProductSection(header: "local_body_and_chassis_header", rows: [
            ProductRow(title: "local_class_row", values: ["Full-size car/Executive car (E)"]),
            ProductRow(title: "local_body_style_row", values: ["5-door liftback"]),
            ProductRow(title: "local_layout_row", values: ["Dual Motor All-Wheel Drive", "Tri Motor All-Wheel Drive"]),
            ProductRow(title: "local_roof_row", values: ["Tinted glass roof with ultraviolet and infrared protection, with mounting points for a roof rack (sold separately)"]),
            ProductRow(title: "local_luggage_row", values: ["25 to 26.3 ft³, 60.2 ft³ with seat area"]),
            ProductRow(title: "local_rear_seat_row", values: ["60/40-split-folding rear seat"]),
            ProductRow(title: "local_display_row", values: ["17″ widescreen display"]),
            ProductRow(title: "local_instrument_cluster_row", values: ["12.3-inch (310 mm) liquid-crystal display"]),
            ProductRow(title: "local_entry_row", values: ["Keyless NFC keycard and Bluetooth Low Energy smartphone connection for vehicle access; optional key fob."]),
            ProductRow(title: "local_saftey_row", values: ["Airbags including front driver/passenger, knee airbag driver/passenger, torso for front passengers, and curtain airbags front/rear"]),
        ]),
        ProductSection(header: "local_specs_header", rows: [
            ProductRow(title: "local_powertrain_row", values: ["Dual Motor All-Wheel Drive", "Tri Motor All-Wheel Drive"]),
            ProductRow(title: "local_electric_motor_row", values: ["3-phase AC induction motor"]),
            ProductRow(title: "local_transmission_row", values: ["1-speed fixed gear 9:1 ratio; direct-drive"]),
            ProductRow(title: "local_battery_row", values: ["100 kWh 350 V lithium-ion"]),
            ProductRow(title: "local_range_row", values: ["405 mi (EPA est.)", "390 mi (est.)"]),
            ProductRow(title: "local_efficiency_row", values: ["120/124/115", "101/102/99"]),
            // ProductRow(title: "DC Charging", values: [""]),
            // ProductRow(title: "AC Charging", values: ["32 miles (51 km) range per hour (240 V 32 A)", "39.7 miles (63.9 km) range per hour (240 V 48 A)"]),
            // ProductRow(title: "AC charge time (10% -> 90%)", values: ["6.25 hours", "6.5 hours"]),
            ProductRow(title: "local_power_row", values: ["670 hp", "1,020 hp"]),
            // ProductRow(title: "Power-to-weight", values: ["128 W/kg (12.8 lb/hp", "166 W/kg (9.9 lb/hp", "191 W/kg (8.6 lb/hp)"]),
            // ProductRow(title: "Torque (peak)", values: ["450 N⋅m (330 lb⋅ft", "510 N⋅m (376 lb⋅ft", "639 N⋅m (471 lb⋅ft)"]),
            ProductRow(title: "local_acceleration_row", values: ["3.1 s 0-60 mph", "1.99 s 0-60 mph*"]),
            ProductRow(title: "local_quarter_mile_row", values: ["9.23@155 mph trap speed"]),
            ProductRow(title: "local_top_speed_row", values: ["155.3 mph (250km/h)", "198.8 mph (320km/h)"]),
        ]),
        ProductSection(header: "local_dimensions_header", rows: [
            ProductRow(title: "local_wheelbase_row", values: ["116.5 in (2,959 mm)"]),
            ProductRow(title: "local_length_row", values: ["196.0 in (4,978 mm)"]),
            ProductRow(title: "local_width_row", values: ["77.3 in (1,963 mm)"]),
            ProductRow(title: "local_height_row", values: ["56.5 in (1,435 mm)"]),
            ProductRow(title: "local_curb_weight_row", values: ["4883.24 lb (2,215 kg)", "4940.56 lb (2,241 kg)"]),
        ]),
        ProductSection(header: "local_options_header", rows: [
            ProductRow(title: "local_paint_row", values: ["Solid Black\nMidnight Silver Metallic\nDeep Blue Metallic\nPearl White Multi-Coat\nRed Multi-Coat"]),
            ProductRow(title: "local_wheels_row", values: ["19\" (482 mm) Tempest\n21\" (533 mm) Arachnid"]),
            ProductRow(title: "local_interior_row", values: ["Black, White, Cream"]),
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
