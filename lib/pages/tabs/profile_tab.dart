import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yachtmob/pages/edit_profile_page.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          _headerWdiget(context),
          const Divider(thickness: 1.75),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.8),
                child: Column(
                  children: [
                    _menuTile(Icons.chat, 'Messages'),
                    const Divider(height: 5, thickness: 1),
                    _menuTile(Icons.calendar_today_outlined, 'Bookings'),
                    const Divider(height: 5, thickness: 1),
                    _menuTile(Icons.favorite_border_outlined, 'Favorites'),
                    const Divider(height: 5, thickness: 1),
                    _menuTile(Icons.sailing, 'Listings'),
                    const Divider(height: 5, thickness: 1),
                    _menuTile(Icons.settings, 'App Settings'),
                    const Divider(height: 5, thickness: 1),
                    _menuTile(Icons.phone_in_talk_outlined, 'Contact Us'),
                    const Divider(height: 5, thickness: 1),
                    _menuTile(Icons.logout, 'Log out'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ListTile _menuTile(IconData icon, String text) {
    return ListTile(
      leading: Icon(
        icon,
        size: 40,
        color: Colors.blue,
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {},
    );
  }

  Padding _headerWdiget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 90,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Center(
              child: Icon(
                Icons.person,
                color: Colors.pink,
                size: 40,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mine',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                InkWell(
                  child: const Text('Click to view and edit'),
                  onTap: () {
                    Navigator.of(context).pushNamed(EditProfilePage.tag);
                  },
                ),
              ],
            ),
          ),
          const Icon(
            FontAwesomeIcons.chevronRight,
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
