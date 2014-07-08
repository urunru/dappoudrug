# coding: utf-8
require 'rails_helper'

describe User do

	shared_examples_for "name のバリデーションが失敗する" do
		it { expect(user).not_to be_valid }
		it { expect(user.errors[:name]).to include("can't be blank") }
	end

	context "name が nil" do
		let(:user) { User.create }
		it_should_behave_like "name のバリデーションが失敗する"
	end
	context "name が空欄" do
		let(:user) { User.create(name:'') }
		it_should_behave_like "name のバリデーションが失敗する"
	end
	context "name が存在する" do
		let(:user) { User.create(name:'john') }
		it { expect(user).to be_valid }
		it { expect(user.errors[:name]).to be_empty }
	end
end