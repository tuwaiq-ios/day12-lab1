//
//  Data.swift
//  day12
//
//  Created by ibrahim asiri on 05/03/1443 AH.
//

import UIKit

struct EmailList {
    var image: String
    var title: String
    var subTit: String
    var letter: String
    var isOpen: String
}

var emailList = [
    EmailList(image: "real1",
              title: "نادي القرن",
              subTit: "الملكي",
              letter: "هل عندك شك في ذلك ",
              isOpen: "★"),
    EmailList(image: "real2",
              title: "النادي الملكي",
              subTit: "مرينغي",
              letter: "هل عندك اعتراض في ذلك",
              isOpen: "☆"),
    EmailList(image: "real2",
              title: "المرينقي",
              subTit: "الملكي",
              letter: "افضل نادي في العالم",
              isOpen: "★"),
    EmailList(image: "real4",
              title: "الريال",
              subTit: "مدريد",
              letter: "صاحب الارقام القياسية",
              isOpen:  "★"),
    EmailList(image: "real5",
              title: "ملك اوربا",
              subTit: "اكثر تتويج",
              letter: "اكثر تتويج في الابطال اوربا",
              isOpen: "★"),
    EmailList(image: "real6",
              title: "ملك اسبانيا",
              subTit: "انه الريال",
              letter: "الاكثر تتويج في أوربا",
              isOpen: "★")

]
