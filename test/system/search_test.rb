require "application_system_test_case"

class SearchTest < ApplicationSystemTestCase

  test 'search with results' do
    visit(search_path(:en))
    fill_in('q', with:'shi')

    assert page.has_content?('Shigatsu wa Kimi no Uso')
    refute page.has_content?('InuYasha')
  end
  
  test 'search without results' do
    visit(search_path(:en))
    fill_in('q', with:'abc')

    refute page.has_content?("I couldn't find 'abc' in anywhere! ")
  end

  test 'search with season-winter' do
    visit(search_path(:en))
    click_on(:dropdown)
    click_on('Winter')
    sleep(1.second)

    assert page.has_content?('Violet Evergarden')
  end

end