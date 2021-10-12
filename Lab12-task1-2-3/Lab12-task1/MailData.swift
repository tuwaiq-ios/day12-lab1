//
//  MailData.swift
//  Lab12-task1
//
//  Created by Abdulaziz on 05/03/1443 AH.
//

import UIKit

struct inboxMail {
    
    let Title: String
    let SubTitle: String
    let Msg: String
    let iconMail: String
    let isFavorite: Bool
        
}

let inbox =  [
    
    inboxMail(Title: "SMSA shipment",
              SubTitle: "your Shipment is ready",
              Msg: "please collect your shipment",
              iconMail: "smsa",
              isFavorite: false),
    
    inboxMail(Title: "خالد",
              SubTitle: "السلام عليكم ",
              Msg: "هذا ايميلي الجديد حبيت اعلمك",
              iconMail: "صورة",
              isFavorite: true),
    
    inboxMail(Title: "عبدالله",
              SubTitle: "ارسل لي الملف المطلوب",
              Msg: "حاول ترسله بصيغة يدعمها الجهاز",
              iconMail: "AAA",
              isFavorite: true),
    
    inboxMail(Title: "kku", SubTitle: "تعبئة استبيان", Msg: "عزيزي الطالب الرجاء تعبئة هذا الاستبيان", iconMail: "ج", isFavorite: true)
]


