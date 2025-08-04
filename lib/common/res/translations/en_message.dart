import '../strings.dart';

class ENMessage {
  Map<String, String> toJson() {
    final map = <String, String>{};
    map[Strings.chat] = "Chat";
    map[Strings.mine] = "Mine";
    map[Strings.login] = "Login";
    map[Strings.logout] = "Logout";
    map[Strings.register] = "Register";
    map[Strings.resetPassword] = "Reset password";
    map[Strings.sendToMail] = "Send to email";
    map[Strings.store] = "Store";
    map[Strings.youNotVIP] = "You are not a VIP";
    map[Strings.days] = "days left";
    map[Strings.shengyu] = "There are";
    map[Strings.orderQueryFailed] = "Order query failed";
    map[Strings.payFail] = "Payment failure";
    map[Strings.cancelPay] = "Cancel pay";
    map[Strings.tokenInvalid] =
        "Login information is invalid, please login again.";
    map[Strings.loginSuccess] = "Login success";
    map[Strings.registerSuccess] = "Register success";
    map[Strings.logoutSuccess] = "Logout success";
    map[Strings.enterPhone] = "Please enter the phone number";
    map[Strings.enterPassword] = "Please enter the password";
    map[Strings.enterTruePhone] = "Please enter the correct password";
    map[Strings.enterTrueEmail] = "Please enter the correct email address";
    map[Strings.enterConfirmPassword] = "Please enter the confirm password";
    map[Strings.passwordBuYiZi] =
        "The passwords entered twice are inconsistent.";
    map[Strings.forgetPassword] = "Forget password";
    map[Strings.privacyAgreement] = "Privacy agreement";
    map[Strings.vipPrivacyAgreement] = "Terms of service";
    map[Strings.byRegisteringYouAgree] = "By registering, you agree.";
    map[Strings.password] = "Password";
    map[Strings.againPassword] = "Please enter the password again.";
    map[Strings.email] = "Email address";
    map[Strings.enterEmail] =
        "Please enter the email address (for password retrieval)";
    map[Strings.phoneNumber] = "Phone number";
    map[Strings.deleteAccount] = "Delete the account";
    map[Strings.cancel] = "Cancel";
    map[Strings.delete] = "delete";
    map[Strings.areYouDeleteTheAccount] =
        "Are you sure you want to delete the account?";
    map[Strings.areYouDeleteTheAccountTips] =
        "If you delete the account, you will lose"
        " all the benefits brought by this account \ nYou will not be able to log in to "
        "the application with this account, and the opened members will also be lost "
        "(the fees for opening the members will not be refunded).";
    map[Strings.unlimitedMessage] = "Unlimited message";
    map[Strings.noAds] = "No Ads";
    map[Strings.premium] = "Premium";
    map[Strings.paySuccess] = "Pay success";
    map[Strings.paySuccessTips] = "Thanks for choosing !";
    map[Strings.back] = "Let's go!";
    map[Strings.restore] = "Restore purchase";
    map[Strings.restoreSuccess] = "Successful restore purchase";
    map[Strings.orderLoading] = "The order is loading...";
    map[Strings.continueText] = "pay";
    map[Strings.mostPopular] = "Most popular";
    return map;
  }
}
