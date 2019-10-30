class ListaUsuarios < SitePrism::Page
    set_url 'https://automacaocombatista.herokuapp.com/users'


    #Formulário
    element :lista_nome, :xpath, '/html/body/div[2]/div[2]/div[3]/div/p[1]/strong'
    element :first_nome, :xpath, '/html/body/div[3]/div/table/tbody/tr[1]/td[1]'
    element :buscar, :xpath, '/html/body/div[3]/div/table/tbody/tr[1]/td[9]/a'
    element :editar, 'a', :text => 'edit' 
    element :remover, 'a', :text => 'delete' 
 

    #Botões Internos
    element :botao_novo_usuario, 'button[class="btn waves-light green"]' 
    element :lista_voltar, 'a[class="btn red"]'
    element :botao_proximo, 'span[class="next"]'
   end
    
