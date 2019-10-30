
Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

module PageObjects

  def inclui_usuario
    @cadastro_usuario ||= CriaUsuarios.new
  end
  def lista_usuario
    @listar_usuarios ||= ListaUsuarios.new
  end
end