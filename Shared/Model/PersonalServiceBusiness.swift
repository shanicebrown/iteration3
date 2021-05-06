//
//  PersonalServiceBusiness.swift
//  iteration3
//
//  Created by Shanice Brown (WHA) on 4/19/21.
//

import SwiftUI

struct PersonalServiceBusiness: Identifiable {
    var id = UUID()
    var industry: String
    var description: String
    var image: String
    var color: Color
}

var personalServiceBusinesses = [
    
PersonalServiceBusiness(
    industry: "Personal Services",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
    image: "Illustration 9",
    color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
    ),
    
PersonalServiceBusiness(
        industry: "Digital Marketing Services",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
        image: "Illustration 2",
        color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
        ),
PersonalServiceBusiness(
        industry: "Writing & Services",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
        image: "Illustration 3",
        color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
        ),
PersonalServiceBusiness(
        industry: "Music & Audio Services",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
        image: "Illustration 4",
        color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
        ),
PersonalServiceBusiness(
        industry: "Programming & Services",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
        image: "Illustration 2",
        color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
        ),
PersonalServiceBusiness(
            industry: "Personal Services",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
            image: "Illustration 6",
            color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
            ),
PersonalServiceBusiness(
            industry: "Lifestyle Services",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
            image: "Illustration 7",
            color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
            ),
PersonalServiceBusiness(
            industry: "General & Contracting Services",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
            image: "Illustration 8",
            color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
            ),
        
PersonalServiceBusiness(
            industry: "Personal Services",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
            image: "Illustration 1",
            color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
            ),
PersonalServiceBusiness(
                industry: "Misc Services",
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
                image: "Illustration 10",
                color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
                )
]

