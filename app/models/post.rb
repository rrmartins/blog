class Post < ActiveRecord::Base

  validates_presence_of :titulo, :message => "deve ser preenchido"
  validates_presence_of :chamada, :message => "deve ser preenchido"
  validates_presence_of :texto, :message => "deve ser preenchido"

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


end
