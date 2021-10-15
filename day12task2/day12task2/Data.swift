//
//  Data.swift
//  day12task2
//
//  Created by HANAN on 06/03/1443 AH.
//

import UIKit
struct Email {
    let ims : String //الصوره الشخصية
    let Nameperson : String //ليبل الإسم
    let massage : String // ليبل الرسالة
    let isFavorit : Bool
    
}
    let email = [Email(ims: "Manal", Nameperson: "Manal" , massage: "hi Rema " , isFavorit: true ),
                 Email(ims:  "saad",Nameperson: "saad", massage: "hi Rema", isFavorit: true ),
                 Email(ims: "Khalid", Nameperson: "Khalid", massage: "hi Rema", isFavorit: false ) ,
                 Email(ims: "Ahmed", Nameperson: "Ahmed", massage: "hi Rema", isFavorit: true)]
