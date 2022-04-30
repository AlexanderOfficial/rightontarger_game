//
//  Game.swift
//  Right on target
//
//  Created by Александр  Крайнев on 27.04.2022.
//

import Foundation
protocol  GameProtocol{
    //количество заработанных очков
    var score: Int { get }
    //загаданное число
    var currentSecretValue: Int {get}
    //флаг окончания игры
    var isGameEnded: Bool {get}
    //начинает новую игру
    func restartGame()
    //новый раунд
    func startNewRaund()
    // Сравнивает переданное значение с загаданным и начисляет очки
    func calculateScore(with value: Int)
}

class Game: GameProtocol{
    //количество заработанных очков
    var score: Int = 0
    //манимальное и максимальное загаданное число
    private var minSecretValue: Int
    private var maxSecretValue: Int
    //загаданное число
    // Количество раундов
    private var lastRound: Int
    var currentSecretValue: Int = 0
    //флаг окончания игры
    private var currentRound: Int = 1
    var isGameEnded: Bool {
        if currentRound >= lastRound { return true
        } else {
        return false
        }
    }
    init?(startValue: Int, endValue: Int, rounds: Int) {
    // Стартовое значение для выбора случайного числа не может быть больше конечного
        print("init")
        guard startValue <= endValue else {
            return nil
        }
        minSecretValue = startValue
        maxSecretValue = endValue
        lastRound = rounds
        currentSecretValue = self.getNewSecretValue()
    }
    //начинает новую игру
    func restartGame(){
        currentRound = 0
        score = 0
        startNewRaund()
    }
    //новый раунд
    func startNewRaund(){
        currentSecretValue = self.getNewSecretValue()
        currentRound += 1
    }
    // Загадать и вернуть новое случайное значение
    private func getNewSecretValue() -> Int {
    (minSecretValue...maxSecretValue).randomElement()!
    }

    // Сравнивает переданное значение с загаданным и начисляет очки
    func calculateScore(with value: Int){
        if value > currentSecretValue {
            score += 50 - value + currentSecretValue
        } else if value < currentSecretValue {
            score += 50 - currentSecretValue + value
        } else {
            score += 50
        }
    }
}
