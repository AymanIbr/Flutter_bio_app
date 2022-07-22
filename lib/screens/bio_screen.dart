import 'package:elancer2_bio_app/widdget/custom_bio_card.dart';
import 'package:elancer2_bio_app/widdget/custom_list_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){

}

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:  AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Bio',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          // color: Colors.orange,
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xFFC9BBCF),
              Color(0xFFB7D3DF),
            ]
          ),
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children : [
              const Spacer(),
              const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png?20150327203541'),
            ),
              const SizedBox(height: 10,),
            Text('elancer Flutter - 2020',
            style: GoogleFonts.cairo(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            ),
              Text('Ucase - TI',
                style: GoogleFonts.cairo(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  height: 0.8
                ),
              ),
              Divider(
                thickness: 0.3,
                color: Colors.deepPurpleAccent.shade200,
                indent: 40,
                endIndent: 40,
                height: 50,
              ),
              const CustomBioCard(
                  ledingIcon: Icons.phone_android_outlined,
                  Title: 'Mobile',
                  SubTitle: '+9720594258327',
                  TraillingIcon: Icons.call,
                marginBottom: 10,
             ),
                  
                   CustomListTileCard(
                       LeaddingIcon: Icons.email,
                       Title: "Email",
                       subTitle: "ayman@gmail.com",
                       Trailingicon: Icons.send,
                     marginBottom: 10,
                     onActionPressed:(){
                         print('Send Email');
                         _ShowMessage(context,message: 'Open Email');
                     },

                   ),

              CustomListTileCard(
                  LeaddingIcon: Icons.location_history,
                  Title: "Location",
                  subTitle: "Gaza",
                  Trailingicon: Icons.map,
                onActionPressed: (){
                    print('Send Loaction');
                    _ShowMessage(context,message: 'Find Location');
                },
              ),

              const Spacer(),
              Text('elancer 2'
                  ,style: GoogleFonts.cairo(
                  fontSize: 16
                ),
                   ),
                   const SizedBox(height: 10,),
                   // CustomBioCard(
               //    ledingIcon: Icons.email,
               //    Title: 'Email',
               //    SubTitle: 'ayman812001@gmail.com',
               //    TraillingIcon: Icons.send
               // ),
            ],
        ),
      ),
    );
  }
  void _ShowMessage (BuildContext context,{required String message}){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
      content: Text(message),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onVisible: ()=>print('On Visible'),
        dismissDirection: DismissDirection.horizontal,
        duration: const Duration(seconds: 3),
        padding: const EdgeInsets.all(10),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: (){},
          textColor: Colors.white,
        ),
      ),
    );
  }
}


