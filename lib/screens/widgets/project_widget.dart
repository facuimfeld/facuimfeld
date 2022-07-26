import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../models/project_model.dart';

class ProjectWidget extends StatelessWidget {
  Project projectData;
  ProjectWidget({Key? key, required this.projectData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Card(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.build,
                  color: kGrey,
                  size: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  projectData.name,
                  style: kSectionTitleText,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              projectData.description,
            ),
          ),
          const Spacer(),
          const Divider(),
          Align(
            alignment: Alignment.bottomRight,
            child: projectData.name == "MiUTN FRRe"
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          onPressed: () async {
                            //Launch project on GitHub
                            final Uri _url =
                                Uri.parse(projectData.linkPlaystore);
                            await launchUrl(_url);
                          },
                          child: Text(
                            "Go to the Playstore",
                            style: kSubTitleText.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          onPressed: () async {
                            //Launch project on GitHub
                            final Uri _url = Uri.parse(projectData.link);
                            await launchUrl(_url);
                          },
                          child: Text(
                            "View Project",
                            style: kSubTitleText.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        //Launch project on GitHub
                        final Uri _url = Uri.parse(projectData.link);
                        await launchUrl(_url);
                      },
                      child: Text(
                        "View Project",
                        style: kSubTitleText.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
          ),
        ]),
      ),
    );
  }
}
