import 'package:flutter/material.dart';

import 'package:notification/constants.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  

Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Notifications'),
        centerTitle: true,
        toolbarHeight: 64,
      ),
      body: SizedBox(
        
        height: 800,
        width:  size.width,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              
               Expanded(
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor.withOpacity(0.15),
                          ),
                          child: Container(
                            height: 26,
                          ),
                        ),
                        title: Text(
                          'Notification $index',
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        subtitle: Text(
                          'This is notification $index',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 14),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/SkyLine1.png',
                  fit: BoxFit.cover,
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  

  
}