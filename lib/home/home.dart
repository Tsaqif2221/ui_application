import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_application/home/home_notifier.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeNotifier(context),
      child: Consumer<HomeNotifier>(
        builder: (context, value, child) => SafeArea(
          child: Scaffold(
            backgroundColor: Colors.grey[200],
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      border: Border(
                          bottom: BorderSide(
                        width: 1,
                        color: Colors.grey[300] ?? Colors.transparent,
                      ))),
                  padding: const EdgeInsets.all(8),
                  child: const Stack(
                    children: [
                      Center(
                        child: Text(
                          "Beranda",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 16,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.deepPurple[200] ??
                                            Colors.transparent)),
                                child: const Row(
                                  verticalDirection: VerticalDirection.up,
                                  children: [
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Icon(
                                      Icons.search,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                          hintText: "Cari disini...",
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: Stack(
                                children: [
                                  Center(
                                    child: InkWell(
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.shopping_cart,
                                        weight: 30,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Container(
                          height: 200,
                          margin: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.deepPurpleAccent,
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: -30,
                                left: -30,
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -20,
                                right: -20,
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black.withOpacity(0.3)),
                                ),
                              ),
                              const Positioned(
                                top: 40,
                                left: 40,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Selamat Datang",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "Saya sedang belajar UI",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 16,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            border: Border.all(
                                width: 1,
                                color: Colors.grey[400] ?? Colors.transparent)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'LAYANAN KAMI',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Divider(
                              thickness: 2,
                              indent: 15,
                              endIndent: 15,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: value.a.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4),
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.deepPurpleAccent,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 1,
                                              color: Colors.grey[400] ??
                                                  Colors.transparent),
                                        ),
                                        child: Image.asset(value.a[index]),
                                      ),
                                    ),
                                    Text(value.b[index]),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Reels Kesukaan",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                          Text("Lihat Semua")
                        ],
                      ),
                      Container(
                        height: 260,
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: value.items.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(left: 16),
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.deepPurpleAccent),
                                child: Center(
                                  child: Text(
                                    value.items[index],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Produk Kesayangan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Pilih Produk yang anda cari",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 260,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            color: Colors.deepPurpleAccent,
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 20,
                                    child: Container(
                                      height: 200,
                                      width: 150,
                                      child: Center(
                                        child: Text("HAi"),
                                      ),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
