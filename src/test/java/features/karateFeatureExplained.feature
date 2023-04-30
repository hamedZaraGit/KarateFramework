Feature: Token Generator Feature for Tek Insurance API

  
  Scenario: Generate Token
    Given url "https://tek-insurance-api.azurewebsites.net" # This line, you need to pass the base URL for your API test
    When path "/api/token" # This line, you need to provide for each seperate request you need to test in API 
    * request {"username":"supervisor","password":"tek_supervisor"} # If you will have a request body, then you need to provide the request keyword and body 
    * method post # method, specifies what service you want to do. post/get/put/delete
    * print response.token
    * print response.fullName # This line prints what you want to be printed in respoonse
    * status 400 # This line we are asserting 400 to whatever the request will return, if it matches 400 the assertion will pass. vice versa if not
    * assert response.fullName == 'supervisor'
    
    
    # This file is only for explanation, it will not work if you run it.
    # To run it, you need to remove the comments