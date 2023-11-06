require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  setup do
    @company = companies(:one)
  end

  test "visiting the index" do
    visit companies_url
    assert_selector "h1", text: "Companies"
  end

  test "should create company" do
    visit companies_url
    click_on "New company"

    fill_in "Company founder", with: @company.company_founder
    fill_in "Company founding time", with: @company.company_founding_time
    fill_in "Company headcount", with: @company.company_headcount
    fill_in "Company name", with: @company.company_name
    fill_in "Headquarter address", with: @company.headquarter_address
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "should update Company" do
    visit company_url(@company)
    click_on "Edit this company", match: :first

    fill_in "Company founder", with: @company.company_founder
    fill_in "Company founding time", with: @company.company_founding_time
    fill_in "Company headcount", with: @company.company_headcount
    fill_in "Company name", with: @company.company_name
    fill_in "Headquarter address", with: @company.headquarter_address
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "should destroy Company" do
    visit company_url(@company)
    click_on "Destroy this company", match: :first

    assert_text "Company was successfully destroyed"
  end
end
