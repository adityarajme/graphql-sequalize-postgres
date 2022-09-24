console.log("hello ");

//https://www.section.io/engineering-education/build-a-graphql-server-using-nodejs/
//https://blog.logrocket.com/creating-scalable-graphql-api-mysql-apollo-node/
//https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-node-js-on-ubuntu-20-04
//https://www.freecodecamp.org/news/how-to-use-typescript-with-graphql/
// Construct a schema, using GraphQL schema language

/*

var express = require('express');
var { graphqlHTTP } = require('express-graphql');
var { buildSchema } = require('graphql');

var schema = buildSchema(`
  type Query {
    hello: String
  }
`);

// The root provides a resolver function for each API endpoint
var root = {
  hello: () => {
    return 'Hello world!';
  },
};

var app = express();
app.use('/graphql', graphqlHTTP({
  schema: schema,
  rootValue: root,
  graphiql: true,
}));
app.listen(4000);
console.log('Running a GraphQL API server at http://localhost:4000/graphql');
*/