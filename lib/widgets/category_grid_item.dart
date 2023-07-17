import 'package:flutter/material.dart';

import 'package:dailysizzling_meals/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
    required this.onSelectCategory,
  });

  final Category category;
  final void Function() onSelectCategory;

  // List<String> imagesList = [
  //   'https://scontent.fcrk1-3.fna.fbcdn.net/v/t39.30808-6/358685413_7027524403943923_6259021508011067252_n.jpg?_nc_cat=100&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeGOTyBjUvsrrPZFFcWQ3XJ2lmAEwR4NZqSWYATBHg1mpGUu3i7WRCmO1V7OdEMy48uGE0cH1nVvEkW_nGdzIJJs&_nc_ohc=h8WpSzfIULMAX957q8q&_nc_ht=scontent.fcrk1-3.fna&oh=00_AfCJudEwmS2ed5fjK2K0ZlsvVD8Nsq3UCVGYnoXyc6PJrg&oe=64B9611B',
  //   'https://scontent.fcrk1-4.fna.fbcdn.net/v/t39.30808-6/358677742_7027524507277246_7579104502726047493_n.jpg?_nc_cat=102&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFry_oYwWJQlxG-vIjUZRI5WJB63BQzKDNYkHrcFDMoMzibGoFnXO85WJto3CaizoIk0Z0aKI84MkNKIGUPDd8D&_nc_ohc=jWouJIu434kAX_13Ggv&_nc_ht=scontent.fcrk1-4.fna&oh=00_AfCxRq3lSYg1RbM5b0Lc6VgYIm4P29yUt6MmSs8fmjag6A&oe=64BA0749',
  //   'https://scontent.fcrk1-4.fna.fbcdn.net/v/t39.30808-6/357543091_248959991213751_515899148376389621_n.jpg?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHPLRNih6wDxFv6z1Mj8qAR-__4tutGNGr7__i260Y0akzbKKEyAUJP7VO_O7sxMfPcaqoEYPQ1DqaxYO4Ma9YZ&_nc_ohc=nUwpM-FW7PoAX_ThWJT&_nc_ht=scontent.fcrk1-4.fna&oh=00_AfDIkhLXHqnfFDq7xjfecw1wuAriFcLB9Aj_eb0j1Vhehg&oe=64BA5C8A',
  //   'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/329957999_5408938309206480_1614611118642935354_n.jpg?_nc_cat=104&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFr0r3TpcI_Bb8VntTGU0ZwIedd1LBUlzYh513UsFSXNrbR9HqgoOhAv-ybZ8O5d9pIQoxQZzkSkCtHMkOz_BR0&_nc_ohc=Hz4Zdb3S0wAAX-WpSLz&_nc_ht=scontent.fcrk1-5.fna&oh=00_AfDTzgXEDXKqueqsxq5SIZPAc4fk2hcK_4LVj0XijYiH0w&oe=64B9DE52',
  //   'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/360161248_7041481009214929_595748338610561046_n.jpg?_nc_cat=105&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeHAyZZ0YYcg8eyMiO3bkcfErlZGpuoTHIyuVkam6hMcjImePMj4v3Y-qi5oBrQJIhfUXs9D9_TWAKBF-cg9lOOX&_nc_ohc=D9XKwvj7_bEAX8GbAh_&_nc_ht=scontent.fcrk1-5.fna&oh=00_AfCCgUTQ2jISam7jwJAOIUhp66HZSWlj-fPcC2qd-tVmwA&oe=64B95C1E',
  //   'https://scontent.fcrk1-1.fna.fbcdn.net/v/t39.30808-6/361623613_7041472715882425_3148063919497897899_n.jpg?_nc_cat=108&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeH20P8ZaPxky4QiV4_0-ZuUA22d3YxZsIoDbZ3djFmwilmXONs47ZWQ_VN6h1eqDWREClXceZFOq6x95g5gzFBC&_nc_ohc=JOs5KKJPJq8AX-UTzLf&_nc_ht=scontent.fcrk1-1.fna&oh=00_AfCo16TuPAJGwtODGaoe9rW0nk-5Zw89sECzsjOo_UfBWw&oe=64BA6EB2',
  //   'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/361592874_7041472755882421_3926216502139039361_n.jpg?_nc_cat=103&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFvJEyjGxeQI2Xw33u_InF7QEoDffpt_TNASgN9-m39M0fsm9XNfpquQszuzhy-xTw5Zh393wkJvdpVja2c0Rmg&_nc_ohc=UYF9JZjwqSIAX8fRdCs&_nc_ht=scontent.fcrk1-5.fna&oh=00_AfBvHv0KRyOwszN4vweomUddl-ZX-MSZ_6CLKsKMMuW3dA&oe=64BA0B97',
  //   'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/361617313_7041472832549080_4947524778356612681_n.jpg?_nc_cat=103&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeE-Ov56n94A48B_8Wck8VZ3ZgdZI712odBmB1kjvXah0JNp0wNg26KVLRAlpA_nNj-GMRWzvWi5I97n6ggz0xCw&_nc_ohc=f4ZHOasiKCsAX_aj_6T&_nc_ht=scontent.fcrk1-5.fna&oh=00_AfClYHy6hk5ejTNIYDGlsvPxJxsfZheQrQihhRn7uZ0sZQ&oe=64B951E5',
  //   'https://scontent.fcrk1-3.fna.fbcdn.net/v/t39.30808-6/361604609_7041472872549076_7280894296141031115_n.jpg?_nc_cat=101&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFdVquPaP_YBnCIr7jvyvPj_YnutvHry_r9ie628evL-qSU_vPCnRF46PD0WH33YTCVFZqgmDc8rAm82GArqXNH&_nc_ohc=vbRyV9cwwRAAX9WE07P&_nc_ht=scontent.fcrk1-3.fna&oh=00_AfA2HawE00UGmaXbg0ka10S4upE2WmySgXstkUvQ4nWAfg&oe=64B9D85A',
  //   'https://scontent.fcrk1-4.fna.fbcdn.net/v/t39.30808-6/361607442_7041472742549089_4426400083943124569_n.jpg?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeEjzVtha_WCrmLgx_eAX7-1kcqVpmddIsCRypWmZ10iwKCuIjEEy_u542Wo_j1PYEaHVagxwIp1u6GoOTb7ceL3&_nc_ohc=mdIwmqubipYAX_kFdKN&_nc_ht=scontent.fcrk1-4.fna&oh=00_AfBY50yd_gFm7Ge0YitkAmKGo3FQy6jzyPT-B5E4G4SidQ&oe=64BAB881',
  // ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // image: DecorationImage(
            //   image: NetworkImage(imagesList[1]),
            //   fit: BoxFit.cover,
            // ),
            gradient: LinearGradient(
              colors: [
                category.color.withOpacity(0.55),
                category.color.withOpacity(0.9),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Text(
            category.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          )),
    );
  }
}
