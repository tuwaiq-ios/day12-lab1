//
//  Data.swift
//  day12 task2
//
//  Created by Ahmed Assiri on 06/03/1443 AH.
//

import UIKit


struct Email {
    let Title: String
    let SupTitle: String
    let Ms : String
    let iconMail: String
    let isFavorite: String
    
}

let inbox = [
Email(Title: "AhmedAli",
      SupTitle: "مرحبا",
      Ms: "اهلا السلام عليكم ...",
      iconMail: "A",
      isFavorite: "starY"),

Email(Title: "Mohammed",
      SupTitle: "welcome",
      Ms: "Hi daer Ahmed ...",
      iconMail: "B",
      isFavorite: "starY"),

Email(Title: "تويتر",
      SupTitle: "قام بتغريد  A & B",
      Ms: "ابرز العناوين ...",
      iconMail: "tt",
      isFavorite: "starB")



]
