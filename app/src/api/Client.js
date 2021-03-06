import {
  ApolloClient,
  InMemoryCache,
  ApolloProvider,
  useQuery,
  gql
} from '@apollo/client';

const client = new ApolloClient({
  uri: 'http://127.0.0.1:3005/graphql',
  cache: new InMemoryCache()
});

export default client;
