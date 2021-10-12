//
//  Data.swift
//  Day 12
//
//  Created by Eth Os on 05/03/1443 AH.
//

import Foundation
import UIKit

struct Row {
    var image: String
    var name: String
}

var rows = [Row(image: "mic", name: "mic"),
           Row(image: "mic.fill", name: "mic.fill"),
            Row(image: "message", name: "message"),
            Row(image: "message.fill", name: "message.fill"),
            Row(image: "sun.min", name: "sun.min"),
            Row(image: "sun.min.fill", name: "sun.min.fill"),
            Row(image: "sunset", name: "sunset"),
            Row(image: "sunset.fill", name: "sunset.fill"),
            Row(image: "pencil", name: "pencil"),
            Row(image: "pencil. circle", name: "pencil. circle"),
            Row(image: "highlighter", name: "highlighter"),
            Row(image: "pencil.and.outline", name: "pencil.and.outline"),
            Row(image: "personalhotspot", name: "personalhotspot"),
]

struct Email{
    let title: String
    let subTitle: String
    let message: String
    let image: String
    var time : Date
    let isFavorit: Bool
}
var inboxMails = [Email(title: "أبجد",
                   subTitle: "أبجد يتصّدر متجر آبل في السعودية 🇸🇦🔥",
                   message: "احتفالاً بالعيد الوطني السعودي، آبل يسلّط الضوء على مؤلفات الكاتبة السعودية نور عبد المجيد على أبجد والتي تتناول مواضيع مختلفة مثل المشاكل الاجتماعية والحب والمرأة في الشرق الأوسط.  ",
                   image: "ابجد",
                        time: Date() ,
                   isFavorit: true),
             Email(title: "LinkedIn",
                   subTitle: "Tatweer Company for Educational Services Ltd.",
                   message: "your job recommendations from LinkedIn",
                   image: "لينكد",
                   time: Date(),
                   isFavorit: false),
             Email(title: "Google",
                   subTitle: "تنبيه أمني",
                   message: "تم منح ‪Spark‬‏ إمكانية الوصول إلى حسابكِ علىGoogle",
                   image: "google",
                   time: Date(),
                   isFavorit: false),
             Email(title: "Udacity",
                   subTitle: "You qualify for a personal discount",
                   message: "Come see just how much you can save with your special discount to‍day. And take the next step in advancing your career",
                   image: "Udacity",
                   time: Date(),
                   isFavorit: true),]

struct ToDo {
    let task: String
    let color: UIColor
}

var toDo = [ToDo(task: "Making Writeframing", color: .systemPink),
            ToDo(task: "Meating with new team", color: .systemBlue),
            ToDo(task: "Make smartphone app concept", color: .systemYellow),
            ToDo(task: "Pick up loundry", color: .systemCyan),
            ToDo(task: "Drink Watar", color: .systemGreen),
            ToDo(task: "Complete the tasks", color: .systemPurple),]
