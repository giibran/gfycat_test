require_relative '../pages/signup.rb'
require_relative '../pages/homepage.rb'
require 'rspec'

describe 'Sign up tests' do
  before(:all) do
    @signup = Signup.new
    @signup.load
  end

  # it 'sign up correctly' do
  #   @signup.username_input.set 'nuevoUsuario'
  #   @signup.password_input.set 'password'
  #   @signup.email_input.set 'nuevo@usuario.com'
  #   @signup.sign_up_button.click
  #   sleep 2
  #   @homepage = Homepage.new
  #   expect(@homepage).to have_avatar_icon
  # end

  it 'Sending the sign up form empty' do
    expect(@signup.sign_up_button).to be_disabled
  end

  it 'Send sign up form with username taken by other user' do
    @signup.username_input.set 'asdasd'
    sleep 2
    @signup.find('.input-error', text: 'Username taken')
  end

  it 'Send sign up form with username with less than 6 characters' do
    @signup.username_input.set 'asd'
    @signup.find('.input-error', text: 'Your username must be at least 6 characters')
  end

  it 'Send sign up form with email that is taken by other user' do
    @signup.username_input.set 'nuevoUsuario123'
    @signup.password_input.set 'password'
    @signup.email_input.set 'gibranarias@gmail.com'
    @signup.sign_up_button.click
    @signup.find('.input-error', text: 'Email taken')
  end

  it 'Send sign up form with wrong format email' do
    @signup.email_input.set 'asd'
    @signup.find('.input-error', text: 'Enter valid email')
  end

  it 'Send sign up form when password has less than 4 characters' do
    @signup.password_input.set 'asd'
    @signup.find('.input-error', text: 'Your password must be at least 4 characters')
  end
end
