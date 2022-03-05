import 'package:dio/dio.dart';
import 'package:mc_crud_test/core/utils/resources/mainStrings.dart';
import 'package:mc_crud_test/data/models/IbanValidateModel.dart';
import 'package:mc_crud_test/data/models/phoneValidateModel.dart';
import 'package:retrofit/retrofit.dart';

part 'phoneValidateservice.g.dart';

@RestApi(baseUrl: MainStrings.phoneValidationBaseUrl)
abstract class PhoneValidateApiService {
  factory PhoneValidateApiService(Dio dio, {String baseUrl}) = _PhoneValidateApiService;

  @GET('/')
  Future<HttpResponse<PhoneValidateModel>> getPhoneValidate(
    @Query("api_key") String apiKey,
    @Query("phone") String phone,
  );
}
