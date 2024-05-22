require_relative "senha.rb"

class Atendimento
    attr_reader :hora_inicial, :tempo_de_espera, :atendidos, :horario_atendimento, :tempo_medio_atedimento

    def initialize
        @atendidos = 0
        @hora_inicial = Time.now
        @tempo_medio_atedimento = []
    end

    def chamar_senha (senhas)
        if senhas.empty?
            puts "Nenhuma senha no sistema."
        else
            senha_atendida = senhas.shift
            puts "SENHA: #{senha_atendida[:senha]}"

            @horario_atendimento = Time.now
            @tempo_de_espera = (horario_atendimento - senha_atendida[:hora]) / 60.0
            @tempo_medio_atedimento << @tempo_de_espera.round(2)
            puts "O tempo de espera foi de #{@tempo_de_espera.round(2)}"

            @atendidos += 1
        end
    end
end