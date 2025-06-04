import 'package:url_launcher/url_launcher.dart';

void ResumeButton() async {
  const resumeUrl = 'https://pdflink.to/dhayanithi-resume/'; 
  final Uri uri = Uri.parse(resumeUrl);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $resumeUrl';
  }
}
