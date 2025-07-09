# CRM on Rails

A simple Customer Relationship Management (CRM) system built with Ruby on Rails.

## Features

- **Active Admin Integration**: Complete admin interface for CRM management
- **File Upload Support**: Image upload capabilities via Active Storage
- **Modern Styling**: Clean, responsive design with Bulma CSS framework
- **Customer Management**: View and manage customer records
- **Admin Dashboard**: Comprehensive management interface

## Installation

### 1. Clone the repository
```bash
git clone https://github.com/josedsegurav/crmonrails.git
cd crmonrails
```

### 2. Install dependencies
```bash
bundle install
```

### 3. Database setup
```bash
rails db:create
rails db:migrate
rails db:seed
```
*Note: Includes starter dataset with sample data*

### 4. Start the server
```bash
rails server
```

## Usage

### Application Routes

- **Homepage** (`/`) - Browse all customers
- **Admin Panel** (`/admin`) - Management interface for CRM operations

### Admin Access

Admin credentials are provided in `db/seeds.rb` (development environment only).

## Development

The application runs on `http://localhost:3000` by default.

## Technology Stack

- **Framework**: Ruby on Rails
- **Admin Interface**: Active Admin
- **File Storage**: Active Storage
- **Styling**: Bulma CSS
- **Database**: SQLite (development) / PostgreSQL (production)