import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlSection extends StatefulWidget {
  const UrlSection({Key? key}) : super(key: key);

  @override
  State<UrlSection> createState() => _UrlSectionState();
}

class _UrlSectionState extends State<UrlSection> {
  TextEditingController urlController=TextEditingController();
  Future<void> openInExternalBrowser({required Uri openUrl}) async {
    if(await canLaunchUrl(openUrl)){
      await launchUrl(openUrl,mode: LaunchMode.externalApplication);
    }
    else{
      debugPrint('The entered Url $openUrl is not valid.');
    }
  }
  Future<void> openInInternalApp({required Uri openUrl}) async {
    if(await canLaunchUrl(openUrl)){
      await launchUrl(openUrl,mode: LaunchMode.inAppWebView);
    }
    else{
      debugPrint('The entered Url $openUrl is invalid.');
    }
  }
  @override
  void initState(){
    super.initState();
    urlController.addListener(() => setState(() {}));
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Url Launcher Section',
              style: TextStyle(
                fontFamily: 'PT Sans',
                fontSize: 18.0,
                letterSpacing: 0.3,
                fontWeight: FontWeight.bold,
              ),
            ),
            elevation: 10.0,
            centerTitle: true,
            toolbarHeight: 40.0,
            backgroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 120.0,),
                  textfield('Enter a valid Url',urlController,TextInputType.text),
                  const SizedBox(height: 60.0,),
                  OutlinedButton(
                    onPressed: (){
                      debugPrint(urlController.text);
                      Uri url=Uri.parse(urlController.text);
                      openInExternalBrowser(openUrl: url);
                    },
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'PT Sans',
                        letterSpacing: 0.3,
                        fontSize: 18.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      side: const BorderSide(width: 3.0,color: Colors.white),
                      animationDuration: const Duration(milliseconds: 100),
                      minimumSize: const Size(320,55),
                    ),
                    child: const Text('Open In External Browser'),
                  ),
                  const SizedBox(height: 40.0,),
                  OutlinedButton(
                    onPressed: (){
                      debugPrint(urlController.text);
                      Uri url=Uri.parse(urlController.text);
                      openInInternalApp(openUrl: url);
                    },
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'PT Sans',
                        fontSize: 18.0,
                        letterSpacing: 0.3,
                      ),
                      side: const BorderSide(width: 3.0,color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      animationDuration: const Duration(milliseconds: 100),
                      minimumSize: const Size(320,55),
                    ),
                    child: const Text('Open In Internal App'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget textfield(String htext,TextEditingController launchController,TextInputType resource){
    return TextField(
      controller: launchController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.black,
        contentPadding: const EdgeInsets.symmetric(vertical: 17.0),
        prefixIcon: const Padding(
          padding: EdgeInsets.symmetric(horizontal:15.0,),
          child: Icon(Icons.link_rounded,size: 22.0,color: Colors.white,),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0,),
          child: launchController.text.isEmpty
              ? Container(width: 0,)
              : IconButton(
            icon: const Icon(Icons.close,color: Colors.white,),
            onPressed: () => launchController.clear(),
          ),
        ),
        hintText: htext,
        hintStyle: const TextStyle(
          fontFamily: 'PT Sans',
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 3.0,color: Colors.white,style: BorderStyle.solid),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 3.0,color: Colors.white,style: BorderStyle.solid),
        ),
      ),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        fontFamily: 'PT Sans',
        fontWeight: FontWeight.w600,
      ),
      cursorColor: Colors.white,
      cursorHeight: 20.0,
      cursorRadius: const Radius.circular(10),
      cursorWidth: 2.0,
      keyboardAppearance: Brightness.dark,
      keyboardType: resource,
      textInputAction: TextInputAction.done,
    );
  }
}









