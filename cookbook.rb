INSERIR_RECEITA = 1
VISUALIZAR_RECEITA = 2
SAIR = 3

# MÉTODOS
def bem_vindo # método
    puts "Bem vindo ao Cookbook"
end

def menu
    puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
    puts "[#{VISUALIZAR_RECEITA}] Ver todas as receitas"
    puts "[#{SAIR}] Sair"

    print "Escolha uma opção: "
    return gets.to_i()
end

def inserir_receita
    puts "Digite o nome da receita: "
    nome = gets.chomp()
    puts "Digite o tipo da receita: "
    tipo = gets.chomp()

    # receitas << {nome: nome, tipo: tipo} # Hash
    puts
    puts "Receita #{nome} cadastrada com sucesso!"
    puts
    return {nome: nome, tipo: tipo}
end

def imprimir_receitas(receitas)
    puts "======== Receitas Cadastradas ========"
    # puts receitas #funciona como o each ou o for
    receitas.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]}" # Hash
    end
    puts
    if receitas.empty?
        puts "Nenhuma receita cadastrada"
    end
end

# Início do Programa

bem_vindo() # chamada do método

receitas = []

opcao = menu()

loop do
    if(opcao == INSERIR_RECEITA)
        receitas << inserir_receita()
    elsif(opcao == VISUALIZAR_RECEITA)
        imprimir_receitas(receitas)
    elsif(opcao == SAIR)
        break
    else
        puts "Opção inválida"
    end
    opcao = menu()
end

