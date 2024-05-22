class Senha
  attr_reader :numero, :hora, :senhas

  def def initialize
    @senhas = []
  end

  def gerar_senha

    @numero = rand(100)
    hora_senha = Time.now
    unless @senhas.any?{|s| s[:senha] == numero}
      @senhas << {senha: @numero, hora: hora_senha}
    end
  end

  def mostrar_senha
    
    if senhas.empty?
      puts "Nenhuma Senha no sistema para ser atendida!"
    elsif
      p @senhas
    end
  end

end
    
