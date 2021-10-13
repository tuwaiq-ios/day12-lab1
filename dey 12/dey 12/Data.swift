//
//  Data.swift
//  dey 12
//
//  Created by dmdm on 11/10/2021.
//

import UIKit
struct Emails {
    
    let title: String
    let subtitle : String
    let massege : String
    let image : String
    let isFavorite : Bool
}


let email = [
    Emails (
        title: "American Canyon",
        subtitle: "Hot summer sale!",
        massege: "The boldest styles,now at the most adven...",
        image: "AC",
        isFavorite: true ),
    
    Emails(
        title: "Reese,Willy,Me,Dani",
        subtitle: "Are you ready to 🌊🌊?? ",
        massege: "Gonna be so fun!! Here's the deets..",
        image: "RW",
        isFavorite: false ),
    
    Emails (
        title: "O + X Outfitters",
        subtitle: "online & in-store",
        massege: "Flash sale!20% off all summer swim...",
        image:"o",
        isFavorite: true),
    
    Emails (
        title: "Gabrielle Brown",
        subtitle: "Quote for repairs",
        massege: "Hi Thaisa,Attached is a quote for all...",
        image: "G",
        isFavorite: true),
    
    Emails(
        title: "Miranda Le",
        subtitle: "Roadmap for launch",
        massege: "Hey Thaisa,acould you send again?",
        image: "M",
        isFavorite: false),
    
    Emails(
        title: "Matt Becker",
        subtitle: "Hotels for orlando Trip",
        massege: "These are our option,any pref?",
        image: "mm",
        isFavorite: true)

]
