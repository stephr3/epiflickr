require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_attached_file(:avatar) }
  it { should have_many :images }
  # it { should validate_attachment_content_type(:avatar).allowing('/\Aimage\/.*\z/')}
end
