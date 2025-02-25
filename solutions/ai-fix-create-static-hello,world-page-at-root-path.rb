To create a static "Hello, World!" page at the root path using Ruby, you'll typically want to use a web framework. The most popular choice in the Ruby ecosystem is Ruby on Rails. Below is a step-by-step guide to implement this requirement using a Rails application.

### Step 1: Create a New Rails Application

If you haven’t already created a Rails application, start by doing so. Open your terminal and run:

```bash
rails new hello_world_app
cd hello_world_app
```

### Step 2: Generate the Controller and View

Create a controller to handle the root path request. You can use the Rails generator to create a controller named `StaticPages` with an action named `home`.

```bash
rails generate controller StaticPages home
```

### Step 3: Define the Route

Next, open the `config/routes.rb` file to set the root path of your application to the `home` action of the `StaticPagesController`.

```ruby
Rails.application.routes.draw do
  root 'static_pages#home'
end
```

### Step 4: Create the View

Now, you need to create a view that will display "Hello, World!". Open the file `app/views/static_pages/home.html.erb` and add the following HTML code:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hello, World!</title>
</head>
<body>
  <h1>Hello, World!</h1>
</body>
</html>
```

### Step 5: Start the Rails Server

To see your static page in action, you can start the Rails server by running:

```bash
rails server
```

### Step 6: Display the Page

Open a web browser and navigate to `http://localhost:3000`. You should see the "Hello, World!" page displayed there.

### Optional: Add Some Styles (If Desired)

If you want to add some simple CSS styles to beautify your static page, you can create a CSS file. Open `app/assets/stylesheets/application.css` and append some custom styles, for example:

```css
body {
  font-family: Arial, sans-serif;
  text-align: center;
  margin-top: 50px;
}

h1 {
  color: #333;
}
```

### Final Code Overview

Your final implementation structure should look something like this:

- **app/controllers/static_pages_controller.rb**

```ruby
class StaticPagesController < ApplicationController
  def home
  end
end
```

- **app/views/static_pages/home.html.erb**

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hello, World!</title>
</head>
<body>
  <h1>Hello, World!</h1>
</body>
</html>
```

- **config/routes.rb**

```ruby
Rails.application.routes.draw do
  root 'static_pages#home'
end
```

### Testing the Implementation

You may also want to create a simple test to ensure that the root path successfully renders the "Hello, World!" message. Update your test suite in `test/controllers/static_pages_controller_test.rb` to include:

```ruby
require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select "h1", "Hello, World!"
  end
end
```

### Summary

You have successfully created a static "Hello, World!" page at the root path of a Rails application. The solution includes routing, a controller, a view, optional CSS styling, and a basic test. This implementation adheres to best practices in Rails development and maintains simplicity while fulfilling the requirements of the ticket.