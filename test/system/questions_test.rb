# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    click_on 'Ask'

    assert_text "I don't care, get dressed and go to work!"
  end

  test 'telling your coach what they want to hear' do
    visit ask_url
    fill_in 'question', with: 'i am going to work'
    click_on 'Ask'

    assert_text 'Great!'
  end

  test 'asking a question yield a silly response from coach' do
    visit ask_url
    fill_in 'question', with: 'Who am i?'
    click_on 'Ask'

    assert_text 'Silly question, get dressed and go to work!'
  end
end
