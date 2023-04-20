# W~~eb~~~~B~~oilerplate

Boilerplate for web application.

## What's inside
Boilerplate web application ready to be used as a base for your project. It contains functionality required for each and every web service API. Contains:

1. Web service with basic configuration based
2. [ORM](https://en.wikipedia.org/wiki/Object%E2%80%93relational_mapping) connected to PostgreSQL by default
3. Default configuration with API routes for authentication and authorization
4. Configured `Docker` file for your service containerization

## Under the hood
1. Express
2. TypeORM
3. Passport
4. Pg (PostgreSQL)
5. Bcryptjs
6. Winston
7. Swagger

## What else?
1. Configuration for VSCode for `TypeScript` building and debugging
2. `Eslint` and `Prettier` configurations
3. `TypeScript` configuration

>Don't forget to add to your VS Code global setting this code in order to activate `fix on save' for linter and pretier:

```json
"[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.codeActionsOnSave": {
        "source.fixAll": true     
    },
    "editor.formatOnSave": true
},
"[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.codeActionsOnSave": {
        "source.fixAll": true     
    },
    "editor.formatOnSave": true
}
```

## How to install:

1. Create empty database in PostgreSQL (this will be your app database)
2. Run `npm install` for installing all dependencies 
3. Run `npm run install` and follow cmd
4. Build app
5. Enjoy