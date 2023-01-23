INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4


def bem_vindo
  puts "Bem-vindo ao CookBook, sua rede social de receitas"
end

def menu
  puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
  puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receitas"
  puts "[#{BUSCAR_RECEITAS}] Buscar receitas"
  puts "[#{SAIR}] Sair"
  
  print "Digite uma das opções a cima: "
  
  return gets.chomp.to_i
end

def inserir_receita
  puts "Digite o nome da receita: "
  nome = gets.chomp
  puts "Digite o tipo da receita: "
  tipo = gets.chomp  
  puts
  puts "Receita #{nome} cadastrada com sucesso!"
  puts
  return {nome: nome, tipo: tipo} 
end


def imprimir_receitas(receitas)
  puts "======= Receitas cadastradas ======="
  receitas.each do |receita|
    puts "#{receita[:nome]} - #{receita[:tipo]}"   
  end
  puts
  if receitas.empty?
    puts "Nenhuma receita cadastrada"
    puts
  end
end

bem_vindo

receitas = []
opcao = menu

loop do
    if (opcao == INSERIR_RECEITA) 
     receitas << inserir_receita
    elsif(opcao == VISUALIZAR_RECEITAS)
        imprimir_receitas(receitas)
    elsif(opcao == SAIR)
        break


    elsif(opcao == BUSCAR_RECEITAS)
      puts "Digite a receita que quer pesquisar"
      buscar = gets.chomp
      puts
      receita = receitas.find {|x| x[:nome] = buscar}
                   
      if receita.nil?
        puts "Não tem receita cadastrada com esse nome"
        puts
      else
        puts "Nome da receita: #{receita[:nome]}, tipo da receita: #{receita[:tipo]}"
      end
      

    else
        puts "Opção invalida"
        puts
    end        
        opcao = menu        
    
# ------------------------------------------------

    #.each em Ruby
    #receitas.each do |receita|
     #   puts receita
    #end
    # ----------------------------------------------

    #for em Ruby
    #for receita in receitas do
        #puts receita         
    #end
    
end
puts
puts "Obrigado por usar o cookbook, até logo"
