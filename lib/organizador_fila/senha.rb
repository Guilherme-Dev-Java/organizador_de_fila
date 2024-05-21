class Senha
  attr_reader :numero, :hora, :senhas[]

  def gerar_senha

    @numero = rand(100)
    
    loop do
      if senhas.empty?

        hora_senha = Time.now
        @senhas << {senha: @numero, @hora = hora_senha}
        
      elsif !senhas.include?(@senha)
          
          hora_senha = Time.now
          @senhas << {senha: @numero, @hora = hora_senha}
      end

    end

  end

  def mostrar_senha
    
    if senhas.empty?
      puts "Nenhuma Senha no sistema para ser atendida!"
    elsif
      p senhas
    end
  end

end
    
