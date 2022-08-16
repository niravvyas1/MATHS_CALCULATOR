import 'package:auto_size_text/auto_size_text.dart';
import "package:flutter/material.dart";
import 'package:function_tree/function_tree.dart';
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MATH(), ),
  ); }
class MATH extends StatefulWidget {
  const MATH({Key? key}) : super(key: key);
  @override
  State<MATH> createState() => _MATHState(); }
class _MATHState extends State<MATH> {
  String selectNumber = ""; String calc = "";
  String calc1 = "";
  String display = "";
  @override
  Widget build(BuildContext context) {
    double H = MediaQuery.of(context).size.height; double W = MediaQuery.of(context).size.width; return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20), child: Column(

        crossAxisAlignment: CrossAxisAlignment.end, children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text(
              display,
              style: const TextStyle(
                fontSize: 25,
                color: Color(0xff868686), fontWeight: FontWeight.w400,
              ), ),
            AutoSizeText( selectNumber,
              style: const TextStyle(
                fontSize: 70,
                color: Colors.white, fontWeight: FontWeight.w400,
              ),
              maxLines: 1, ),
          ], ),
        ), Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Ink(
                decoration: BoxDecoration(
                  color: const Color(0xffA5A5A5),
                  borderRadius: BorderRadius.circular(50), ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(40), splashColor: Colors.white,

                  splashFactory: NoSplash.splashFactory, onTap: (){
                  setState(() { selectNumber = ""; calc = "";
                  calc1 = "";
                  display = "";
                  }); },
                  child: Container(
                    height: H / 10.5,
                    width: W / 2.3,
                    alignment: Alignment.center, child: const Text("AC",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black, fontWeight: FontWeight.w600,
                    ), ),
                  ), ),
              ), Ink(
                decoration: const BoxDecoration( color: Color(0xffA5A5A5), shape: BoxShape.circle,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50), splashColor: Colors.white, splashFactory: NoSplash.splashFactory, onTap: (){
                  setState(() {
                    selectNumber = "${double.parse(selectNumber) / 100}";
                  }); },
                  child: Container(
                    height: H / 10.5,
                    width: W / 5.3,
                    alignment: Alignment.center, child: const Text("%",
                    style: TextStyle( fontSize: 40,

                      color: Colors.black,
                      fontWeight: FontWeight.w800, ),
                  ), ),
                ), ),
              InkWell(
                borderRadius: BorderRadius.circular(50), onTap: (){
                setState(() { selectNumber += "/"; calc = "/";
                }); },
                child: Container(
                  height: H / 10.5,
                  width: W / 5.3,
                  decoration: BoxDecoration(
                    color: calc == "/" ? Colors.white : const Color(0xffFE9F17),
                    shape: BoxShape.circle, ),
                  alignment: Alignment.center, child: Text("/",
                  style: TextStyle(
                    fontSize: 40,
                    color: calc == "/" ? const Color(0xffFE9F17) : Colors.white, fontWeight: FontWeight.bold,
                  ), ),
                ), ),
            ], ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Ink(
                decoration: const BoxDecoration(
                  color: Color(0xff333333),
                  shape: BoxShape.circle, ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50), splashColor: Colors.white,

                  splashFactory: NoSplash.splashFactory, onTap: (){
                  setState(() { selectNumber += "7";
                  }); },
                  child: Container(
                    height: H / 10.5,
                    width: W / 5.3,
                    alignment: Alignment.center, child: const Text("7",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white, fontWeight: FontWeight.w600,
                    ), ),
                  ), ),
              ), Ink(
                decoration: const BoxDecoration( color: Color(0xff333333), shape: BoxShape.circle,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50), splashColor: Colors.white, splashFactory: NoSplash.splashFactory, onTap: (){
                  setState(() { selectNumber += "8";
                  }); },
                  child: Container(
                    height: H / 10.5,
                    width: W / 5.3,
                    alignment: Alignment.center, child: const Text("8",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white, fontWeight: FontWeight.w600,
                    ),

                  ), ),
                ), ),
              Ink(
                decoration: const BoxDecoration(
                  color: Color(0xff333333),
                  shape: BoxShape.circle, ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50), splashColor: Colors.white, splashFactory: NoSplash.splashFactory, onTap: (){
                  setState(() { selectNumber += "9";
                  }); },
                  child: Container(
                    height: H / 10.5,
                    width: W / 5.3,
                    alignment: Alignment.center, child: const Text("9",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white, fontWeight: FontWeight.w600,
                    ), ),
                  ), ),
              ), InkWell(
                borderRadius: BorderRadius.circular(50), onTap: (){
                setState(() {
                  calc = "×"; selectNumber += "*";
                }); },
                child: Container(
                  height: H / 10.5,
                  width: W / 5.3,
                  decoration: BoxDecoration(

                    color: calc == "×" ? Colors.white : const Color(0xffFE9F17),
                    shape: BoxShape.circle, ),
                  alignment: Alignment.center, child: Text("×",
                  style: TextStyle(
                    fontSize: 50,
                    color: calc == "×" ? const Color(0xffFE9F17) : Colors.white, fontWeight: FontWeight.w600,
                  ), ),
                ), ),
            ], ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Ink(
                decoration: const BoxDecoration(
                  color: Color(0xff333333),
                  shape: BoxShape.circle, ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50), splashColor: Colors.white, splashFactory: NoSplash.splashFactory, onTap: (){
                  setState(() { selectNumber += "4";
                  }); },
                  child: Container(
                    height: H / 10.5,
                    width: W / 5.3,
                    alignment: Alignment.center, child: const Text("4",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white, fontWeight: FontWeight.w600,
                    ), ),
                  ), ),

              ), Ink(
                decoration: const BoxDecoration( color: Color(0xff333333), shape: BoxShape.circle,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50), splashColor: Colors.white, splashFactory: NoSplash.splashFactory, onTap: (){
                  setState(() { selectNumber += "5";
                  }); },
                  child: Container(
                    height: H / 10.5,
                    width: W / 5.3,
                    alignment: Alignment.center, child: const Text("5",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white, fontWeight: FontWeight.w600,
                    ), ),
                  ), ),
              ), Ink(
                decoration: const BoxDecoration( color: Color(0xff333333), shape: BoxShape.circle,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50), splashColor: Colors.white, splashFactory: NoSplash.splashFactory, onTap: (){
                  setState(() { selectNumber += "6";
                  }); },
                  child: Container(

                    height: H / 10.5,
                    width: W / 5.3,
                    alignment: Alignment.center, child: const Text("6",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white, fontWeight: FontWeight.w600,
                    ), ),
                  ), ),
              ), InkWell(
                borderRadius: BorderRadius.circular(50), onTap: (){
                setState(() {
                  calc = "−"; selectNumber += "-";
                }); },
                child: Container(
                  height: H / 10.5,
                  width: W / 5.3,
                  decoration: BoxDecoration(
                    color: calc == "−"? Colors.white : const Color(0xffFE9F17),
                    shape: BoxShape.circle, ),
                  alignment: Alignment.center, child: Text("−",
                  style: TextStyle(
                    fontSize: 60,
                    color: calc == "−"? const Color(0xffFE9F17) : Colors.white, fontWeight: FontWeight.w600,
                  ), ),
                ), ),
            ], ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Ink(
                decoration: const BoxDecoration(

                  color: Color(0xff333333),
                  shape: BoxShape.circle, ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50), splashColor: Colors.white, splashFactory: NoSplash.splashFactory, onTap: (){
                  setState(() { selectNumber += "1";
                  }); },
                  child: Container(
                    height: H / 10.5,
                    width: W / 5.3,
                    alignment: Alignment.center, child: const Text("1",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white, fontWeight: FontWeight.w600,
                    ), ),
                  ), ),
              ), Ink(
                decoration: const BoxDecoration( color: Color(0xff333333), shape: BoxShape.circle,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50), splashColor: Colors.white, splashFactory: NoSplash.splashFactory, onTap: (){
                  setState(() { selectNumber += "2";
                  }); },
                  child: Container(
                    height: H / 10.5,
                    width: W / 5.3,
                    alignment: Alignment.center,

                    child: const Text("2", style: TextStyle(
                      fontSize: 40,
                      color: Colors.white, fontWeight: FontWeight.w600,
                    ), ),
                  ), ),
              ), Ink(
                decoration: const BoxDecoration( color: Color(0xff333333), shape: BoxShape.circle,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50), splashColor: Colors.white, splashFactory: NoSplash.splashFactory, onTap: (){
                  setState(() { selectNumber += "3";
                  }); },
                  child: Container(
                    height: H / 10.5,
                    width: W / 5.3,
                    alignment: Alignment.center, child: const Text("3",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white, fontWeight: FontWeight.w600,
                    ), ),
                  ), ),
              ), InkWell(
                borderRadius: BorderRadius.circular(50), onTap: (){
                setState(() {
                  calc = "+"; selectNumber += "+";

                }); },
                child: Container(
                  height: H / 10.5,
                  width: W / 5.3,
                  decoration: BoxDecoration(
                    color: calc == "+" ? Colors.white : const Color(0xffFE9F17),
                    shape: BoxShape.circle, ),
                  alignment: Alignment.center, child: Text("+",
                  style: TextStyle(
                    fontSize: 50,
                    color: calc == "+" ? const Color(0xffFE9F17) : Colors.white, fontWeight: FontWeight.w400,
                  ), ),
                ), ),
            ], ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Ink(
                decoration: BoxDecoration(
                  color: const Color(0xff333333),
                  borderRadius: BorderRadius.circular(50), ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(40), splashColor: Colors.white, splashFactory: NoSplash.splashFactory, onTap: (){
                  setState(() { selectNumber += "0";
                  }); },
                  child: Container(
                    height: H / 10.5,
                    width: W / 2.3,
                    alignment: Alignment.center, child: const Text("0",
                    style: TextStyle( fontSize: 40,

                      color: Colors.white,
                      fontWeight: FontWeight.w600, ),
                  ), ),
                ), ),
              Ink(
                decoration: const BoxDecoration(
                  color: Color(0xff333333),
                  shape: BoxShape.circle, ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50), splashColor: Colors.white, splashFactory: NoSplash.splashFactory, onTap: (){
                  setState(() { selectNumber += "."; calc1 = ".";
                  }); },
                  child: Container(
                    height: H / 10.5,
                    width: W / 5.3,
                    alignment: Alignment.center, child: const Text(".",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white, fontWeight: FontWeight.w800,
                    ), ),
                  ), ),
              ), InkWell(
                borderRadius: BorderRadius.circular(50), onTap: (){
                setState(() {
                  display = selectNumber; if(calc == "/" || calc1 == ".") {
                    selectNumber = selectNumber.interpret().toStringAsFixed(2);

                  } else{
                    selectNumber = "${selectNumber.interpret().toInt()}"; }
                  calc = ""; });
              },
                child: Container(
                  height: H / 10.5,
                  width: W / 5.3,
                  decoration: BoxDecoration(
                    color: calc == "=" ? Colors.white : const Color(0xffFE9F17),
                    shape: BoxShape.circle, ),
                  alignment: Alignment.center, child: Text("=",
                  style: TextStyle(
                    fontSize: 50,
                    color: calc == "=" ? const Color(0xffFE9F17) : Colors.white, fontWeight: FontWeight.w600,
                  ), ),
                ), ),
            ], ),
          ], ),
        ), ],
      ), ),
      backgroundColor: Colors.black, );
  } }