import { gql } from '@apollo/client';

const PARSE = gql`
  mutation Parse($cdl: String!) {
    parse(input: {cdl: $cdl}) {
      response
    }
  }
`
export default PARSE;
