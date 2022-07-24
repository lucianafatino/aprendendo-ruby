require_relative 'cliente'

class Conta
    attr_reader :numero, :titular #Atributos apenas leitura
    attr_accessor :saldo #permite a escrita e leitura

    def initialize(numero, titular, saldo)
        @numero = numero
        @titular = titular
        @saldo = saldo
    end

    def sacar(valor)
        if saldo >= valor
            self.saldo -= valor
        else
            puts "Não foi possível efetuar o saque"
        end
    end

    def depositar(valor)
        self.saldo += valor
    end

    def transferir(conta_dest, valor)
        if saldo >= valor
            sacar(valor)
            conta_dest.depositar(valor)
        else
            puts "Não foi possível realizar a transferência, saldo insuficiente!"
        end
    end
end