
/**
 * Created with JetBrains RubyMine.
 * User: zhsenl
 * Date: 13-7-1
 * Time: 上午11:28
 * To change this template use File | Settings | File Templates.
 */
/**
 * 弹出层
 * @param popUp
 * @param overlay
 */
function popUp(popUp, overlay){
    jQuery("#" + overlay).css('display', 'block'); // displaying the overlay
    jQuery("#" + popUp).css('display', 'block'); // displaying the popup
    jQuery("#" + popUp).fadeIn(500); // Displaying popup with fade in animation
}
/**
 * 收回层
 * @param popUp
 * @param overlay
 */
function popOff(popUp, overlay){
    jQuery("#" + overlay).fadeOut(500); // displaying the overlay
    jQuery("#" + popUp).fadeOut(500); //function to redirect the page after few seconds
}

//签名数据
function sign_data(xml_content) {
    //比较数据SHA1Digest, SignHashData和数据直接SignPlainData结果是否相同
    var strpropt;
    var strTemp1;
    var strTemp2;

    SCAClient.strInputData = xml_content;
    SCAClient.SHA1Digest();
    if (SCAClient.nResult != 0) {
        strpropt = "SHA1Digest errocode is " + SCAClient.nResult + "errreason is" + SCAClient.strResult;
        alert(strpropt);
        return;
    }
    strpropt = "SHA1Digest Succeed!The Encoded Data is " + SCAClient.strOutputData;
    console.log(strpropt);


    //打开设备
    SCAClient.InitEnv();
    if (SCAClient.nResult != 0) {
        strpropt = "InitEnv errocode is " + SCAClient.nResult + "errreason is" + SCAClient.strResult;
        alert(strpropt);
        return;
    }
    console.log("Init Succeed!");

    SCAClient.strPin = "88888888";
    SCAClient.VerifyPin();
    if (SCAClient.nResult != 0) {
        strpropt = "VerifyPin errocode is " + SCAClient.nResult + "errreason is" + SCAClient.strResult;
        ;
        alert(strpropt);
        SCAClient.CloseEnv();
        return;
    }
    console.log("VerifyPin Succeed!");


    //对hash数据进行签名
    strTemp1 = SCAClient.strOutputData;
    SCAClient.strInputData = strTemp1;
    SCAClient.SignHashData();
    if (SCAClient.nResult != 0) {
        strpropt = "SignHashData errocode is " + SCAClient.nResult + "errreason is" + SCAClient.strResult;
        alert(strpropt);
        SCAClient.CloseEnv();
        return;
    }
    console.log("SignHashData Succeed!");
    strTemp1 = SCAClient.strOutputData;

    //对原文数据进行签名
//    SCAClient.strInputData = xml_content;
//    SCAClient.SignPlainData();
//    if (SCAClient.nResult != 0) {
//        strpropt = "SignPlainData errocode is " + SCAClient.nResult + "errreason is" + SCAClient.strResult;
//        ;
//        alert(strpropt);
//        SCAClient.CloseEnv();
//        return;
//    }
//    console.log("SignPlainData Succeed!");
//    strTemp2 = SCAClient.strOutputData;
//
//    if (strTemp1 != strTemp2) {
//        alert("SignHashData and SignPlainData error!");
//        return;
//    }
//    else {
//        alert("SignPlainData Succeed!");
//        alert(strTemp2);
//    }

    return strTemp1;
}

//获取设备信息
function get_card_id()
{
    var strpropt;
    //打开设备
    SCAClient.InitEnv();
    if (SCAClient.nResult!= 0)
    {
        strpropt = "InitEnv errocode is " + SCAClient.nResult + "errreason is" + SCAClient.strResult;
        alert(strpropt);
        return;
    }
//    alert("Init Succeed!");

    //获得卡号
    SCAClient.GetCardID();
    if (SCAClient.nResult!= 0)
    {
        strpropt = "GetCardID errocode is " + SCAClient.nResult + "errreason is" + SCAClient.strResult;
        alert(strpropt);
        SCAClient.CloseEnv();
        return;
    }
    strpropt  =  SCAClient.strOutputData;
    SCAClient.CloseEnv();
    console.log(strpropt);
    return strpropt;
}
function get_cert_no(){
    var strpropt;
    //打开设备
    SCAClient.InitEnv();
    if (SCAClient.nResult!= 0)
    {
        strpropt = "InitEnv errocode is " + SCAClient.nResult + "errreason is" + SCAClient.strResult;
        alert(strpropt);
        return;
    }
    //获得签名证书号
    var cert_no = SCAClient.GetCertNo();
    if (SCAClient.nResult!= 0)
    {
        strpropt = "GetCertNo errocode is " + SCAClient.nResult + "errreason is" + SCAClient.strResult;
        alert(strpropt);
        SCAClient.CloseEnv();
        return;
    }
    cert_no = SCAClient.strOutputData

    SCAClient.CloseEnv();
    return cert_no;
}