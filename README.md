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

1. Run `npm install` for installing all dependencies
2. Configure environment:
   1. Add to the root of project file with name `.env` and the following content (change values to proper one):
    ```sh
    DB="postgres://user:password@host:port/database"
    JWT_SECRET="jwtsecret"
    ENV="DEV"
    ``` 
   2. Change `ENV` vars in `Dockerfile` to the same values
   3. Change postgres `password` and `host` values to same one in `/scripts/initdb.sh`  
      
3. Run `/scripts/initdb.sh`. It will setup `postgres` docker container (yes, you will need `Docker` installed) and network
4. Create database in newly created postgres
5. Run `npm run init`. It will populate 
6. Build app