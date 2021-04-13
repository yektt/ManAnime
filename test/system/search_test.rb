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

  test 'advanced search - one genre choosen' do
    visit(search_path(:en))
    click_on('Advanced Search')
    find(:css, "#genres_id_[value='2']").set(true)
    within("#advanced_search") do
      click_on('Search', match: :first)
    end
    assert page.has_content?('Adventure')
  end

  test 'advanced search - two genres choosen - no result' do
    visit(search_path(:en))
    click_on('Advanced Search')
    find(:css, "#genres_id_[value='2']").set(true)
    find(:css, "#genres_id_[value='8']").set(true)
    within("#advanced_search") do
      click_on('Search', match: :first)
    end
    assert page.has_content?('Adventure and Psychological')
  end

  test 'advanced search - two genres choosen - with result' do
    visit(search_path(:en))
    click_on('Advanced Search')
    find(:css, "#genres_id_[value='2']").set(true)
    find(:css, "#genres_id_[value='7']").set(true)
    within("#advanced_search") do
      click_on('Search', match: :first)
    end
    assert page.has_content?('Adventure and Mystery')
  end

  test 'advanced search - only start date choosen' do
    visit(search_path(:en))
    click_on('Advanced Search')
    find(:css, "#year_2010").set(true)
    within("#advanced_search") do
      click_on('Search', match: :first)
    end
    assert_equal all(".grid-item").length, Content.where("CAST(strftime('%Y', start_date) as INT) >= ?", 2010).length
    assert page.has_content?('2010')
  end

  test 'advanced search - date and genre choosen' do
    visit(search_path(:en))
    click_on('Advanced Search')

    find(:css, "#year_2010").set(true)
    find(:css, "#genres_id_[value='2']").set(true)
    find(:css, "#genres_id_[value='7']").set(true)

    within("#advanced_search") do
      click_on('Search', match: :first)
    end

    assert page.has_content?('2010 for Adventure and Mystery')
  end
end