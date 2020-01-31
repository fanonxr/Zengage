import 'package:flutter/material.dart';

///Contains all the information related to styling of the app
///
/// Can be modularize and broken down later as it becomes huge
const LargeTextSize = 24.0;
const MediumTextSize = 20.0;
const BodyTextSize = 16.0;

const String FontNameDefault = 'Montserrat'; //  TODO: replace with out font

const AppBarStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: MediumTextSize,
    backgroundColor: Colors.blue,
    color: Colors.white);

const TextTitleStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: LargeTextSize,
    color: Colors.black);

const Body1TextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: BodyTextSize,
    color: Colors.black);
