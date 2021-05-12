//
//  Business.swift
//  iteration3
//
//  Created by Shanice Brown (WHA) on 4/18/21.
//

import SwiftUI

struct Business: Identifiable {
    var id = UUID()
    var industry: String
    var description: String
    var image: String
    var color: Color
}

var businesses = [
    
    Business(
        industry: "Personal Services",
        description: "Sometimes it truly is the simple things in life that matter most, and that we occasionally take for granted. When speaking of the quality of life, a little extra help can go a long way towards maintaining peace of mind. Many people may be unaware of the services available to them when it comes to personal care.",
        image: "Illustration 9",
        color: Color(#colorLiteral(red: 1, green: 0.368627451, blue: 0.3568627451, alpha: 1))
    ),
    
    Business(
        industry: "Digital Marketing Services",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
        image: "Illustration 6",
        color: Color(#colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1))
    ),
    Business(
        industry: "Writing & Services",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
        image: "Illustration 3",
        color: Color(#colorLiteral(red: 1, green: 1, blue: 0.9176470588, alpha: 1))
    ),
    Business(
        industry: "Music & Audio Services",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
        image: "Illustration 4",
        color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
    ),
    Business(
        industry: "Programming Services",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
        image: "Illustration 5",
        color: Color(#colorLiteral(red: 1, green: 0.9294117647, blue: 0.4, alpha: 1))
    ),
    Business(
        industry: "Business Services",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
        image: "Illustration 11",
        color: Color(#colorLiteral(red: 1, green: 0.368627451, blue: 0.3568627451, alpha: 1))
    ),
    Business(
        industry: "Lifestyle Services",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
        image: "Illustration 7",
        color: Color(#colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1))
    ),
    Business(
        industry: "General & Contracting Services",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
        image: "Illustration 8",
        color: Color(#colorLiteral(red: 1, green: 1, blue: 0.9176470588, alpha: 1))
    ),
    
    Business(
        industry: "Graphic & Design Services",
        description: "Sometimes it truly is the simple things in life that matter most, and that we occasionally take for granted. When speaking of the quality of life, a little extra help can go a long way towards maintaining peace of mind. Many people may be unaware of the services available to them when it comes to personal care.",
        image: "Illustration 1",
        color: Color(#colorLiteral(red: 0, green: 0.8078431373, blue: 0.7960784314, alpha: 1))
    ),
    Business(
        industry: "Misc Services",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Platea dictumst quisque sagittis purus sit.",
        image: "Illustration 10",
        color: Color(#colorLiteral(red: 1, green: 0.9294117647, blue: 0.4, alpha: 1))
    ),
    
]
