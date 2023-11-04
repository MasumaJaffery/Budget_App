<a name="readme-top"></a>

<div align="center">
  <h3><b>Budgetary</b></h3>
</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 budget App ](#-budget-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [Deployment](#deployment)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [❓ FAQ (OPTIONAL) ](#-faq-optional-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Budget App <a name="about-project"></a>

**Budgetary** empowers the end-users to start a new budget tracking account, where he can create categories and operations and see those data linked.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>


<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Make use for migrations features from Active Record**
- **Include Tables for User, Comment, Post, and Like**
- **Use user authentification and authorizations**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.
Note: We are assuming you have pre-installed ruby, WSL, ubuntu and rails!

### Prerequisites

In order to run this project you need:

first at all, install rails:

```sh
 gem install rails
```

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git@github.com:MasumaJaffery/Budget_App.git
```

### Install

Install this project with:

```sh
  cd Budget_App
  bundle install
```

Setting up the Data Base:

```sh
  rails db:create
  rails db:migrate
  rails db:seed
```

### Usage

To run the project, execute the following command:

```sh
  rails server
```

### Run tests

<!-- Test are under construction, but we expect to have them completed soon! -->

Before running tests, ensure you've set up the test database:

```sh
bin/rails db:migrate RAILS_ENV=test
```

**Note:** Given that the aim of this project is to test the application's UI, to see if it works without side effects. We have therefore had to modify the contents of certain files, which could have the effect of falsifying certain `Unit` tests. 
We therefore recommend that, rather than running all the tests, you only test the `features` folder and run 

```sh
bundle exec rspec ./spec

```

### Deployment

The deployment will be available soon !
https://budgetary.onrender.com/

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## Video
https://drive.google.com/file/d/1Gogbm0xKRDZtVTIiTcxR4i-5OmVt0IYx/view?usp=drivesdk

## 👥 Authors <a name="authors"></a>

👤 **Syeda Masuma Fatima**

- GitHub: [@MasumaJaffery](https://github.com/MasumaJaffery)
- Twitter: [@MasumaJaffery](https://twitter.com/MasumaJaffery)
- LinkedIn: [Masuma Jaffery](https://www.linkedin.com/in/masuma-jaffery-797a29256/)
  
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>


- [ ] **API documentation**
- [X] **Model Data**
- [ ] **Controllers Testing**
- [ ] **Models Testing**
- [ ] **View Implementation**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/MasumaJaffery/budget-in-rails/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>


If you like this project feel free to leave an start, as well if you have a suggestion feel free to visit issues page.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Microverse for suggestion this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ (OPTIONAL) <a name="faq"></a>

> Learn more about FAQ below:

- **How do I fix Linters errors if I modify the project?**

  - for rubocop run

  ```sh
  rubocop -A
  ```

  - for Stylint run:

  ```sh
  npx stylelint "**/*.{css,scss}" --fix
  ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
