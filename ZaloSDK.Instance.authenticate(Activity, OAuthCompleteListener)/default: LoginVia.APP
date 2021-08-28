# zalo
ZaloSDK.Instance.authenticate(Activity, OAuthCompleteListener) //default: LoginVia.APP
1
2
3
4
5
6
7
8
9
10
11
12
OAuthCompleteListener listener = new OAuthCompleteListener() {
    @Override
    public void onAuthenError(int errorCode, String message) {
        //Đăng nhập thất bại..
    }
 
    @Override
    public void onGetOAuthComplete(OauthResponse response) {
        String code = response.getOauthCode()
         //Đăng nhập thành công..
    }
};
@Override
protected void onActivityResult(int reqCode, int resCode, Intent d) {
   super.onActivityResult(requestCode, resultCode, data);
   ZaloSDK.Instance.onActivityResult(this, reqCode, resCode, d);
}
