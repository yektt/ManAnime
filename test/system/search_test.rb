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
end