require 'rails_helper'

RSpec.describe Drug, :type => :model do
	shared_examples_for "name のバリデーションが失敗する" do
		it { expect(drug).not_to be_valid }
		it { expect(drug.errors[:name]).to include("can't be blank") }
	end

	context "name が nil" do
		let(:drug) { Drug.create }
		it_should_behave_like "name のバリデーションが失敗する"
	end
	context "name が空欄" do
		let(:drug) { Drug.create(name:'') }
		it_should_behave_like "name のバリデーションが失敗する"
	end
	context "name が存在する" do
		let(:drug) { Drug.create(name:'john') }
		it { expect(drug).to be_valid }
		it { expect(drug.errors[:name]).to be_empty }
	end


end
