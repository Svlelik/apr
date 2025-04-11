import 'package:apr/src/core/_core.dart';
import 'package:url_launcher/url_launcher.dart';

class DocumentUtils {
  static final apiUrl = EnvVariables.strapi.toString();

  static void openDocumentNewTab(String documentFullPath) {
    final url = Uri.parse(getAssetPath(documentFullPath));
    launchUrl(url, webOnlyWindowName: '_blank');
  }

  static String getAssetPath(String documentFullPath) {
    return apiUrl + documentFullPath;
  }

  static void downloadDocument(String documentFullPath) {
    final url = Uri.parse(getAssetPath(documentFullPath));
    launchUrl(url, webOnlyWindowName: '_blank');
  }
}
