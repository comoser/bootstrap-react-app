# Bootstrap React App

This project is a starter for a [Create React App](https://github.com/facebook/create-react-app) that has a few configured tools for development.<br>
The folder structure is what first comes when you use create react app to create a new project. It hasn't been altered.

## Included Tools

- [husky](https://www.npmjs.com/package/husky) (for git hooks setup)
- [prettier](https://github.com/prettier/prettier) and [prettier-eslint](https://github.com/prettier/prettier-eslint) (for code style even in IDE - a **.prettierrc** is present for rule extension)
- [eslint](https://www.npmjs.com/package/eslint-config-airbnb) (based from AirBnB and extended with prettier - a **.eslintrc** is present for rule extension)
- [lint-staged](https://www.npmjs.com/package/lint-staged) (to run prettier and eslint - tests should also be included)
- [commitlint](https://github.com/marionebl/commitlint) (to assure conventional commits are performed)
- bash script to prevent commits in develop and master branches
- docker configuration to run the app in **dev** and in **prod**

## Docker usage

Before starting development, you have to build the images, so run:<br>
```docker-compose build```

Once the image is build, just run:<br>
```docker-compose up -d``` (-d is to run in detached mode)

NOTE: the **.env** file has a variable that defines if the script that docker runs creates a dev or prod version.

```APP_ENV=development``` to create a docker with a dev environment
```APP_ENV=production``` to create a docker with a prod environment

That is all, start developing!
