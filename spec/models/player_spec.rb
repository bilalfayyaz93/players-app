require 'rails_helper'

RSpec.describe Player, type: :model do
  describe '#validations' do
    subject { build(:player) }

    it { is_expected.to validate_presence_of(:last_name) }

    it { is_expected.to validate_numericality_of(:number).is_greater_than_or_equal_to(0) }
    it { is_expected.to validate_numericality_of(:number).is_less_than(100) }
  end
end
