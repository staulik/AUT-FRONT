Dado("que eu esteja na tela de Cadastros de Usuarios") do                               
    inclui_usuario.load
end                                                                                     
                                                                                        
Quando("inserir todas as informações e confirmar.") do                                  
      inclui_usuario.incluir_informacoes
end                                                                                     
                                                                                        
Então("o sistema apresenta as informações do usuário cadastrado.") do  
      expect(inclui_usuario.msg_crud_usuario.text).to eql('Usuário Criado com sucesso')
      puts inclui_usuario.msg_crud_usuario.text
      pega_nome = (inclui_usuario.usua_informacoes.text).split[1..2].join(" ")
      puts "O usuário foi criado com as seguintes informações: #{inclui_usuario.usua_informacoes.text.split[0..13].join(" ")}"
end     

Quando("não inserir as informações obrigatórias e confirmar.") do
       inclui_usuario.sem_informacoes                
end                                                                               
                                                                                  
Então("o sistema alerta o usuário que existem erros a serem corrigidos.") do      
     expect([inclui_usuario.nome.text,inclui_usuario.ultimo_nome.text,inclui_usuario.email.text]).to contain_exactly("","","") 
     puts "Favor corrigir os campos em branco!..."
end    

Quando("não inserir e-mail fora do padrão.") do                                  
      inclui_usuario.email_invalido
end                                                                              
                                                                                 
Então("o sistema alerta o usuário que o e-mail está inválido.") do 
     pega_texto = (inclui_usuario.msg_email_invalido.text).split(".").drop(6).join(".")
     puts pega_texto
end 

Quando("for alterado as informações desejadas.") do 
    inclui_usuario.incluir_informacoes
    inclui_usuario.wait_until_botao_editar_visible
    inclui_usuario.botao_editar.click
    inclui_usuario.alterar_informacoes

end                                                                              
                                                                                 
Então("o sistema exibe as informações alteradas.") do 
    expect(inclui_usuario.msg_crud_usuario.text ).to eql('Seu Usuário foi Atualizado!') 
    puts inclui_usuario.msg_crud_usuario.text                          
end                                                                              



                                                                                        
                                                                                        