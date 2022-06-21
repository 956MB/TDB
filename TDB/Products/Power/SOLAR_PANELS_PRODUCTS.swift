//
//  SOLAR_PANELS_PRODUCTS.swift
//  TDB
//
//  Created by Trevor Bays on 3/20/22.
//

let SOLAR_PANELS_PRODUCT = Product(
    title: ProductTitle(nameFull: "Solar Panels", nameShort: "Solar Panels", year: ""),
    thumbnail: "ATV_THUMBNAIL_2",
    model_dae: "delorean.dae",
    model_usdz: "delorean.usdz",
    model_height: 175,
//    preview_w: 380,
//    preview_h: 240,
//    header_min_h: 250,
//    previews: [
//        "ATV_THUMBNAIL"
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
        ProductTrim(title: "Dual Motor", index: 1)
    ],
    sections: [
        ProductSection(header: "OVERVIEW", rows: [
            ProductRow(title: "Manufacturer", values: ["Tesla, Inc."]),
            ProductRow(title: "Production", values: ["2022 (to commence)"]),
//            ProductRow(title: "Also called", values: ["Cybrtrk"]),
//            ProductRow(title: "local_assembly_row", values: ["United States: Fremont, California (Tesla Factory)\nChina: Shanghai (Gigafactory 3)"]),
            ProductRow(title: "Designer", values: ["Franz von Holzhausen"]),
            ProductRow(title: "Base price (US)", values: ["$200,000", "$250,000"]),
            ProductRow(title: "Predecessor", values: ["Tesla Roadster (first generation)"]),
        ]),
        ProductSection(header: "BODY AND CHASSIS", rows: [
            ProductRow(title: "Class", values: ["Sports car/Grand tourer (S)"]),
            ProductRow(title: "Body style", values: ["2-door coupe"]),
            ProductRow(title: "Doors", values: ["2"]),
            ProductRow(title: "Seats", values: ["4"]),
            ProductRow(title: "Layout", values: ["Tri-motor, all-wheel drive"]),
        ]),
        ProductSection(header: "SPECS", rows: [
            ProductRow(title: "Battery", values: ["200 kWh (720 MJ)"]),
        ])
    ]
)

let SOLAR_PANELS_PRODUCTS = ProductList(
    products: [
        SOLAR_PANELS_PRODUCT
    ],
    years: ["6F21":0],
    yearsSpan: "2022 (to commence)",
    productDisabled: true,
    useHeader: "",
    productID: ProductIdentifier._panels,
    categoryImage: "bolt.fill"
)
