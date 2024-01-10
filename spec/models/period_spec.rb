require 'rails_helper'

RSpec.describe Period, type: :model do
  describe 'associations' do
    it { should belong_to(:user).dependent(:destroy) }
    it { should belong_to(:category).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of :start }
  end
end
