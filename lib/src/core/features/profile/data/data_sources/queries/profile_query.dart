abstract class ProfileQueries {
  static const String getProfilePath = 'profile';

  static const String getProfile = '''
      query GetProfile {
        profile {
          ... on Profile {
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
            last_name
            birthday
            city {
              city
              city_code
              city_id
            }
            email
            first_name
            middle_name
            profile_uid
            phone
            sex {
              sex
              sex_id
            }
          }
          ... on ReturnError {
            name
            message
          }
        }
      }
     ''';

  static const String updateProfilePath = 'update_profile';

  static const String updateProfile = r'''
      mutation MyMutation($birthday: Date!, $city_id: Int = 10, $email: String = "", $first_name: String = "", $last_name: String = "", $middle_name: String = "", $sex_id: Int = 10) {
        update_profile(
          profile_input: {last_name: $last_name, first_name: $first_name, city_id: $city_id, sex_id: $sex_id, birthday: $birthday, email: $email, middle_name: $middle_name}
        ) {
          ... on Profile {
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
            last_name
            birthday
            city {
              city
              city_code
              city_id
            }
            email
            first_name
            middle_name
            profile_uid
            phone
            sex {
              sex
              sex_id
            }
          }
          ... on ReturnError {
            name
            message
          }
        }
      }
     ''';

  static const String getCitiesPath = 'get_dict_cities';

  static const String getCities = '''
      query GetCities {
        get_dict_cities {
          city
          city_code
          city_id
        }
      }
     ''';

  static const String getSexesPath = 'get_dict_sexes';

  static const String getSexes = '''
      query GetCities {
        get_dict_sexes {
          sex
          sex_id
        }
      }
     ''';

  static const String deleteProfilePath = 'delete_profile';

  static const String deleteProfile = '''
      mutation Delete_profile {
        delete_profile {
          ... on DeleteProfile {
            message
          }
          ... on ReturnError {
            message
            name
          }
        }
      }
    ''';
}
