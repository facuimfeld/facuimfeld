import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    kGradient1,
                    kGradient2,
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage(imagePath),
                  ),
                ),
              ),
            ),
            Center(
                child: Text(
              name,
              style: kTitleText,
            )),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () async {
                        final Uri _url =
                            Uri.parse('https://www.facebook.com/fakku.imfeld');
                        await launchUrl(_url);
                      },
                      icon: const Icon(Icons.facebook, size: 30.0)),
                  IconButton(
                      onPressed: () async {
                        final Uri _url =
                            Uri.parse('https://github.com/facuimfeld');
                        await launchUrl(_url);
                      },
                      icon: const FaIcon(FontAwesomeIcons.github, size: 30.0)),
                  IconButton(
                      onPressed: () async {
                        final Uri _url =
                            Uri.parse('https://www.instagram.com/facuimfeld/');
                        await launchUrl(_url);
                      },
                      icon:
                          const FaIcon(FontAwesomeIcons.instagram, size: 30.0)),
                  IconButton(
                      onPressed: () async {
                        final Uri _url = Uri.parse(
                            'https://www.linkedin.com/in/facundo-nicol%C3%A1s-imfeld-90486020a/');
                        await launchUrl(_url);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: 30.0,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      //Code to launch resume
                      final Uri _url = Uri.parse(resumeLink);
                      await launchUrl(_url);
                    },
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "View CV",
                          style: kSubTitleText.copyWith(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: screenSize.width > 1200
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Education",
                                  style: kSectionTitleText,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: const [
                                    ListTile(
                                        leading: CircleAvatar(
                                          radius: 25.0,
                                          foregroundImage:
                                              AssetImage('images/eet.jpeg'),
                                        ),
                                        subtitle: Text(
                                            '(2007-2013) - Escuela de Educación Técnica Nº20 Nuestra Señora de Luján'),
                                        title: Text(
                                            'Técnico en Equipos e Instalaciones Electromecánicas')),
                                    ListTile(
                                        leading: CircleAvatar(
                                          foregroundImage: NetworkImage(
                                              'https://media-exp1.licdn.com/dms/image/C4D0BAQGUI-sPrxZU1g/company-logo_200_200/0/1563927805328?e=1666828800&v=beta&t=TWlY8owYgnvgG2IGxK-D3fFqWyZibOuEwjon_kbMj1k',
                                              scale: 1.3),
                                          radius: 25.0,
                                        ),
                                        subtitle: Text(
                                            '(2014 - Actualidad) - Universidad Tecnologia Nacional'),
                                        title: Text(
                                            'Ingenieria en Sistemas de Informacion')),
                                  ],
                                ),
                                const Divider(),
                                Text("About Me", style: kSectionTitleText),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(aboutMeSummary),
                                const Divider(),
                                Text(
                                  "Courses",
                                  style: kSectionTitleText,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    ListTile(
                                      title: Text(courses),
                                      trailing: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'See credential',
                                              style: const TextStyle(
                                                color: Colors.blue,
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {
                                                  final Uri _url = Uri.parse(
                                                      'https://www.coursera.org/account/accomplishments/certificate/4LJ3QG5DP2JK');
                                                  await launchUrl(_url);
                                                }),
                                        ]),
                                      ),
                                    ),
                                    ListTile(
                                      title: Text(course1),
                                      trailing: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'See credential',
                                              style: const TextStyle(
                                                color: Colors.blue,
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {
                                                  final Uri _url = Uri.parse(
                                                      'https://www.coursera.org/account/accomplishments/certificate/6NEKZB5V72SK');
                                                  await launchUrl(_url);
                                                }),
                                        ]),
                                      ),
                                    ),
                                    ListTile(
                                      title: Text(course2),
                                      trailing: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'See credential',
                                              style: const TextStyle(
                                                color: Colors.blue,
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {
                                                  final Uri _url = Uri.parse(
                                                      'https://www.coursera.org/account/accomplishments/certificate/KEWSXZ95NG65');
                                                  await launchUrl(_url);
                                                }),
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "My Projects",
                                  style: kSectionTitleText,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Education",
                                style: kSectionTitleText,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: const [
                                  ListTile(
                                      leading: CircleAvatar(
                                        radius: 25.0,
                                        foregroundImage:
                                            AssetImage('images/eet.jpeg'),
                                      ),
                                      subtitle: Text(
                                          '(2007-2013) - Escuela de Educación Técnica Nº20 Nuestra Señora de Luján'),
                                      title: Text(
                                          'Técnico en Equipos e Instalaciones Electromecánicas')),
                                  ListTile(
                                      leading: CircleAvatar(
                                        foregroundImage: NetworkImage(
                                            'https://media-exp1.licdn.com/dms/image/C4D0BAQGUI-sPrxZU1g/company-logo_200_200/0/1563927805328?e=1666828800&v=beta&t=TWlY8owYgnvgG2IGxK-D3fFqWyZibOuEwjon_kbMj1k',
                                            scale: 1.3),
                                        radius: 25.0,
                                      ),
                                      subtitle: Text(
                                          '(2014 - Actualidad) - Universidad Tecnologia Nacional'),
                                      title: Text(
                                          'Ingenieria en Sistemas de Informacion')),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Divider(),
                              Text("About Me", style: kSectionTitleText),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(aboutMeSummary),
                            ],
                          ),
                        ],
                      ),
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: screenSize.width > 1000
                    ? GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 3),
                        itemCount: projectList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ProjectWidget(
                            projectData: projectList[index],
                          );
                        })
                    : GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1, childAspectRatio: 2),
                        itemCount: projectList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ProjectWidget(
                            projectData: projectList[index],
                          );
                        }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
