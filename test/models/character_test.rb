require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  test 'Creating a character' do
    character = Character.new name:'Name', surname:'Surname', 
                              information:'+Gender +Male +Eyes Color +Blue +When he went to the forest without letting know his parents.....', 
                              avatar_url: 'https://i.pinimg.com/474x/cb/1c/bd/cb1cbd7a68a2e2ffdad62073d0eb5bd2.jpg'

    character.save!

    assert_equal character, Character.last
  end

  test 'Character cannot be exist without name' do
    character = Character.new surname:'Surname', 
    information:'+Gender +Male +Eyes Color +Blue +When he went to the forest without letting know his parents.....', 
    avatar_url: 'https://i.pinimg.com/474x/cb/1c/bd/cb1cbd7a68a2e2ffdad62073d0eb5bd2.jpg'

    refute character.valid?
  end

  test 'Character cannot be exist without information' do
    character = Character.new name: 'Name', surname:'Surname', 
    avatar_url: 'https://i.pinimg.com/474x/cb/1c/bd/cb1cbd7a68a2e2ffdad62073d0eb5bd2.jpg'

    refute character.valid?
  end

  test 'Character cannot be exist without avatar' do
    character = Character.new name: 'Name', surname:'Surname',
    information:'+Gender +Male +Eyes Color +Blue +When he went to the forest without letting know his parents.....'

    refute character.valid?
  end
end
