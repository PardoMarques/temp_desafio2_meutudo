class DesafioPage < SitePrism::Page

    element :btn_azul, '.large-2.columns :nth-child(1)'
    element :btn_vermelho, '.row .button.alert'
    element :btn_verde, '.row .button.success'
    element :text_answer, 'div #canvas'
    
    def click_botao_colorido(cor_botao)
        case cor_botao
            when "azul" then btn_azul.click()
            when "vermelho" then btn_vermelho.click()
            when "verde" then btn_verde.click()
        else puts "Nenhuma opção encontrada"
        end
        sleep(1)
    end

    def click_opcao_e_linha(opcao, linha)
        posOpcao = nil
        if opcao == "edit"
            posOpcao = 1
        elsif opcao == "delete"
            posOpcao = 2
        end

        find("#content  table > tbody > tr:nth-child(#{(linha+1)}) > td:nth-child(7) > a:nth-child(#{posOpcao})").click()
    end

    def go
        visit 'https://the-internet.herokuapp.com/challenging_dom'
        sleep(1)
    end
  
end
  