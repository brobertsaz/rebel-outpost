class Contact
  include Mongoid::Document
  field :name
  field :email
  field :message
  field :company
  field :phone

  validates_presence_of :name, :email
end
