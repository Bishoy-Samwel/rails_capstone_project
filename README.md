## README

# Redesign of Twitter

> A web app users can share and see favourite quotes of their follows on the home page, Users can follow each other and see quotes on the profile page.  

## Live Demo 
[live](https://bishoy-share-a-quote-project.herokuapp.com/)


## Screenshots

#### Home Page 
![Home Page](https://res.cloudinary.com/bishorails/image/upload/v1624030167/Screenshot_from_2021-06-18_17-28-43_aoyphk.png)

#### Profile Page
![Profile Page](https://res.cloudinary.com/bishorails/image/upload/v1624029514/Screenshot_from_2021-06-18_17-17-48_hovtbs.png)

## Some of the advanced concepts explored in this project include.

- Working with advanced associations, many-to-many relationships.
- Building simple authentication from scratch
- Used RSpec as the test suite with the help of shoulda-matchers and capybara for effective testing. Both unit and integration testing was done.
- Used Active Storage and Cloudinary to achieve image upload and image retrieve for profile photo.
- Applying MVC architecture pattern

## Built With

- ruby 2.7.2p137
- Rails 6.1.3.2
- RSpec
- Bootstrap 4.4.1
- Active Storage
- Cloudinary
- Heroku


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

ruby 2.7.2p137
Rails 6.1.3.2

### Setup

```
$ git clone https://github.com/Bishoy-Samwel/rails_capstone_project.git
$ cd twitter

```
Instal gems with:
```
bundle install
```
Setup database with:

```
   rails db:create
   rails db:migrate
```

### Usage

Start server with:

```
    rails s
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rspec --format documentation
```

## Acknowledgments
- Design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella)

## ✒️ Author <a name = "author"></a>

👤 **Bishoy Samwel Faheem**

- GitHub: [@Bishoy Samwel Faheem](https://github.com/Bishoy-Samwel)
- LinkedIn: [Bishoy Samwel](https://www.linkedin.com/in/bishoy-samwuel-ss/)
- Twitter: [@bisho](https://twitter.com/BishoFaheem15)

## 📝 License

This project is [MIT](LICENSE) licensed.

