# Wordpress API Integration

This project is a Rails application that interacts with the WordPress API to fetch user data. The API endpoint is protected by basic authentication, which is handled through custom headers.

## Features

- Fetches all users from a specified WordPress website.
- Uses environment variables for sensitive information.
- Implements Basic Authentication for secure API access.

## Setup

### Prerequisites

- Ruby 3.3.1
- Rails 7.1.4.1

### Installation

1. **Clone the Repository**:

   ```bash
   git clone https://https://github.com/lbmartinez2/be_test
   cd be_test

2. **Install Dependencies**:

    ```bash
    bundle install

3. **Set Up Environment Variables**:

    WP_API_URL= [your_website]/wp-json/wp/v2

4. **Start the Server**
    rails server

