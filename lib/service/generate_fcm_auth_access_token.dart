import 'package:googleapis_auth/auth_io.dart';

class GenerateFcmAuthAccessToken {
  //First lets add the endpoint url
  static String firebaseMessagingScope = "https://www.googleapis.com/auth/firebase.messaging";

  // now copy and paste the data from file downloaded
  Future<String> getAccessToken() async {
    final client = await clientViaServiceAccount(
      ServiceAccountCredentials.fromJson(
        {
          "type": "service_account",
          "project_id": "live-football-score-fe800",
          "private_key_id": "348f8e23d5f44fe5b6711113355d91d5ba323b58",
          "private_key":
              "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCs2AUEEsS5Rb0Q\naMh4WdajQCnpJ4SHYYs8jLctGUhzOuo2aFuBlp6TGeMc8+PCTlGhvQCduHlABqty\nzcjLPDixDkOK/wdxPLyB2v8mk8HKcoXCI0huuxwPi5vfvQP0FIf4oUGLfRBhFSdq\n+qKs9FzIjyX/PbaabzV5o8zphVM1I6wvrZNoEFHQLV8rnSprqAAN3L4oDpcdO3ss\ntvw+NH120KROC1uP+lS2nS8GM6LB8J8B+R7v/xx4kn88Zp96zPUodfUkrMbYhI6U\nINpNOKkCaG9RuXKPvQ7KiFgB+DfIMNxgZhgHXrFqYHtbNlJG8wOnmLTl1gjhlXlZ\nx8DZKwvVAgMBAAECggEADlBEWBJC0tH85nU69sZ/0Ryg6+M/JSP1jyHbEIPJvWsp\nVrCdNVXXE3j/Fxh2adKpDXMUsDsE5YG35IW4pWX7DuSOwN2+TMkaFknfu97cG0sR\nGyLnXm4l1H67/ZMOVwH1Qah/AFFu0A9bqI8Rdi+1WFGMdL70VoUzoTtonoURPzLu\nMKgjgVqIIRok3Lj7Dft9C4rr6jVgloZpsfO3AOf5QQIAfMWmCwtyXr7I2NNiSOYR\nGIDBWVExo3R8DaBAW3MrWSNaLLaTpoVtkl/xJrynAy87DUa5/VX/OxsmuEOYI2oW\nWNx+B/kzvWcLpVnCrxNUfkgc2brGjHA5RktuN6v5aQKBgQDvJzAJ+YJc9oKnSTW1\n8Ku19KocBEVvCEH+BO9UZWgKZ9esZnNuE668gNo1AeFOvd0pGKtyhMgDVqITtSxK\nl3Ewt6VncS1hzHzS1LO3JWKo99cigdbtrs7fwOREo32smZ2qKsPFW52aVCxIH4v/\nd8bV9u8L9IGahiIjHW+8HDfZPQKBgQC5BQgQzu59SAfC9rTGr8QY/l8sz8ZuKx7c\nOEgZlxG1ytAAgw6sawUdoZ5wiVoYGPSZrJp76dnnxkuG/MV4YqfTYP3eWI4VJjSc\nVJlMZZP/mdJAv4cLi1SV1qUD9eCof054RS8X3TZOzPXB49QdKW42XS4Czsu+pCY3\nd/fQ5OS2eQKBgD0IHi1dfJRm4J76gveEjP2pi8QMnv+f9t9xuPYrzupg59x6ZNjh\nswUuSQGgEjS7JXa4cgCOvFCFymUHJl9+2IcbRt3oNzGvMufHGnoR02TVoxSOWCBe\nLTNTEa4mnwruRRtJQJ7cK5NYCdj6HAs9MQQnuYeuhWi+9HVLrNkvxlztAoGBALWU\nwZC1dgwQaEWomEyy7dLVuxSgqg8vVK8usVwkDmaLME6AUSNYOQIWvweVVY122IAF\njOv12z0EONW3OBppQGpMs3rHEFKjV1jiEj2PJ4vgLCANmHz09kPED9luM1lK7/lL\ndOeH3CfEMaFjdqZUJe1Gz8RDrmRgd31SyS0Dp4+JAoGBAKpAkjGz/tz58cmCOQV6\nDs9TsSnWOLEfioMfjfdlsjb5ewIWdIYwQ2ypp6mhiCK+cXa36IHyevCYt1ehXi1B\nHJjYetQWqCOFQf9RI+4/PAWOt3ehMGxr77YaMWiq0d20gJInudgdmXL++z1mD1Su\nqujcZ6PAnruAF9yLGyUEyab0\n-----END PRIVATE KEY-----\n",
          "client_email":
              "firebase-adminsdk-yqvy1@live-football-score-fe800.iam.gserviceaccount.com",
          "client_id": "113256201110342045935",
          "auth_uri": "https://accounts.google.com/o/oauth2/auth",
          "token_uri": "https://oauth2.googleapis.com/token",
          "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
          "client_x509_cert_url":
              "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-yqvy1%40live-football-score-fe800.iam.gserviceaccount.com",
          "universe_domain": "googleapis.com"
        },
      ),
      [firebaseMessagingScope],
    );

    //Extract the access token from the credentials
    final token = client.credentials.accessToken.data;
    return token;
  }
}
