require 'rails_helper'

RSpec.describe Song do
  describe '.create' do
    it 'creates a new song' do
      expect(Song.create).to be_a Song
    end

  end
end
