class Post < ActiveRecord::Base
  has_many :comentarios
  before_save :inserir_data_caso_nao_tenha
  validates_presence_of :titulo, :message => "deve ser preenchido"
  validates_presence_of :chamada, :message => "deve ser preenchido"
  validates_presence_of :texto, :message => "deve ser preenchido"
  # validates_presence_of :data, :message => "deve ser preenchido"
  validate :inserir_data_caso_nao_tenha
  validate :primeira_letra_chamada_deve_ser_maiuscula

  private
  def primeira_letra_chamada_deve_ser_maiuscula
    errors.add("chamada", "primeira letra deve ser maiuscula") unless chamada =~ /[A-Z].*/
  end

  validate :primeira_letra_titulo_deve_ser_maiuscula

  private
  def primeira_letra_titulo_deve_ser_maiuscula
    errors.add("titulo", "primeira letra deve ser maiuscula") unless titulo =~ /[A-Z].*/
  end
  
  def inserir_data_caso_nao_tenha
    if self.data.nil?
      self.data = DateTime.now
    else
      self.data = self.data
    end
  end

end
