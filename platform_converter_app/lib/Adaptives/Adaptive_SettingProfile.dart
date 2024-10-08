import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/Profile_Provider.dart';
import '../Providers/global_Provider.dart';

class ProfileAdaptive extends StatelessWidget {
  const ProfileAdaptive({super.key});

  @override
  Widget build(BuildContext context) {
    final profileProviderfalse =
        Provider.of<ProfileProvider>(context, listen: false);
    final profileProvidertrue =
        Provider.of<ProfileProvider>(context, listen: true);

    return (Provider.of<SwitchProvider>(context).isAndroid)
        ? Column(
            children: [
              ListTile(
                leading: const Icon(Icons.person_outline),
                title: const Text('Profile'),
                subtitle: const Text('Update Profile Data'),
                trailing: Switch(
                  value: profileProvidertrue.isProfile,
                  onChanged: (value) {
                    profileProviderfalse.profileShow(value);
                  },
                ),
              ),
              (profileProvidertrue.isProfile)
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                profileProviderfalse.profileImage();
                              },
                              child: (profileProvidertrue.profileimgpath !=
                                      null)
                                  ? CircleAvatar(
                                      radius: 60,
                                      backgroundImage: FileImage(
                                          profileProvidertrue.profileimgpath!))
                                  : const CircleAvatar(
                                      radius: 60,
                                      child: Icon(Icons.add_a_photo_outlined),
                                    ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: profileProvidertrue.txtfullname,
                              decoration: const InputDecoration.collapsed(
                                  hintText: 'Enter your Name...'),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            TextFormField(
                                controller: profileProvidertrue.txtbio,
                                decoration: const InputDecoration.collapsed(
                                    hintText: 'Enter your Bio..')),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Save')),
                                ElevatedButton(
                                    onPressed: () {
                                      profileProviderfalse.clearProfile();
                                    },
                                    child: const Text('Clear')),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  : Container(),
            ],
          )
        : Column(
            children: [
              CupertinoListTile(
                leading: const Icon(CupertinoIcons.person),
                title: const Text('Profile'),
                subtitle: const Text('Update Profile Data'),
                trailing: CupertinoSwitch(
                  value: profileProvidertrue.isProfile,
                  onChanged: (value) {
                    profileProviderfalse.profileShow(value);
                  },
                ),
              ),
              (profileProvidertrue.isProfile)
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CupertinoButton(
                              onPressed: () {
                                profileProviderfalse.profileImage();
                              },
                              child: (profileProvidertrue.profileimgpath !=
                                      null)
                                  ? CircleAvatar(
                                      radius: 60,
                                      backgroundImage: FileImage(
                                          profileProvidertrue.profileimgpath!))
                                  : const CircleAvatar(
                                      radius: 60,
                                      backgroundColor:
                                          CupertinoColors.activeGreen,
                                      child: Icon(
                                        CupertinoIcons.photo_camera,
                                        color: CupertinoColors.white,
                                      ),
                                    ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CupertinoTextField(
                              padding: const EdgeInsets.all(10),
                              placeholder: 'Enter Your Name..',
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CupertinoTextField(
                              padding: const EdgeInsets.all(10),
                              placeholder: 'Enter Your Bio..',
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CupertinoButton(
                                  child: const Text('Save'),
                                  onPressed: () {},
                                ),
                                CupertinoButton(
                                  child: const Text('Clear'),
                                  onPressed: () {},
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  : Container(),
            ],
          );
  }
}
