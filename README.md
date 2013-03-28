    And I click "Shipping Address"
    Then I should see "Default Address" on the page
    When I click on "Edit Shipping Address"
    And I am on the "Edit Address" page
    Then I should see "Default Address" in the "Description" field
    And I should see my phone number in the "Phone number" field
    Then I change "Description" field to "testing"
    When I click "Update Address"
    Then I should not see "Default Address" on the page
    And I should see "testing" on the page
RubyBudget
==========

Fun web app to track budgeting. Using this as an excuse to learn Ruby and solve some money saving issues.
