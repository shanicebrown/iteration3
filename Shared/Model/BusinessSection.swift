//
//  BusinessSection.swift
//  iteration3
//
//  Created by Shanice Brown (WHA) on 4/18/21.
//

import SwiftUI

struct BusinessSection: Identifiable, Hashable {
    var id = UUID()
    var businessName: String
    var serviceProvided: String
    var logo: String
    var color: Color
}

var businessSections = [
    
    BusinessSection(
        businessName: "Trust & Care Lawn Services",
        serviceProvided: "Land Scaping and Weed Removal",
        logo: "Logo Barter Shop",
        color: Color(#colorLiteral(red: 1, green: 0.368627451, blue: 0.3568627451, alpha: 1))
    ),
    BusinessSection(
        businessName: "Smooth Waves",
        serviceProvided: "Men, Women and Children Hair Cuts",
        logo: "Logo Barter Shop",
        color: Color(#colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1))
    ),
    BusinessSection(
        businessName: "Southside Cleaners",
        serviceProvided: "Dry Cleaners",
        logo: "Logo Barter Shop",
        color: Color(#colorLiteral(red: 1, green: 1, blue: 0.9176470588, alpha: 1))
    ),
    BusinessSection(
        businessName: "AWK Writing Services",
        serviceProvided: "Grant Writing",
        logo: "Logo Barter Shop",
        color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
    ),
    BusinessSection(
        businessName: "It takes a Village",
        serviceProvided: "Before and After School Care for Children 5 - 13",
        logo: "Logo Barter Shop",
        color: Color(#colorLiteral(red: 1, green: 0.9294117647, blue: 0.4, alpha: 1))
    ),
    BusinessSection(
        businessName: "Movie Edits R Us",
        serviceProvided: "Digital Content Editing",
        logo: "Logo Barter Shop",
        color: Color(#colorLiteral(red: 1, green: 0.368627451, blue: 0.3568627451, alpha: 1))
    ),
    BusinessSection(
        businessName: "Chi-Town Translation Services",
        serviceProvided: "Language Translation Services",
        logo: "Logo Barter Shop",
        color: Color(#colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1))
    ),
    BusinessSection(
        businessName: "House of Sanchez",
        serviceProvided: "Website Builing",
        logo: "Logo Barter Shop",
        color: Color(#colorLiteral(red: 1, green: 1, blue: 0.9176470588, alpha: 1))
    ),
    BusinessSection(
        businessName: "Health is Wealth LLC",
        serviceProvided: "Personal Training",
        logo: "Logo Barter Shop",
        color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
    ),
    BusinessSection(
        businessName: "Not Yo Mama Catering",
        serviceProvided: "Catering for Weddings, Meeting and Family Reunions",
        logo: "Logo Barter Shop",
        color: Color(#colorLiteral(red: 1, green: 0.9294117647, blue: 0.4, alpha: 1))
    )
]
