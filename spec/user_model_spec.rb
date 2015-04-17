require "rails_helper"

describe 'User' do
	context 'when creating' do
		let(:user) 		 { User.new({ email: "username@email.com", password: "password" }) }
		let(:bad_user) { User.new({ email: "", password: "password" }) }
		let(:odd_user) { User.new({ email: "me@email.co", password: "" }) }
		let(:rad_user) { User.new({ email: "me@email.co", password: "password", password_confirmation: "password" }) }
		let(:sad_user) { User.new({ email: "me@email.co", password: "password", password_confirmation: "word" }) }

		it 'should be a User' do
			expect(user).to be_a User
		end

		it 'should have a valid email address' do
			expect(user.email).to eq("username@email.com")
		end 

		it 'should have an password_digest' do
			expect(user.password_digest).to be_a String
		end

		it 'should not create a User without valid data' do
			expect(bad_user.save).to be(false)
			expect(odd_user.save).to be(false)
		end

		it 'should confirm the password' do
			expect(rad_user.save).to be(true)
		end

		it 'should not save the User if the password_confirmation does not match the password' do
			expect(sad_user.save).to be(false)
		end

	end
end 
