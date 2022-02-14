require "test_helper"

class AboutPageControllerTest < ActionDispatch::IntegrationTest
  test "get root" do
    get root_url
    assert_response :success
  end

  test "get about page" do 
    post about_page_url, params: {email: "test@abc.xyz", name: "Jane Doe"}
    assert_response :success
  end

  test "get about form" do
    get about_form_url
    assert_response :success
  end

  test "get about json as html" do
    get about_json_url, params: {message: "What is up my man"}
    assert_response :redirect
    assert_redirected_to root_url
  end

  test "get about json as json" do
    get about_json_url, params: {message: "What is up my man"}, as: :json
    assert_response :success
    body = JSON.parse(response.body)
    assert body["message"] == "What is up my man"
  end

  test "get about json as json without params" do
    get about_json_url, as: :json
    assert_response 400 # Bad Request
  end

  test "get about json as xml without params" do
    get about_json_url, as: :xml
    assert_response 400 # Bad Request
  end

  test "check for form partial" do
    assert File.file?("./app/views/about_page/_form.html.erb")
  end

end
