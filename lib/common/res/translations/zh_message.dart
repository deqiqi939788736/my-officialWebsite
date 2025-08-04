import '../strings.dart';

class ZHMessage {
  Map<String, String> toJson() {
    final map = <String, String>{};
    map[Strings.chat] = "首页";
    map[Strings.mine] = "我的";
    map[Strings.login] = "登录";
    map[Strings.logout] = "登出";
    map[Strings.register] = "注册";
    map[Strings.resetPassword] = "密码找回";
    map[Strings.sendToMail] = "发送至邮箱";
    map[Strings.store] = "开通VIP";
    map[Strings.youNotVIP] = "您还不是会员";
    map[Strings.days] = "天";
    map[Strings.shengyu] = "剩余";
    map[Strings.orderQueryFailed] = "订单查询失败";
    map[Strings.payFail] = "购买失败";
    map[Strings.cancelPay] = "取消支付";
    map[Strings.tokenInvalid] = "登录信息已失效，请重新登录";
    map[Strings.loginSuccess] = "登录成功";
    map[Strings.registerSuccess] = "注册成功";
    map[Strings.logoutSuccess] = "登出成功";
    map[Strings.enterPhone] = "请输入手机号";
    map[Strings.enterPassword] = "请输入密码";
    map[Strings.enterTruePhone] = "请输入正确的手机号";
    map[Strings.enterTrueEmail] = "请输入正确的邮箱";
    map[Strings.enterConfirmPassword] = "请输入确认密码";
    map[Strings.passwordBuYiZi] = "两次输入的密码不一致";
    map[Strings.forgetPassword] = "忘记密码";
    map[Strings.privacyAgreement] = "隐私协议";
    map[Strings.vipPrivacyAgreement] = "会员协议";
    map[Strings.byRegisteringYouAgree] = "登录注册即表示您同意";
    map[Strings.password] = "密码";
    map[Strings.againPassword] = "请再次输入密码";
    map[Strings.email] = "邮箱";
    map[Strings.enterEmail] = "请输入邮箱（用于密码找回）";
    map[Strings.phoneNumber] = "手机号";
    map[Strings.deleteAccount] = "注销帐号";
    map[Strings.cancel] = "取消";
    map[Strings.delete] = "删除";
    map[Strings.areYouDeleteTheAccount] = "确定要删除帐号吗？";
    map[Strings.areYouDeleteTheAccountTips] = "       一经删除帐号，那么你会失去此帐号带来的一切权益\n"
        "       你将不能用此帐号登录应用，并且开通的会员也会失去（不会退回开通会员所用的费用）";
    map[Strings.unlimitedMessage] = "无限消息";
    map[Strings.noAds] = "无广告";
    map[Strings.premium] = "会员价格";
    map[Strings.paySuccess] = "支付成功";
    map[Strings.paySuccessTips] = "谢谢你的支持！";
    map[Strings.back] = "返回";
    map[Strings.restore] = "恢复内购";
    map[Strings.restoreSuccess] = "恢复内购成功";
    map[Strings.orderLoading] = "订单加载中...";
    map[Strings.continueText] = "支付";
    map[Strings.mostPopular] = "性价比之王";
    return map;
  }
}
