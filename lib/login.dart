import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:walid_project/sigup.dart';
import 'package:walid_project/widgets/textfield.dart';

class login extends StatefulWidget {
  const login({super.key});
  @override
  State<login> createState() => _loginState();
}
bool obscure = true;
class _loginState extends State<login> {
  @override
  var _phone=TextEditingController();
  var _pass=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:false,
        body:Column(
          children: [
            Image.asset("image/login.jpeg",fit:BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.only(left:40,right:40),
              child: Column(
                children: [
                  SizedBox(height:25,),
                  textfield("Phone",_phone),
                  SizedBox(height:20,),
                  TextFormField(obscureText: obscure,controller: _pass,
                    decoration:InputDecoration(
                      hintText:"Password",suffixIcon:IconButton(icon: !obscure
                        ? Icon(Icons.remove_red_eye, color:Color(0xffE73794))
                        :FaIcon(CupertinoIcons.eye_slash,color:Color(0xffE73794)),
                      onPressed: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },),
                      hintStyle: TextStyle(
                          fontSize: 22,fontWeight:FontWeight.bold,color:Color(0xffE73794)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color:Color(0xffE73794)),
                      ),

                    ),
                  )   ,
                  Align(alignment:Alignment.topRight,child: TextButton(onPressed: (){}, child:
                  Text("Forget Password?",style: TextStyle(fontSize:13,color: Color(0xffE73794)),))),
                  SizedBox(height: 50,),
                  InkWell(onTap: (){},child:Container(width: 350,height: 60,alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(35)),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.yellow,
                          Colors.orange,
                          Color(0xffE73794),
                        ],
                      ),),child: Text("LOG IN",style:TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),),
                  Align(alignment: Alignment.center,
                    child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                        TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => signup(),));
                        }, child:Text("Sign up",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,
                            color:Color(0xffE73794)),))
                      ],
                    ),
                  )

                ],
              ),
            ),
          ],
        )
    );
  }
}