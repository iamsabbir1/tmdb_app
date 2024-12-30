import 'package:flutter/material.dart';

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool _isSerachVisible = false;

  void toggleSearch() {
    setState(() {
      _isSerachVisible = !_isSerachVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 64.0),
        child: Row(
          children: [
            const Text(
              'TMDB',
              style: TextStyle(
                color: Color.fromARGB(220, 12, 226, 219),
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              width: 32,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(220, 25, 224, 243),
                    width: 4,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Movies',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'TV Shows',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'People',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'More',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(220, 2, 74, 121),
      actions: [
        _isSerachVisible
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: Container(
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topLeft: Radius.circular(50)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: IconButton(
                                onPressed: toggleSearch,
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  50,
                                ),
                              ),
                            ),
                            // enabledBorder: const OutlineInputBorder(
                            //   borderRadius:
                            //       BorderRadius.all(Radius.circular(50)),
                            //   borderSide: BorderSide(
                            //     color: Colors.white,
                            //   ),
                            // ),
                            // focusedBorder: const OutlineInputBorder(
                            //   borderRadius: BorderRadius.all(
                            //     Radius.circular(50),
                            //   ),
                            //   borderSide: BorderSide(
                            //     color: Colors.white,
                            //   ),
                            // ),
                            hintText: 'Search what you want....',
                            hintStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          cursorColor: Colors.white,
                          cursorHeight: 16,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(right: 64),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'JoinTMDB',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: toggleSearch,
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
      ],
    );
  }
}
