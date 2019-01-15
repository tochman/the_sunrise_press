# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :content }
    it { is_expected.to have_db_column :journalist }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :content }
  end

  describe 'Associations' do
    it { should belong_to(:category) }
    it { should belong_to(:user) }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:article)).to be_valid
    end
  end

  describe 'Image attachment' do
    let(:image) { File.open(fixture_path + '/basic_image.png') }

    it 'can be attached to article' do
      subject.image.attach(io: image,
                           filename: 'attachment_1.png',
                           content_type: 'image/png')
      expect(subject.image).to be_attached
    end
  end
end
