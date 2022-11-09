//
//  InfoData.swift
//  LoginApp
//
//  Created by Валерия Гилева on 09.11.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
}

struct Person {
    let name: String
    let age: Int
    let location: String
    let description: String
}

extension User {
    static func getUser() -> User {
        User(login: "Anna", password: "0987")
    }
}

extension Person {
    static func getPerson() -> Person {
        Person(name: "Валерия", age: 24, location: "Москве", description: "В настоящий момент я разработчик  клиента специального программного обеспечения в области геоинформатики. Окончила бакалавриат и магистратуру по специальности 'Информационные технологии в системах управления'. Стаж работы по специальности 4 года.")
    }
}
