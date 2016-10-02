require 'test_helper'

class CollegeEmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @college_employee = college_employees(:one)
  end

  test "should get index" do
    get college_employees_url
    assert_response :success
  end

  test "should get new" do
    get new_college_employee_url
    assert_response :success
  end

  test "should create college_employee" do
    assert_difference('CollegeEmployee.count') do
      post college_employees_url, params: { college_employee: { company: @college_employee.company, location: @college_employee.location, name: @college_employee.name, phone_no: @college_employee.phone_no } }
    end

    assert_redirected_to college_employee_url(CollegeEmployee.last)
  end

  test "should show college_employee" do
    get college_employee_url(@college_employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_college_employee_url(@college_employee)
    assert_response :success
  end

  test "should update college_employee" do
    patch college_employee_url(@college_employee), params: { college_employee: { company: @college_employee.company, location: @college_employee.location, name: @college_employee.name, phone_no: @college_employee.phone_no } }
    assert_redirected_to college_employee_url(@college_employee)
  end

  test "should destroy college_employee" do
    assert_difference('CollegeEmployee.count', -1) do
      delete college_employee_url(@college_employee)
    end

    assert_redirected_to college_employees_url
  end
end
