// ignore_for_file: camel_case_extensions

import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/auth/data/data_sources/queries/respondent_profile.graphql.dart';
import 'package:apr/src/core/features/profile/_profile.dart';

extension Query$Profile$profile$$ProfileMapper
    on Query$Profile$profile$$Profile {
  AuthenticatedUser toEntity() {
    return AuthenticatedUser(
      id: profile_uid,
      status: RespondentStatusDTO(
        email: StatusDTO(
          code: respondent_status.status_email.status_code,
          name: respondent_status.status_email.status_name,
        ),
        profile: StatusDTO(
          code: respondent_status.status_profile.status_code,
          name: respondent_status.status_profile.status_name,
        ),
        activity: StatusDTO(
          code: respondent_status.status_activity.status_code,
          name: respondent_status.status_activity.status_name,
        ),
      ),
      birthday: birthday != null ? DateTime.tryParse(birthday!) : null,
      city: city != null
          ? CityDTO(city: city!.city, code: city!.city_code, id: city!.city_id)
          : null,
      email: email,
      firstName: first_name,
      lastName: last_name,
      middleName: middle_name,
      phone: phone,
      sex: sex != null ? SexDTO(id: sex!.sex_id, sex: sex!.sex) : null,
      changeDate: DateTime.tryParse(change_date),
      fullness: fullness ?? 0,
      isApprovalPDN: is_approval_pdn,
      isApprovalParticipation: is_approval_participation,
      isImported: is_imported ?? false,
      locality: locality,
      region: region != null
          ? RegionDTO(
              id: region!.region_id,
              region: region!.region,
              fed: FedDTO(id: region!.fed!.fed_id, text: region!.fed!.fed),
            )
          : null,
      registrationDate: DateTime.tryParse(registration_date),
      telegramUsername: telegram_username,
    );
  }
}

extension Mutation$UpdateProfile$update_profile$$ProfileMapper
    on Mutation$UpdateProfile$update_profile$$Profile {
  AuthenticatedUser toEntity() {
    return AuthenticatedUser(
      id: profile_uid,
      profileId: profile_id,
      status: RespondentStatusDTO(
        email: StatusDTO(
          code: respondent_status.status_email.status_code,
          name: respondent_status.status_email.status_name,
        ),
        profile: StatusDTO(
          code: respondent_status.status_profile.status_code,
          name: respondent_status.status_profile.status_name,
        ),
        activity: StatusDTO(
          code: respondent_status.status_activity.status_code,
          name: respondent_status.status_activity.status_name,
        ),
      ),
      birthday: DateTime.tryParse(birthday ?? ''),
      city: city != null
          ? CityDTO(city: city!.city, code: city!.city_code, id: city!.city_id)
          : null,
      email: email,
      firstName: first_name,
      lastName: last_name,
      middleName: middle_name,
      phone: phone,
      sex: sex != null ? SexDTO(id: sex!.sex_id, sex: sex!.sex) : null,
      changeDate: DateTime.tryParse(change_date),
      fullness: fullness ?? 0,
      isApprovalPDN: is_approval_pdn,
      isApprovalParticipation: is_approval_participation,
      isImported: is_imported ?? false,
      locality: locality,
      region: region != null
          ? RegionDTO(
              id: region!.region_id,
              region: region!.region,
              fed: FedDTO(id: region!.fed!.fed_id, text: region!.fed!.fed),
            )
          : null,
      registrationDate: DateTime.tryParse(registration_date),
      telegramUsername: telegram_username,
    );
  }
}

extension Fragment$CityFragmentMapper on Fragment$CityFragment {
  CityDTO toEntity() {
    return CityDTO(
      city: city,
      code: city_code,
      id: city_id,
      region: region?.toEntity(),
    );
  }
}

extension Fragment$SexFragmentMapper on Fragment$SexFragment {
  SexDTO toEntity() {
    return SexDTO(
      sex: sex,
      id: sex_id,
    );
  }
}

// extension Query$DictQuery$get_dict_fedsMapper on Query$DictQuery$get_dict_feds {
//   FedDTO toEntity() {
//     return FedDTO(
//       id: fed_id,
//       text: fed,
//     );
//   }
// }

extension Fragment$FedFragmentMapper on Fragment$FedFragment {
  FedDTO toEntity() {
    return FedDTO(
      id: fed_id,
      text: fed,
    );
  }
}

extension Fragment$RegionFragmentMapper on Fragment$RegionFragment {
  RegionDTO toEntity() {
    return RegionDTO(
      fed: fed?.toEntity(),
      id: region_id,
      region: region,
    );
  }
}

// extension Query$DictQuery$get_dict_cities$regionMapper
//     on Query$DictQuery$get_dict_cities$region {
//   RegionDTO toEntity() {
//     return RegionDTO(
//       fed: fed?.toEntity(),
//       id: region_id,
//       region: region,
//     );
//   }
// }
