import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbar and Dialogs',
    subTitle: 'Indicadores en pantallas',
    link: '/snackbars',
    icon: Icons.info_outlined,
  ),
  /* Menu item animated */
  MenuItem(
    title: 'Animated container',
    subTitle: 'Stafull widget with animation',
    link: '/animated',
    icon: Icons.check_box_outline_blank_outlined,
  ),
  MenuItem(
    title: 'UI Controls',
    subTitle: 'Sliders, Switches, Radio, Checkbox',
    link: '/ui-controls',
    icon: Icons.settings_applications_outlined,
  ),
  /* tutorial */
  MenuItem(
    title: 'Introduction to the app',
    subTitle: 'App tutorial',
    link: '/tutorial',
    icon: Icons.school_outlined,
  ),

  /* infinitie scroll */
  MenuItem(
    title: 'Infinite scroll and pull',
    subTitle: 'Infinite scroll and pull to refresh',
    link: '/infinitie',
    icon: Icons.list_alt_outlined,
  ),

  /* counter screen */
  MenuItem(
    title: 'Riverpod counter',
    subTitle: 'Counter screen',
    link: '/counter_screen',
    icon: Icons.add,
  ),

  /* theme-changer */
  MenuItem(
    title: 'Theme changer',
    subTitle: 'Change the theme of the app',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),
];
