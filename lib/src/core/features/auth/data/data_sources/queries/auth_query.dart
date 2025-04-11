abstract class AuthQueries {
  static const String sendCodePath = 'send_code';

  static const String sendCode = r'''
    mutation sendCode($phone: String!) {
      send_code(
        login_input: {phone: $phone, is_approval_cookie: true, is_approval_participation: true, is_approval_pdn: true}
      ) {
        ... on PhoneVerification {
          __typename
          session_id
          timer
        }
        ... on ReturnError {
          name
          message
        }
      }
    }
     ''';

  static const String authPath = 'auth';

  static const String auth = r'''
    mutation MyMutation($session_id: UUID!, $code: Int = 10) {
      auth(code: $code, session_id: $session_id) {
        ... on Login {
          __typename
          profile {
            profile_uid
            phone
            last_name
            first_name
            middle_name
            birthday
            locality
            email
            telegram_username
            is_approval_cookie
            is_approval_pdn
            is_approval_participation
            registration_date
            change_date
            fullness
            respondent_status {
              status_email {
                status_code
                status_name
              }
              status_profile {
                status_code
                status_name
              }
            }
            sex {
              sex_id
              sex
            }
            city {
              city_id
              city_code
              city
              population
            }
            region {
              region_id
              region
            }
          }
          access_token
          refresh_token
        }
        ... on ReturnError {
          name
          message
        }
      }
    }
     ''';

  static const String refreshTokenPath = 'refresh_token';

  static const String refreshToken = r'''
    query RefreshToken($refresh_token: String!) {
      refresh_token(refresh_token: $refresh_token) {
        ... on ReturnTokens {
          __typename
          access_token
          refresh_token
        }
        ... on ReturnError {
          name
          message
        }
      }
    }
     ''';
}
