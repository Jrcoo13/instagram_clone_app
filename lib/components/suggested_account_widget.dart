import 'package:flutter/material.dart';
import 'package:instagram_clone_app/utils/suggested_account.dart';

class SuggestedAccountWidget extends StatelessWidget {
   final SuggestedAccount suggestedAccount;

  const SuggestedAccountWidget({
    super.key,
    required this.suggestedAccount
  });
  //checks if the account is verified or not
   isVerified(){
    if(suggestedAccount.isVerified){
      return Image.asset(
        'lib/assets/images/verified.png',
        width: 20, height: 20);
    }
    // Return an empty container if not verified
  return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400, width: .5),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border:
                            Border.all(color: Colors.grey.shade400, width: .5)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        suggestedAccount.imageNamePath,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              //account name
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    suggestedAccount.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  //returns verified image or icon if the account is verified
                  //else it returns null
                  isVerified()
                ],
              ),
              //description
              Text(
                suggestedAccount.description,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 30),
              //follow buttom
              Container(
                width: 140,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 0, 140, 255),
                ),
                child: const Center(
                  child: Text(
                    'Follow',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
