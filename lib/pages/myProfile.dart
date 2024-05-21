

import 'package:flutter/material.dart';

import 'package:notification/constants.dart';


class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  bool isObsecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor1,
        actions: const [

        ],
        centerTitle: true,
        toolbarHeight: 100,
        title:  Text(
          'My Profile',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [kBackgroundColor1, kBackgroundColor2
               
               
              ],
            )
          ),
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: ListView(
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            border: Border.all(width: 6, color: Colors.white),
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                              image: AssetImage('assets/images/Image.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16,),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 4,
                                  color: Colors.white,
                                ),
                                color: Colors.white),
                            child: const Icon(
                              Icons.camera_alt,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                    
                  ),
                  const SizedBox(height: 16),
                  Form(
                      child: Column(
                    children: [
                      TextFormField(
                        decoration:  InputDecoration(
                          label: Text('Email Address',
                          style: Theme.of(context).textTheme.bodyMedium,)
                        ),
                      ),
                      const SizedBox(height: 16,),
                      TextFormField(
                        decoration:  InputDecoration(
                         
                          label: Text('Username',
                          style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16,),
                      TextFormField(
                        decoration:  InputDecoration(
                          
                          label: Text('First Name',
                          style: Theme.of(context).textTheme.bodyMedium,),
                        ),
                      ),
                      const SizedBox(height: 16,),
                      TextFormField(
                        decoration:  InputDecoration(
                          label: Text('Last Name',
                          style: Theme.of(context).textTheme.bodyMedium,),
                        ),
                      ),
                      const SizedBox(height: 16,),
                      TextFormField(
                        
                        decoration:  InputDecoration(
                          
                          label: Text('Phone Number',
                          style: Theme.of(context).textTheme.bodyMedium,),
                        ),
                      ),
                      const SizedBox(height: 16,),
                      TextFormField(
                        decoration:  InputDecoration(
                          
                          label: Text('Address',
                          style: Theme.of(context).textTheme.bodyMedium,),
                        ),
                      ),
                      
                    ],
                  )),
                  const SizedBox(height: 16,),
                  ElevatedButton(
                    
                    onPressed: () {},
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kButtonPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        
                    ),
                    ), 
                    child:  Text('Save Changes',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Colors.black,
                    )
                      
                    ),
                  ),
                ],
              )),
              
              
        ),
      ),
    );
  }

}