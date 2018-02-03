class Student < ApplicationRecord
  validates_format_of :email, with: /\@inf\.ufrgs\.br/, message: 'Por favor, use um email válido do instituto (@inf.ufrgs.br)'
  validates :email, uniqueness: true
end
