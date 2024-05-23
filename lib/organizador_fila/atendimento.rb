require_relative "senha.rb"

class Atendimento
    attr_reader :hora_inicial, :tempo_de_espera, :atendidos, :horario_atendimento, :tempo_medio_atendimento

    def initialize
        @atendidos = 0
        @hora_inicial = Time.now
        @tempo_medio_atendimento = []
    end

    def chamar_senha(senhas)
        if senhas.empty?
            puts "Nenhuma senha no sistema."
        else
            senha_atendida = senhas.shift
            puts "SENHA: #{senha_atendida[:senha]}"

            @horario_atendimento = Time.now
            @tempo_de_espera = (@horario_atendimento - senha_atendida[:hora]) / 60.0
            @tempo_medio_atendimento << @tempo_de_espera.round(2)
            puts "O tempo de espera foi de #{@tempo_de_espera.round(2)} minutos"
        end
    end

    def total_de_atendimentos
        @atendidos = @tempo_medio_atendimento.size
        puts "O total de atendimentos foi #{@atendidos}"
    end

    def tempo_medio_de_espera
        if @tempo_medio_atendimento.empty?
            puts "O tempo médio para o atendimento é de 25 minutos"
        else
            total_espera = @tempo_medio_atendimento.reduce(0, :+)
            media = total_espera / @tempo_medio_atendimento.size
            puts "O tempo médio de espera é de #{media.round(2)} minutos"
        end
    end
end
