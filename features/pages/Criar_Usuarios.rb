class CriaUsuarios < SitePrism::Page
    set_url 'https://automacaocombatista.herokuapp.com/users/new'

    #Formulário
    element :nome, '#user_name'
    element :ultimo_nome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'

    #Botões Internos
    element :criar, 'div[class="actions btn waves-effect green"]' 
    element :botao_voltar, 'button[class="btn waves-light red"]' 
    element :botao_editar, 'a[class="btn waves-light blue"]'
    
    #Mensagens
    element :msg_crud_usuario, '#notice'
    element :usua_informacoes,  'div[class="col s12 center"]'
    element :msg_email_invalido,'#error_explanation'
        
   
    #Métodos
       
    def incluir_informacoes
        nome.set(DADOS[:usuarios][:nome])
        ultimo_nome.set(DADOS[:usuarios][:ultimo_nome])
        email.set(DADOS[:usuarios][:email])
        endereco.set(DADOS[:usuarios][:endereco])
        universidade.set(DADOS[:usuarios][:universidade])
        profissao.set(DADOS[:usuarios][:profissao])
        genero.set(DADOS[:usuarios][:genero])
        idade.set(DADOS[:usuarios][:idade])
        criar.click
    end 

    def alterar_informacoes
        nome.set(DADOS[:usuarios][:nome_alt])
        ultimo_nome.set(DADOS[:usuarios][:ultimo_nome_alt])
        email.set(DADOS[:usuarios][:email_alt])
        endereco.set(DADOS[:usuarios][:endereco_alt])
        universidade.set(DADOS[:usuarios][:universidade_alt])
        profissao.set(DADOS[:usuarios][:profissao_alt])
        genero.set(DADOS[:usuarios][:genero_alt])
        idade.set(DADOS[:usuarios][:idade_alt])
        criar.click
   end
   
   def sem_informacoes
    criar.click
   end

   def email_invalido 
    nome.set(DADOS[:usuarios][:nome])
    ultimo_nome.set(DADOS[:usuarios][:ultimo_nome])
    email.set(DADOS[:usuarios][:email_invalido])
    criar.click
   end

end    
    