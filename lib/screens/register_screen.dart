import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:phone_auth_app/widgets/custom_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final TextEditingController phoneController = TextEditingController();

  Country selectedCountry =  Country(
      phoneCode: '94',
      countryCode: 'SR',
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: 'Sri Lanka',
      example: 'Sri Lanka',
      displayName: 'Sri Lanka',
      displayNameNoCountryCode: 'SL',
      e164Key: ''
  );

  @override
  Widget build(BuildContext context) {

    phoneController.selection = TextSelection.fromPosition(
      TextPosition(offset: phoneController.text.length),
    );
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: Column(
              children: [
                Container(
                  width: 200.0,
                  height: 200.0,
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple.shade50,
                  ),
                  child: Image.asset('assets/image2.png'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Add your phone number. We\'ll send you a verification code.',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  cursorColor: Colors.purple,
                  controller: phoneController,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  onChanged: (value) {
                    setState(() {
                      phoneController.text = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      color: Colors.grey.shade600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          showCountryPicker(context: context,
                              countryListTheme: CountryListThemeData(
                                bottomSheetHeight: 550.0,
                              ),
                              onSelect: (value){
                            selectedCountry = value;
                          });
                        },
                        child: Text(
                          '${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    suffixIcon: phoneController.text.length > 9 ? Container(
                      height: 30.0,
                        width: 30.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Icon(Icons.done,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ) : null,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  child: CustomButton(
                    text: 'Login',
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
