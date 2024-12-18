import 'package:e_healthcare_application/consts/consts.dart';
import 'package:e_healthcare_application/consts/colors.dart';
import 'package:e_healthcare_application/consts/lists.dart';
import 'package:flutter/material.dart';

import '../../consts/fonts.dart';
class DoctorProfileView extends StatelessWidget {
const DoctorProfileView({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: AppColors.bgDarkColor,

appBar: AppBar(
title: AppStyles.bold(
  title: "Doctor Name", 
  color: AppColors.whiteColor,
  size:AppSizes.size14),
), // App

body: Padding(
  padding: const EdgeInsets.all(10.0),
  child: Column( 
  children:[
    Container(
padding:const EdgeInsets.all(12) ,
      height: 100,
     decoration: BoxDecoration(
     color: Colors.white,
     borderRadius: BorderRadius.circular(12),
), // BoxDecoration
   child: Row(
    
    children: [
      CircleAvatar (
        radius: 40,
        child: Image.asset (
          AppAssets.imgSignup,),),
10.widthBox,
     Expanded(
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       AppStyles.bold(title: "Doctor Name", 
       color: AppColors.whiteColor,
       size:AppSizes.size18),
       AppStyles.bold(
         title: "Category", 
         color: AppColors.textColor.withOpacity(0.5),
         size:AppSizes.size18, ),
           const Spacer(),
         VxRating(
          selectionColor: AppColors.yellowColor,
          onRatingUpdate: (value){

         },
         maxRating: 5,
         count: 5,
         value: 4,
         stepInt: true,
         )
        ],
       ),
     ),
AppStyles.bold(
  title: "See all reviews", 
  color: AppColors.whiteColor,
  size:AppSizes.size18),
     
      ],
     ), // Row
    ),

    10.widthBox,
    Container(
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.whiteColor,
      ) ,
      child: Column(
        children: [
          ListTile(
            tileColor:AppStyles.bold(title: "Phone number",color: AppColors.textColor),
            subtitle: AppStyles.normal(
              title: "*2334599768",
              color: AppColors.textColor.withOpacity(0.5),
              size: AppSizes.size18),
              trailing: Container(
                width: 50,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.yellowColor,
                ),
                child: Icon(
                  Icons.phone,
                  color: AppColors.whiteColor,
                ),
              ),
          ),

          10.heightBox,
          AppStyles.bold(title: "About",
          color: AppColors.textColor,
          size:AppSizes.size16),

          10.heightBox,
          AppStyles.normal(title: "This is about section of doctor",
          color: AppColors.textColor,
          size:AppSizes.size16),


        ],
      ),
    )
  ]
  ),
), // Column

) ;// Scaffold
}
}