//
//  TaskStorage.swift
//  To-Do Manager
//
//  Created by Кордюков Андрей on 16.02.23.
//

import Foundation

protocol TasksStorageProtocol {
    func loadTasks() -> [TaskProtocol]
    func saveTasks(_ tasks: [TaskProtocol])
}

class TasksStorage: TasksStorageProtocol {
    func loadTasks() -> [TaskProtocol] {
    // временная реализация, возвращающая тестовую коллекцию задач
        let testTasks: [TaskProtocol] = [
            Task(title: "Купить хлеб", type: .normal, status: .planned),
            Task(title: "Помыть кота", type: .important, status: .planned),
            Task(title: "Отдать долг Арнольду", type: .important, status: .completed),
            Task(title: "Купить новый пылесос", type: .normal, status: .completed),
            Task(title: "Подарить цветы супруге", type: .important, status: .planned),
            Task(title: "Позвонить родителям", type: .important,status: .planned),
            Task(title: "Пригласить на вечеринку Дольфа, Джеки, Леонардо, Уилла и Брюса", type: .important, status: .planned)
        ]
        
        return testTasks
    }
    
    func saveTasks(_ tasks: [TaskProtocol]) {}
}
