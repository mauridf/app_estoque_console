def iniciar_menu(produtos = [])
    loop do
        mensagem_amarelo("======= ESCOLHA UMA DAS OPÇÕES: =========", false, false)
        mensagem_azul("#{vermelho("1")} - CADASTRO DE PRODUTOS", false, false)
        mensagem_azul("#{vermelho("2")} - LISTAR PRODUTOS", false, false)
        mensagem_azul("#{vermelho("3")} - RETIRAR DO ESTOQUE", false, false)
        mensagem_azul("#{vermelho("4")} - SAIR", false, false)

        opcao = gets.to_i

        case opcao
        when 1
            cadastrar_produto(produtos)
        when 2
            listar_produtos(produtos)
        when 3
            retirar_estoque(produtos)
        when 4
            limpar_tela
            exit
        else
            mensagem "OPÇÃO QUE FOI SELECIONADA É INVÁLIDA"
        end
    end
end