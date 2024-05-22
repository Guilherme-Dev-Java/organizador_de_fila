require_relative "senha.rb"

class Atendimento
    attr_reader :hora_inicial, :tempo_de_espera, :atendidos, :horario_atendimento, :tempo_medio_atedimento

    def initialize
        @hora_inicial = Time.now
    end

    def chamar_senha (senhas)
        @atendidos = 0

        if senhas.empty?
            puts "Nenhuma senha no sistema para ser atendida"
        elsif (atendidos == 0)
            senha_atendida = senhas.shift
            puts "SENHA: #{senha_atendida}" 
            @horario_atendimento = Time.now
            @tempo_de_espera = @hora_inicial - senha_atendida.hora_senha

        end

    end
end