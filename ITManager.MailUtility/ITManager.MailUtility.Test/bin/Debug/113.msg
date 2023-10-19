X-Qmail-Scanner-Diagnostics: from 192.168.9.66 by vdvm34.logix.local (envelope-from <azure-noreply@microsoft.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.66):SA:0(IronPort):.  Processed in 0.026407 secs); 15 Sep 2022 17:46:27 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  azure-noreply@microsoft.com designates 157.55.254.216 as  permitted sender) identity=mailfrom;  client-ip=157.55.254.216; receiver=tblr2.logix.in;  envelope-from="azure-noreply@microsoft.com";  x-sender="azure-noreply@microsoft.com";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:52.165.175.144 ip4:52.247.53.144  ip4:157.55.254.216 ip4:13.74.143.28 ip4:104.214.25.77  ip4:207.46.225.107 ip4:51.137.58.21 ip4:138.91.172.26  ip4:52.250.107.196 ip4:13.92.31.129 ip4:40.77.102.222  ip4:51.144.100.179 ip4:52.160.39.140 ip4:52.244.206.214  ip4:13.72.50.45 ip4:20.118.139.208/30 ip4:20.98.194.68/30  ip4:20.83.222.104/30 ip4:20.88.157.184/30 ip4:20.59.80.4/30  ip4:20.51.6.32/30 ip4:20.97.34.220/30 ip4:20.107.239.64/30  ip4:20.105.209.76/30 ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@waws-prod-ch1-919f4569.cloudapp.net)  identity=helo; client-ip=157.55.254.216;  receiver=tblr2.logix.in;  envelope-from="azure-noreply@microsoft.com";  x-sender="postmaster@waws-prod-ch1-919f4569.cloudapp.net";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=azure-noreply@microsoft.com; spf=None smtp.helo=postmaster@waws-prod-ch1-919f4569.cloudapp.net; dkim=pass (signature verified) header.i=microsoft-noreply@microsoft.com; dmarc=pass (p=reject dis=none) d=microsoft.com
IronPort-SDR: D7yBYuRcKk5T04lCkbkkhj6MckR2MFMsEILPJwti5dZaWPhnVRl9+GdE0P9oGac7sPDVkO7eHT q/sfdCjtj0PWMSRs4NI3yyfCjmxrts1RfluvHTGJBLbkU+yfmiMF0Zu/oeSKTiug0TgF5KOIuW ecCU5qKljkFAqoCvmszJJQ4FDFdwuRx1cKDz598J/3mt6iGZT+ThnogasF+5ByDbgVzUzvJTfq aJ3fO/iAi4f4PugPc0UG17tGq5Wi6iUcS9MZqlPczdUUiffBgryq3BPhhwk4CNBqeEi+dy3FCV H5n7lwW3JvHQwWVDHlHiJncK
X-ORIGINAL-IP: 157.55.254.216
X-ORIGINAL-TIME: 15 Sep 2022 23:16:12 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23:kUGGFKKO32+wCFB6FE+RTpMlxSXFcZb7ZxGr2PjKsXjdYENS1TBTm 2oYWm2OOPuIZDD3ft9xbY+3px8BupTWm4JiQFZorCE8RH9jl5D5CIXCJC8cHc8ywu4v7a5Dx 5xGAjUVBJlsJpPkjk7xdOCn9xGQ7InQLlbGILes1htZGEk1E0/NtTo5w7Rj2t8x3IDja++wk YqaT/P3aALNNwFcbjl8B5Kr8HuDa9yv0N+wlgVWicFj5TcypVFMZH4sDfjZw0/Df2VhNrTSq 9AvY12O1jmxEx8FUrtJm56qKhVirrT6ZGBigVIPM0Suqkka/kTee0v0XRYRQR4/ttmHozx+4 NNJvs2PaghzB4qWhLQjFCd+EQMlPJQTrdcrIVDn2SCS51LPbGCp2+9pAAQ9PdRdq78mDz0Tq 61eIzQKcxyKn/rwxr+nIgVurp1+c4+2YcVF5y0ml2iHZRolacirr6Hi7M1Fxjp1gMdUEO7ad uIcaDF1aw/HbQEJMVASYH47tLf12iajKW0DwL6TjZQnzHnckC9T66SuK/aJe/C6YfsIun/N8 woq+EyiW0pBbIXFodafyVqsi+vXkS7gW6oJHaGi//Fwh0CLgG0VYCD6TnOkqOaiz1akXN4aI ExNv3t3/KZuqRL6CNL5WAC0qWac+BgRR7K8DtHW9imLzqGF3CWWXFEjFCIRVpsYks0UHj0Tg wrhc8zSORRjt7icSHS4/7iSrC+vNSV9EVLudRPoXiNZuomz/91bYgbnC4Y8TvXs0bUZDBmqm 1i3QD4Ca6L/ZCLh/467/FvOjDXESnPhEFZrvl+/so5I8GpEiGONeIW38h3D9/FMaY2ZFxzQ5 SkKx5XAvaYFCZaQmCWVWKMLEa3BCxe53N/03g8H83oJrmrFF5ufkWZ4vWgWyKBBb59sRNMRS BWP0T69HbcKVJdQUYd5YpiqF+MhxrX6GNLuW5j8N4QQOcEhLFXdongzPSZ8OlwBdmB8wMnT3 r/LIa6R4YoyU/kPIMeeHLhHjO5xmHxWKZ37HMqkk076uVZhWJJlYexcawDWN7pRAFKspQTe6 dFEMMWWgxxNTffzChQ7AqZCRW3m2UMTXMisw+QOLr7rClM/SAkJVqGNqZt8Jd0Nt/oPyo/go CrnMmcGkwWXuJEyAV/RApyVQO+3AskXQLNSFXBEAGtELFB5Odv+t/dDLMpqFVTlncQ6pcNJo zA+U5zoKvFOQS7A4DMTcdz7q5ZvbBC6rQePNDCiez8xY9hrQAmhxzMuVlK3nMXXJibo58Y4v ZO60QbXHcgKSwh4VZ2EbfOk1VSqunYB3ul1WhKQcNVUfUzt9qlsKjDw0KBsepxSeU2by2vIz RuSDDcZufLJ/90//u7PiP3WtIyuCeZ/QhdXEjCDv7a7PCXX5ES5xopEXLradDzRTjqvqqCjb v9S1PbyLLsMm1MT69hwFLNizKQf4drzpuEFlV05QiWTN1nyU+FuOHiL28VLp5Zh/L4BtFvkQ F+L9/lbJa6NZJHvHmkXKVd3de+Ez/wVxmTf4PlpckX34Ch7oOiOXUlIZETelyVCN/5tKoQph Owh4YtHsl2x1kd0Y5CNiidJ+22UNjoGXrl+7sMWB4riiwwKzFBeYMWBW3Kru8/SMo1BYhswP zuZpKvenLANlEPNfk06GWXJwbQPiJkLo0kawQJQPF+OgNfE2qc60UED6zgxVQgJnBxL3/goZ zp0PlJuYL2U+Dstj8gaGjH1Sg8dWUPIvEf1zEYFnXXBCU+lSjWVfmE6PO+M+mEf8n5dJ2UKo ezDlju8CTu6Ltvs2iYSWFJ+r62xRNN8wQTOhcS7QZaIEpwhOGro3/21bm0Sphq7Wc48iSUrf wWxEDqctEE6CcIRn0H/I5aTyq9VUAqDKClJQagkrfpYEz2BJmD00jyJNky4YtsLIfHWmaN95 wqCOeoXPylSFg7WxtzYOULIC7p1l+Qu/90MZvXgImtuX363sG9yqJyJnsThrDZDfuiCWvrR5 m8cm/xu34BQabZpd7fxkfR5
IronPort-HdrOrdr: A9a23:F5l8Lq/V8bKhlj9okSFuk+C7I+orL9Y04lQ7vn2ZKCY0TiX8ra uTdZsguCMc5Ax6ZJhCo7G90de7Lk80nKQdibX5Vo3PYOCJggWVEL0=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,318,1654540200";    d="scan'208,217";a="85474283"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
Received: from azure-noreply@microsoft.com([192.168.1.1]) 	by PME Mail With Id 1663263991501.15433;Thu, 15 Sep 2022 23:16:31 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h4dif61oo389 for <helpdesk@satragroup.in>; Thu, 15 Sep 2022 23:16:27 +0530 (envelope-from <azure-noreply@microsoft.com>)
Received: (qmail 129127 invoked by uid 1012); 15 Sep 2022 17:46:27 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.66])          (envelope-sender <azure-noreply@microsoft.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 15 Sep 2022 17:46:27 -0000
Received: from waws-prod-ch1-919f4569.cloudapp.net ([157.55.254.216])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2022 23:16:04 +0530
DKIM-Signature: v=1; a=rsa-sha256; d=microsoft.com; s=s1024-meo;	c=relaxed/relaxed; i=microsoft-noreply@microsoft.com; t=1663263961;	h=from:subject:date:message-id:to:mime-version:content-type;	bh=xo8drtgv2qcEfc6LL1w0kEPlt4WMSd64DD2S2EpXRK0=;	b=MLtrIq1crz9flkHWNekcu5AWMSPnkrDIUxMqO92ffp24CVdGAyFUDPkSHtNU3XKln44LNDRMX8g	emMKIbnWGAAWPA2lfkNGKNQUjOxQHV2dOlFeYek1faGTvo3PbaDOZnLgx3CEXWVScvb6n3eTHYa/l	0uAfg4hqbjgC+6gF8bM=
MIME-Version: 1.0
Subject: Action needed: Pay your balance
Date: Thu, 15 Sep 2022 17:46:01 +0000
Message-ID: <be2ed704-236b-469e-9404-9f4cb011863f@az.northcentralus.production.microsoft.com>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: Microsoft <microsoft-noreply@microsoft.com>
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <azure-noreply@microsoft.com>
content-type: multipart/alternative; boundary="=-VPAB+L7lJJY+lIDXX4dVhg=="
X-PMAttribute: 1663263991501.15433; mb_id=QSM1413892035136; imapid=30963; del_to=helpdesk

--=-VPAB+L7lJJY+lIDXX4dVhg==
content-type: text/plain; charset=utf-8
content-transfer-encoding: quoted-printable


Microsoft

Pay your balance in the Microsoft 365 admin centre
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The credit card you used to purchase Power BI Pro was declined. To avoid se=
rvice disruption, go to the Microsoft 365 admin centre and verify your paym=
ent information. Check your card number, CVV number, PIN, and expiration da=
te and then retry your payment.

Another reason for the card decline could be recent changes in bank regulat=
ions for automatic recurring transactions. Due to these changes, you need t=
o sign in to make your payment from the Microsoft 365 admin centre.

Verify payment information >>
https://secure-web.cisco.com/13tjp51laosW_UKD7H8cI3SggqSq-g8ItqmQnQxjtuh2nw=
9qzyQHEPwlrO86BJPJqahpeP5FC65soz-vNjyRFVkoXw7gbYIY56zrCzKC4AbmaFZgsvV5J6Tm2=
jdsdJiC_cQA7IjYq8WL7iZZduKFKfAAN2jiati1yEu_5N450bbG-ClIuoS1nSn8rjXOSy-ylxGd=
MZ6qhFJeBqV0BI3UG-etjzJWfV3gqCsHG4w-QAp83D6Tfdc60FFluYDgTrvCEA2HaaMcEBYo-yC=
WDqGpwEwiuO23vTx36GPEcp_OCIYGAWgGByvS_Ol6yxB8477JdLExDgLuZhvjbUUk07TR549RJM=
v84O2AS_-_TSNoBAX51PQhz4eBcJC9y9CoKgDoSQElGH5-sdYYLQWcJ15uEbUhBF9D3PwIbL--J=
cMt_k2ziVzPcPltncULRCQ_ctMMiZqC9oYpG-j7HMD_p96SzKA/https%3A%2F%2Fadmin.micr=
osoft.com%2FAdminPortal%2FHome%3FlastFourDigits%3D0385%23%2FPaymentMethods

If you continue to have a problem, you may need to contact your bank.

If you've already updated your payment information or paid your bill, disre=
gard this email.

Learn how to add or update your payment information >
https://secure-web.cisco.com/1-mwI9VGye1syk-63Bhm4ssESmjcJTT77xlQLns3nSpi07=
mTBcxfXv-RWppL9dgyg2FbRxJAq9kuemhAYbBk6wRanKtA32A7Y2ZYH6rbAVMmQtC9at8AFnJvM=
fORDUg3xOZ4NZdZI5W6t98Cy4zaZC_DqwOOo5vV4fOFPeXh1EFdV9cZcPa-KBSjDbWzIJKPhZI9=
Qf3bAZ4tl4VikUlNZITmjEQNm25EEXYw6bbsQxhL-Maam8cdpGyq_Y3pTK8cJ1Qo-7MlPMvNirp=
gBo5Fys3rNrV0cLxPB8XJfFrM6H11MZNCUtmzL6G_g4g4ouuNF_r5jnzMGs58brB_NWroudKjrW=
KGMw5WXZD-Wns5iTKIE8xt8xxyWccBB2Tf9RPKNyeGYtpqcOrZCB58XvG8Z1pqXcY8Hw7PtIPQN=
EXYQk1wTKfpc9hhhD9b3MGAy7RyBZGQRMipsBI7LBWNCFhGErw/https%3A%2F%2Fdocs.micro=
soft.com%2Fen-in%2Foffice365%2Fadmin%2Fsubscriptions-and-billing%2Fadd-upda=
te-or-remove-credit-card-or-bank-account%3Fview%3Do365-worldwide

** Account information
----------------------
Organisation name : satragroup.in

Domain : satragroup.in

Payment method: : **** **** **** 0385

Subscription name: Power BI Pro

Start date: 18 June 2022

Expiry date : 18 June 2023

Licences : 1

--------------------------------------------------


Privacy Statement: https://secure-web.cisco.com/1-jyObB4fzWPHc2YSNPFYBDatPk=
r7fes7F1hEO--K3uom6Kahw8v581p_ccD9sa6VPqobxzKKsXvCT9BFkr8DeLNTRNvbpqoi1wH11=
U6kj4qTMNRwIY_B4_vruYMKJ2VW03byVHXRlAwaFRmz3K1zY-b5r7k2mLrwgN7oz74YcSZNI-8o=
RZHb_PBUpxD18Lo5s4COFIZS4c6iw1dzWJZyvCpV8OFNw718BOe72iWQXAKtwY0kAl3SIADVBds=
tVMAMqB9EM_VNdUAqrRQ6ElVt3CTgV99PzYzEDeiHVjRDkY_0QYoJ7GzcE8_upnVwoePYZ-BcKH=
YMlClAKUssmBgijsGcm-gm8xTiyIkOo04anqFW_fg3I9fiiK0TgR-eYh2ZC2tdhDICY0GEorMdz=
mYqzXPOxFld5gdr1ud9MRnsCXIub7qgYgR2rVyZJ1Db_-kVv0Bw3Iz1KZlqFXU8fejuqg/https=
%3A%2F%2Fgo.microsoft.com%2Ffwlink%2F%3FLinkId%3D521839

Microsoft Corporation, One Microsoft Way, Redmond, WA 98052

Microsoft

--=-VPAB+L7lJJY+lIDXX4dVhg==
content-type: text/html; charset=utf-8
content-transfer-encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "https://www.w3.or=
g/TR/xhtml1/DTD/xhtml1-strict.dtd"><html xmlns=3D"https://www.w3.org/1999/x=
html" lang=3D"en" xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:=
schemas-microsoft-com:office:office" style=3D"min-height: 100%;background: =
#ffffff"><head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8=
">
    <meta name=3D"viewport" content=3D"width=3Ddevice-width">
    <meta name=3D"eventId" content=3D"commercial-commerce-legacy-credit-car=
d-declined-default">
    <meta name=3D"messageId" content=3D"be2ed704-236b-469e-9404-9f4cb011863=
f">
    <meta name=3D"cloud" content=3D"AZ">


       =20

    <title>
       =20
    Action needed: Pay your balance

    </title>

        <style id=3D"mediaqueries">@media only screen and (max-width: 640px=
) {
  .wrap-dangler {
    padding-right: 10% !important;
    mso-padding-right-alt: 10% !important;
  }

  .wrap-dangler.small-text-center .wrap-dangler.text-center {
    padding-left: 10% !important;
    mso-padding-left-alt: 10% !important;
    padding-right: 10% !important;
    mso-padding-right-alt: 10% !important;
  }
}

@media only screen and (max-width: 640px) {
  p.comment-border-right {
    margin-left: 0 !important;
    Margin-left: 0 !important;
    mso-margin-left-alt: 0 !important;
  }
}

@media only screen and (max-width: 640px) {
  p.comment-border-left {
    margin-left: 0 !important;
    Margin-left: 0 !important;
    mso-margin-left-alt: 0 !important;
  }
}

@media only screen and (max-width: 640px) {
  .small-float-left {
    margin-left: 0 !important;
    float: none !important;
    text-align: left !important;
  }
}

@media only screen and (max-width: 640px) {
  .show-for-large {
    display: none !important;
    width: 0;
    mso-hide: all;
    overflow: hidden;
  }
}

@media only screen and (max-width: 640px) {
  .wrap-dangler {
    padding-right: 10% !important;
    mso-padding-right-alt: 10% !important;
  }

  .wrap-dangler.small-text-center .wrap-dangler.text-center {
    padding-left: 10% !important;
    mso-padding-left-alt: 10% !important;
    padding-right: 10% !important;
    mso-padding-right-alt: 10% !important;
  }
}

@media only screen and (max-width: 640px) {
  p.comment-border-right {
    margin-left: 0 !important;
    Margin-left: 0 !important;
    mso-margin-left-alt: 0 !important;
  }
}

@media only screen and (max-width: 640px) {
  p.comment-border-left {
    margin-left: 0 !important;
    Margin-left: 0 !important;
    mso-margin-left-alt: 0 !important;
  }
}

@media only screen and (max-width: 640px) {
  .small-float-left {
    margin-left: 0 !important;
    float: none !important;
    text-align: left !important;
  }
}

@media only screen {
  html {
    min-height: 100%;
    background: #ffffff;
  }
}

@media only screen and (max-width: 640px) {
  .small-float-center {
    margin: 0 auto !important;
    float: none !important;
    text-align: center !important;
  }

  .small-text-center {
    text-align: center !important;
  }

  .small-text-left {
    text-align: left !important;
  }

  .small-text-right {
    text-align: right !important;
  }
}

@media only screen and (max-width: 640px) {
  .hide-for-large {
    display: block !important;
    width: auto !important;
    overflow: visible !important;
    max-height: none !important;
    font-size: inherit !important;
    line-height: inherit !important;
  }
}

@media only screen and (max-width: 640px) {
  table.body table.container .hide-for-large,
  table.body table.container .row.hide-for-large {
    display: table !important;
    width: 100% !important;
  }
}

@media only screen and (max-width: 640px) {
  table.body table.container .callout-inner.hide-for-large {
    display: table-cell !important;
    width: 100% !important;
  }
}

@media only screen and (max-width: 640px) {
  table.body table.container .show-for-large {
    display: none !important;
    width: 0;
    mso-hide: all;
    overflow: hidden;
  }
}

@media only screen {
  a[x-apple-data-detectors] {
    color: inherit !important;
    text-decoration: none !important;
    font-size: inherit !important;
    font-family: inherit !important;
    font-weight: inherit !important;
    line-height: inherit !important;
  }
}

@media only screen and (max-width: 640px) {
  .menu.small-vertical .menu-item {
    padding-left: 0 !important;
    padding-right: 0 !important;
  }
}

@media only screen and (max-width: 640px) {
  table.body img {
    width: auto;
    height: auto;
  }

  table.body center {
    min-width: 0 !important;
  }

  table.body .container {
    width: 95% !important;
  }

  table.body .columns,
  table.body .column {
    height: auto !important;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    padding-left: 16px !important;
    padding-right: 16px !important;
  }

  table.body .columns .column,
  table.body .columns .columns,
  table.body .column .column,
  table.body .column .columns {
    padding-left: 0 !important;
    padding-right: 0 !important;
  }

  table.body .collapse .columns,
  table.body .collapse .column {
    padding-left: 0 !important;
    padding-right: 0 !important;
  }

  td.small-1,
  th.small-1 {
    display: inline-block !important;
    width: 8.33333% !important;
  }

  td.small-2,
  th.small-2 {
    display: inline-block !important;
    width: 16.66667% !important;
  }

  td.small-3,
  th.small-3 {
    display: inline-block !important;
    width: 25% !important;
  }

  td.small-4,
  th.small-4 {
    display: inline-block !important;
    width: 33.33333% !important;
  }

  td.small-5,
  th.small-5 {
    display: inline-block !important;
    width: 41.66667% !important;
  }

  td.small-6,
  th.small-6 {
    display: inline-block !important;
    width: 50% !important;
  }

  td.small-7,
  th.small-7 {
    display: inline-block !important;
    width: 58.33333% !important;
  }

  td.small-8,
  th.small-8 {
    display: inline-block !important;
    width: 66.66667% !important;
  }

  td.small-9,
  th.small-9 {
    display: inline-block !important;
    width: 75% !important;
  }

  td.small-10,
  th.small-10 {
    display: inline-block !important;
    width: 83.33333% !important;
  }

  td.small-11,
  th.small-11 {
    display: inline-block !important;
    width: 91.66667% !important;
  }

  td.small-12,
  th.small-12 {
    display: inline-block !important;
    width: 100% !important;
  }

  .columns td.small-12,
  .column td.small-12,
  .columns th.small-12,
  .column th.small-12 {
    display: block !important;
    width: 100% !important;
  }

  table.body td.small-offset-1,
  table.body th.small-offset-1 {
    margin-left: 8.33333% !important;
    Margin-left: 8.33333% !important;
  }

  table.body td.small-offset-2,
  table.body th.small-offset-2 {
    margin-left: 16.66667% !important;
    Margin-left: 16.66667% !important;
  }

  table.body td.small-offset-3,
  table.body th.small-offset-3 {
    margin-left: 25% !important;
    Margin-left: 25% !important;
  }

  table.body td.small-offset-4,
  table.body th.small-offset-4 {
    margin-left: 33.33333% !important;
    Margin-left: 33.33333% !important;
  }

  table.body td.small-offset-5,
  table.body th.small-offset-5 {
    margin-left: 41.66667% !important;
    Margin-left: 41.66667% !important;
  }

  table.body td.small-offset-6,
  table.body th.small-offset-6 {
    margin-left: 50% !important;
    Margin-left: 50% !important;
  }

  table.body td.small-offset-7,
  table.body th.small-offset-7 {
    margin-left: 58.33333% !important;
    Margin-left: 58.33333% !important;
  }

  table.body td.small-offset-8,
  table.body th.small-offset-8 {
    margin-left: 66.66667% !important;
    Margin-left: 66.66667% !important;
  }

  table.body td.small-offset-9,
  table.body th.small-offset-9 {
    margin-left: 75% !important;
    Margin-left: 75% !important;
  }

  table.body td.small-offset-10,
  table.body th.small-offset-10 {
    margin-left: 83.33333% !important;
    Margin-left: 83.33333% !important;
  }

  table.body td.small-offset-11,
  table.body th.small-offset-11 {
    margin-left: 91.66667% !important;
    Margin-left: 91.66667% !important;
  }

  table.body table.columns td.expander,
  table.body table.columns th.expander {
    display: none !important;
  }

  table.body .right-text-pad,
  table.body .text-pad-right {
    padding-left: 12px !important;
  }

  table.body .left-text-pad,
  table.body .text-pad-left {
    padding-right: 12px !important;
  }

  table.menu {
    width: 100% !important;
  }

  table.menu td,
  table.menu th {
    width: auto !important;
    display: inline-block !important;
  }

  table.menu.vertical td,
  table.menu.vertical th,
  table.menu.small-vertical td,
  table.menu.small-vertical th {
    display: block !important;
  }

  table.menu[align=3D"center"] {
    width: auto !important;
  }

  table.button.small-expand,
  table.button.small-expanded {
    width: 100% !important;
  }

  table.button.small-expand table,
  table.button.small-expanded table {
    width: 100%;
  }

  table.button.small-expand table a,
  table.button.small-expanded table a {
    text-align: center !important;
    width: 100% !important;
    padding-left: 0 !important;
    padding-right: 0 !important;
  }

  table.button.small-expand center,
  table.button.small-expanded center {
    min-width: 0;
  }
}

@media (min-resolution: 1dpi) {
  body[data-outlook-cycle] .main-container > table {
    width: 640px;
  }

  body[data-outlook-cycle] .container-wide .main-container > table {
    width: 888px;
  }
}

@media only screen and (max-width: 640px) {
  .outer-wrapper > tbody > tr > .wrapper-inner,
  table.body .columns,
  table.body .column {
    padding-left: 12px !important;
    padding-right: 12px !important;
  }

  .main-container > .float-center {
    width: 100%;
  }
}

@media only screen and (max-width: 888px) {
  body.container-wide .main-container > table {
    width: 100% !important;
  }
}

@media only screen and (max-width: 640px) {
  table.button.secondary a {
    font-size: 16px !important;
    line-height: 22px !important;
  }

  .header-right-column table.button table td a {
    font-size: 13px !important;
    line-height: 1 !important;
  }
}

@media only screen and (max-width: 640px) {
  .section .card-table th:first-child {
    padding-bottom: 0px !important;
    mso-padding-bottom-alt: 0px !important;
  }
}

@media only screen and (max-width: 640px) {
  .section .card-table td,
  .section .card-table th:last-child {
    padding-top: 0px !important;
    mso-padding-top-alt: 0px !important;
  }
}

@media only screen and (max-width: 640px) {
  .section .card-table.mobile-padding td {
    padding-top: 8px !important;
    mso-padding-top-alt: 8px !important;
  }
}

@media only screen and (max-width: 640px) {
  .section .card-table tr.border-top td,
  .section .card-table tr.border-top th:last-child {
    border: none !important;
  }
}

@media only screen and (max-width: 640px) {
  .section .card-table.no-stack tr.border-top td,
  .section .card-table.no-stack tr.border-top th {
    border-top: 1px solid #dedede !important;
  }
}

@media only screen and (max-width: 640px) {
  .section .card-table.no-stack th,
  .section .card-table.no-stack td {
    padding-top: 8px !important;
    mso-padding-top-alt: 8px !important;
    padding-bottom: 8px !important;
    mso-padding-bottom-alt: 8px !important;
  }
}

@media only screen and (max-width: 640px) {
  .section .card-row .columns.first {
    padding-bottom: 0px !important;
    mso-padding-bottom-alt: 0px !important;
  }
}

@media only screen and (max-width: 640px) {
  .section .card-row .columns.last {
    padding-top: 0px !important;
    mso-padding-top-alt: 0px !important;
  }
}

@media only screen and (max-width: 640px) {
  .header-section .stack-for-small th {
    display: block;
    width: 100% !important;
  }

  .header-section .stack-for-small .header-right-column {
    padding-bottom: 0 !important;
    padding-top: 24px !important;
  }

  .header-section .stack-for-small .header-right-column,
  .header-section .stack-for-small .header-right-column p {
    text-align: left !important;
  }
}

@media only screen and (max-width: 640px) {
  .logo-microsoft-azure {
    max-height: 21px;
    max-width: 100%;
  }
}

@media only screen and (max-width: 640px) {
  .logo-microsoft-viva {
    max-height: 21px;
    max-width: 100%;
  }
}

@media only screen and (max-width: 640px) {
  .logo-microsoft-dynamic365 {
    max-height: 21px;
    max-width: 100%;
  }
}

@media only screen and (max-width: 640px) {
  .list-row .columns.first,
  .list-row .list-items {
    padding-bottom: 0 !important;
    mso-padding-bottom-alt: 0 !important;
  }

  .list-row .columns.last,
  .list-row .list-items {
    padding-top: 0 !important;
    mso-padding-top-alt: 0 !important;
  }
}

@media only screen and (max-width: 640px) {
  .number-bar .interior-bar td {
    padding-top: 0px !important;
    mso-padding-top-alt: 0px !important;
    padding-bottom: 0px !important;
    mso-padding-bottom-alt: 0px !important;
  }
}

@media only screen and (max-width: 640px) {
  .small-display-block {
    display: block !important;
  }

  .small-text-medium {
    font-size: 18px !important;
  }

  .small-text-left {
    text-align: left !important;
  }

  .small-bottom-padding-8 {
    padding-bottom: 8px !important;
    mso-padding-bottom-alt: 8px !important;
  }

  .small-top-padding-0 {
    padding-top: 0 !important;
    mso-padding-top-alt: 0 !important;
  }

  .video-container img {
    margin-bottom: 10px;
    Margin-bottom: 10px;
    mso-margin-bottom-alt: 10px;
  }

  .video-container .video-thumbnail img {
    max-width: 580px;
    width: 300px;
  }

  .list-items p {
    text-align: left !important;
    font-size: 20px;
  }

  .list-items p,
  .list-items img {
    line-height: 13px !important;
    mso-line-height-alt: 13px;
    margin-bottom: 8px;
    Margin-bottom: 8px;
    mso-margin-bottom-alt: 8px;
    text-align: left;
  }

  .list-items img {
    vertical-align: middle !important;
    margin-top: 5px !important;
  }

  .list-items.bullet-small th img {
    padding-top: 0;
    mso-padding-top-alt: 0;
  }

  table.body {
    min-width: 320px !important;
  }

  table.body .main-container {
    padding: 0 !important;
  }

  table.body .main-container > table.container {
    min-width: 300px !important;
  }

  table.body table.container {
    width: 100% !important;
  }

  .header-section img {
    height: auto !important;
  }

  .header-section .small-6,
  .header-section .large-3,
  .header-section .large-6 {
    margin-top: 0px;
    Margin-top: 0px;
    mso-margin-top-alt: 0px;
    margin-bottom: 0px;
    Margin-bottom: 0px;
    mso-margin-bottom-alt: 0px;
  }

  .header-section .heading-container {
    margin-bottom: 0px;
    Margin-bottom: 0px;
    mso-margin-bottom-alt: 0px;
  }

  .header-section .heading-container p {
    font-family: Segoe UI, SegoeUI, Roboto, "Helvetica Neue", Arial, sans-s=
erif;
  }

  .header-section p.amount-title {
    line-height: 16px;
    mso-line-height-alt: 16px;
    font-size: 12px !important;
    word-wrap: break-word !important;
    margin: 0 15px 10px 15px;
    mso-margin-alt: 0 15px 10px 15px;
    padding-top: 0 !important;
  }

  .header-section p.amount-value {
    font-size: 24px;
    line-height: 18px;
    mso-line-height-alt: 18px;
    margin: 0 15px 10px 15px;
    mso-margin-alt: 0 15px 10px 15px;
    padding: 0;
  }

  .section .columns {
    padding-top: 0px;
    mso-padding-top-alt: 0px;
    padding-bottom: 0px;
    mso-padding-bottom-alt: 0px;
  }

  .section .show-for-small {
    display: block !important;
    visibility: visible !important;
    height: auto !important;
    mso-height-alt: auto !important;
    max-height: none !important;
    mso-max-height-alt: none !important;
    mso-hide: none !important;
    overflow: visible !important;
  }

  table.footer-template p {
    font-size: 12px !important;
    line-height: 16px !important;
  }

  .wrapper.wrapper-inner-540-large .wrapper-inner .container {
    width: 100%;
  }

  .wrapper.wrapper-inner-20 .wrapper-inner {
    padding-left: 0px !important;
    mso-padding-left-alt: 0px !important;
    padding-right: 20px !important;
    mso-padding-right-alt: 20px !important;
  }

  .no-pad-for-small table th {
    padding-left: 0px !important;
    mso-padding-left-alt: 0px !important;
    padding-right: 0px !important;
    mso-padding-right-alt: 0px !important;
  }

  .large-pad-left table th {
    padding-left: 0px !important;
    mso-padding-left-alt: 0px !important;
  }

  .large-pad-right table th {
    padding-right: 0px !important;
    mso-padding-right-alt: 0px !important;
  }

  .max-width img {
    height: auto !important;
    width: 100% !important;
    max-width: 100% !important;
  }
}

@media only screen and (max-width: 888px) {
  .max-width img {
    height: auto !important;
    width: 100% !important;
    max-width: 100% !important;
  }
}

@media only screen and (max-width: 640px) {
  .button {
    min-width: 132px !important;
  }
}

@media only screen and (max-width: 640px) {
  .standard-table td {
    padding-bottom: 5px !important;
    mso-padding-bottom-alt: 5px !important;
  }
}

@media only screen and (max-width: 640px) {
  .table-default.table-heading-rows,
  .table-default.table-heading-rows-loop {
    display: table !important;
  }

  .table-default.table-heading-rows th,
  .table-default.table-heading-rows td,
  .table-default.table-heading-rows-loop th,
  .table-default.table-heading-rows-loop td {
    padding: 0 !important;
    mso-padding-alt: 0 !important;
    display: block;
    padding-left: 0 !important;
    padding-right: 0 !important;
    padding-top: 6px !important;
  }

  .table-default.table-heading-rows td,
  .table-default.table-heading-rows-loop td {
    border-top: none !important;
    padding-bottom: 6px !important;
    padding-top: none !important;
  }

  .table-default.table-heading-rows td.wrap-word,
  .table-default.table-heading-rows .code-block td.wrapper-inner,
  .code-block .table-default.table-heading-rows td.wrapper-inner,
  .table-default.table-heading-rows-loop td.wrap-word,
  .table-default.table-heading-rows-loop .code-block td.wrapper-inner,
  .code-block .table-default.table-heading-rows-loop td.wrapper-inner {
    display: block !important;
  }

  .table-default.table-heading-rows th,
  .table-default.table-heading-rows-loop th {
    width: 100% !important;
    padding-bottom: none !important;
    padding-top: 6px !important;
  }

  .table-default.table-heading-rows.no-stack td,
  .table-default.table-heading-rows-loop.no-stack td {
    padding-left: 12px !important;
  }

  .table-default.table-heading-rows.no-stack td.wrap-word,
  .table-default.table-heading-rows.no-stack .code-block td.wrapper-inner,
  .code-block .table-default.table-heading-rows.no-stack td.wrapper-inner,
  .table-default.table-heading-rows-loop.no-stack td.wrap-word,
  .table-default.table-heading-rows-loop.no-stack .code-block td.wrapper-in=
ner,
  .code-block .table-default.table-heading-rows-loop.no-stack td.wrapper-in=
ner {
    display: table-cell;
  }

  .table-default.table-heading-rows.no-stack th,
  .table-default.table-heading-rows-loop.no-stack th {
    width: 1% !important;
    padding-right: 12px !important;
  }

  .table-default.table-heading-rows.no-stack:first-child th,
  .table-default.table-heading-rows.no-stack:first-child td,
  .table-default.table-heading-rows.no-stack .table-heading-rows-loop:first=
-child th,
  .table-default.table-heading-rows.no-stack .table-heading-rows-loop:first=
-child td,
  .table-default.table-heading-rows-loop.no-stack:first-child th,
  .table-default.table-heading-rows-loop.no-stack:first-child td,
  .table-default.table-heading-rows-loop.no-stack .table-heading-rows-loop:=
first-child th,
  .table-default.table-heading-rows-loop.no-stack .table-heading-rows-loop:=
first-child td {
    border-top: none !important;
  }

  .table-default.table-heading-rows.no-stack th,
  .table-default.table-heading-rows.no-stack td,
  .table-default.table-heading-rows-loop.no-stack th,
  .table-default.table-heading-rows-loop.no-stack td {
    display: table-cell !important;
    border-top: solid 1px #dedede !important;
    padding-top: 8px !important;
    mso-padding-top-alt: 8px !important;
    padding-bottom: 8px !important;
    mso-padding-bottom-alt: 8px !important;
  }

  .table-default.table-heading-rows.no-stack.table-heading-rows-loop th,
  .table-default.table-heading-rows.no-stack.table-heading-rows-loop td,
  .table-default.table-heading-rows-loop.no-stack.table-heading-rows-loop t=
h,
  .table-default.table-heading-rows-loop.no-stack.table-heading-rows-loop t=
d {
    border-top: none !important;
  }

  .table-default.table-heading-rows.no-stack.table-heading-rows-loop .table=
-row-loop-start:first-child th,
  .table-default.table-heading-rows.no-stack.table-heading-rows-loop .table=
-row-loop-start:first-child td,
  .table-default.table-heading-rows-loop.no-stack.table-heading-rows-loop .=
table-row-loop-start:first-child th,
  .table-default.table-heading-rows-loop.no-stack.table-heading-rows-loop .=
table-row-loop-start:first-child td {
    border-top: none !important;
  }

  .table-default.table-heading-rows.no-stack.table-heading-rows-loop .table=
-row-loop-start th,
  .table-default.table-heading-rows.no-stack.table-heading-rows-loop .table=
-row-loop-start td,
  .table-default.table-heading-rows-loop.no-stack.table-heading-rows-loop .=
table-row-loop-start th,
  .table-default.table-heading-rows-loop.no-stack.table-heading-rows-loop .=
table-row-loop-start td {
    border-top: solid 1px #dedede !important;
  }
}

@media only screen and (max-width: 640px) {
  .power-bi.container-mooncake .header-section img {
    height: auto !important;
    max-height: 16px;
    max-width: 100%;
  }
}</style>

    <!--[if gte (gte mso 9)|(IE)]>
        <xml>
            <o:OfficeDocumentSettings>
            <o:AllowPNG/>
            <o:PixelsPerInch>96</o:PixelsPerInch>
            </o:OfficeDocumentSettings>
        </xml>
        <style>
            li {
                text-align:-webkit-match-parent;
                display:list-item;
                text-indent: -1em;
            }

            .alert span,
            .arrow-link,
            b,
            h1,
            h2,
            h3,
            h4,
            h5,
            .heading-group th,
            strong,
            .card-table th,
            .header-right-column,
            .styled-table th,
            .styled-table td,
            .text-heading1,
            .text-heading2,
            .text-heading3,
            .text-heading4,
            .text-heading5,
            .text-bold,
            table.button a,
            .wrapper-inner a,
            .wrapper-inner p {
                font-weight: 400 !important;
            }
        </style>
    <![endif]-->
</head>



<body class=3D" ltr " dir=3D"ltr" style=3D"width: 100%;min-width: 100%;-web=
kit-text-size-adjust: 100%;-ms-text-size-adjust: 100%;padding: 0;-moz-box-s=
izing: border-box;-webkit-box-sizing: border-box;box-sizing: border-box;col=
or: #11100f;font-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&qu=
ot;, Arial, sans-serif;font-weight: 400;padding-top: 0;padding-right: 0;pad=
ding-bottom: 0;padding-left: 0;Margin: 0;text-align: left;font-size: 14px;l=
ine-height: 20px">
        <div class=3D"preheader" style=3D"display: none;visibility: hidden;=
opacity: 0;color: #f4f4f4;height: 0;width: 0;line-height: 1px;font-size: 1p=
x;max-height: 0;max-width: 0;overflow: hidden;mso-hide: all">Update your pa=
yment method.&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#=
160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160=
;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#=
160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160=
;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#=
160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160=
;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#=
160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160=
;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#=
160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160=
;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#=
160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160=
;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#=
160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160=
;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#=
160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160=
;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#=
160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160=
;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#=
160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160=
;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#=
160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160=
;</div>
    <table role=3D"presentation" class=3D"body " data-made-with-foundation=
=3D"data-made-with-foundation" style=3D"border-spacing: 0;border-collapse: =
collapse;vertical-align: top;mso-table-lspace: -1pt;mso-table-rspace: -1pt;=
background: #ffffff;height: 100%;width: 100%;color: #11100f;font-family: Se=
goe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font=
-weight: 400;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left=
: 0;Margin: 0;text-align: left;font-size: 14px;line-height: 20px">
        <tbody><tr style=3D"padding-top: 0;padding-right: 0;padding-bottom:=
 0;padding-left: 0;vertical-align: top;text-align: left">
            <td class=3D"float-center" align=3D"center" valign=3D"top" styl=
e=3D"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;hyphens=
: auto;border-collapse: collapse;vertical-align: top;color: #11100f;font-fa=
mily: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-se=
rif;font-weight: 400;padding-top: 0;padding-right: 0;padding-bottom: 0;padd=
ing-left: 0;font-size: 14px;line-height: 20px;Margin: 0 auto;float: none;te=
xt-align: center">
                <center class=3D"main-container" style=3D"width: 100%;min-w=
idth: 640px">
                    <table role=3D"presentation" bgcolor=3D"#ffffff" align=
=3D"center" class=3D"float-center" style=3D"border-spacing: 0;border-collap=
se: collapse;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left=
: 0;vertical-align: top;mso-table-lspace: -1pt;mso-table-rspace: -1pt;Margi=
n: 0 auto;float: none;text-align: center">
                        <tbody><tr style=3D"padding-top: 0;padding-right: 0=
;padding-bottom: 0;padding-left: 0;vertical-align: top;text-align: left">
                            <td style=3D"word-wrap: break-word;-webkit-hyph=
ens: auto;-moz-hyphens: auto;hyphens: auto;border-collapse: collapse;vertic=
al-align: top;color: #11100f;font-family: Segoe UI, SegoeUI, Roboto, &quot;=
Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;padding-top: 0;pad=
ding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0;text-align: left;=
font-size: 14px;line-height: 20px">
                               =20


<table role=3D"presentation" dir=3D"ltr" align=3D"center" class=3D"containe=
r header-container section" style=3D"border-spacing: 0;border-collapse: col=
lapse;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;ver=
tical-align: top;mso-table-lspace: -1pt;mso-table-rspace: -1pt;background: =
#ffffff;width: 640px;Margin: 0 auto;text-align: inherit"><tbody><tr style=
=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;verti=
cal-align: top;text-align: left"><td style=3D"word-wrap: break-word;-webkit=
-hyphens: auto;-moz-hyphens: auto;hyphens: auto;border-collapse: collapse;v=
ertical-align: top;color: #11100f;font-family: Segoe UI, SegoeUI, Roboto, &=
quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;padding-top: =
0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0;text-align: =
left;font-size: 14px;line-height: 20px">
    <table role=3D"presentation" align=3D"left" class=3D"wrapper outer-wrap=
per text-left" style=3D"border-spacing: 0;border-collapse: collapse;padding=
-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: =
top;mso-table-lspace: -1pt;mso-table-rspace: -1pt;width: 100%;text-align: l=
eft"><tbody><tr style=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;=
padding-left: 0;vertical-align: top;text-align: left"><td class=3D"wrapper-=
inner" style=3D"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: a=
uto;hyphens: auto;border-collapse: collapse;vertical-align: top;color: #111=
00f;font-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Ari=
al, sans-serif;font-weight: 400;padding-right: 0;padding-left: 0;Margin: 0;=
text-align: left;font-size: 14px;line-height: 20px;padding-top: 0;mso-paddi=
ng-top-alt: 0;padding-bottom: 0;mso-padding-bottom-alt: 0">
        <table role=3D"presentation" align=3D"left" class=3D"row header-sec=
tion text-left" style=3D"border-spacing: 0;border-collapse: collapse;paddin=
g-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align:=
 top;mso-table-lspace: -1pt;mso-table-rspace: -1pt;padding: 0;width: 100%;p=
osition: relative;text-align: left;display: table"><tbody><tr style=3D"padd=
ing-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-alig=
n: top;text-align: left">
            <th class=3D"text-left small-12 large-12 columns first last" al=
ign=3D"left" style=3D"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyph=
ens: auto;hyphens: auto;border-collapse: collapse;vertical-align: top;color=
: #11100f;font-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot=
;, Arial, sans-serif;font-weight: 400;font-size: 14px;line-height: 20px;Mar=
gin: 0 auto;width: 616px;text-align: left;padding-left: 24px;padding-right:=
 24px;padding-top: 24px;mso-padding-top-alt: 24px;padding-bottom: 24px;mso-=
padding-bottom-alt: 24px"><table role=3D"presentation" style=3D"border-spac=
ing: 0;border-collapse: collapse;padding-top: 0;padding-right: 0;padding-bo=
ttom: 0;padding-left: 0;vertical-align: top;text-align: left;mso-table-lspa=
ce: -1pt;mso-table-rspace: -1pt;width: 100%"><tbody><tr style=3D"padding-to=
p: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top=
;text-align: left"><th style=3D"word-wrap: break-word;-webkit-hyphens: auto=
;-moz-hyphens: auto;hyphens: auto;border-collapse: collapse;vertical-align:=
 top;color: #11100f;font-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica=
 Neue&quot;, Arial, sans-serif;font-weight: 400;padding-top: 0;padding-righ=
t: 0;padding-bottom: 0;padding-left: 0;Margin: 0;text-align: left;font-size=
: 14px;line-height: 20px">
                <img height=3D"20" width=3D"auto" src=3D"https://secure-web=
.cisco.com/1jiBxrTVgzawNY1mYbqRwyQeyKlXQ7fMYfuX7LqADh2AG8EN_SpDaDCWoxkC9O4O=
Mwnc92oRvfrqxGAWXVTynNbAzakBaORRzACUB5CEI7krGLM8Inwapfp7qTGuDpNbaiByJ4RRM1Z=
LPHNXS3hvDUM9-4ptdSJ75zXTH5wAD-Iz0pFWA3H1eNrh4grd0STd2Yu6yQJLoltMBIgh8Ta9DT=
j5kZvJtIA6bMO2Ix988gfVe3USSqzbTAg8zUj2U92k7JBeGLpdjDATof9T0SVgt83L0C98GjyCm=
c7pHP2WA2K32g4nsLns_-2JbkriCbRZn5lkVsv4MfUArZnBpni-tfZt21ySvGCNiMT2IJKttECG=
G2B5pav9s40i-seRjtOTJiXzT5D-iU1I1aYvDWTxnCriXkiBTjzmp4zw6vRvpr7ERRRH82eJcml=
y8HWQRxMW9xWy-ZEiZarKPly8HEjdTQg/https%3A%2F%2Fimages.ecomm.microsoft.com%2=
Fcdn%2Fmediahandler%2Fazure-emails-templates%2Fproduction%2Fshared%2Fimages=
%2Ftemplates%2Fshared%2Fmicrosoft-2x.png" alt=3D"Microsoft" title=3D"Micros=
oft" class=3D"logo-microsoft text-left" style=3D"outline: none;text-decorat=
ion: none;-ms-interpolation-mode: bicubic;max-width: 100%;clear: both;displ=
ay: block;height: 20px;max-height: 20px;width: auto">
            </th>
<th class=3D"expander" style=3D"word-wrap: break-word;-webkit-hyphens: auto=
;-moz-hyphens: auto;hyphens: auto;border-collapse: collapse;vertical-align:=
 top;color: #11100f;font-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica=
 Neue&quot;, Arial, sans-serif;font-weight: 400;padding-top: 0;padding-righ=
t: 0;padding-bottom: 0;padding-left: 0;Margin: 0;text-align: left;font-size=
: 14px;line-height: 20px;visibility: hidden;width: 0;padding: 0"></th></tr>=
</tbody></table></th>
        </tr></tbody></table>
    </td></tr></tbody></table>
</td></tr></tbody></table>







<table role=3D"presentation" align=3D"center" class=3D"container template-c=
ontainer section" style=3D"border-spacing: 0;border-collapse: collapse;padd=
ing-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-alig=
n: top;mso-table-lspace: -1pt;mso-table-rspace: -1pt;background: #ffffff;wi=
dth: 640px;Margin: 0 auto;text-align: inherit"><tbody><tr style=3D"padding-=
top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: t=
op;text-align: left"><td style=3D"word-wrap: break-word;-webkit-hyphens: au=
to;-moz-hyphens: auto;hyphens: auto;border-collapse: collapse;vertical-alig=
n: top;color: #11100f;font-family: Segoe UI, SegoeUI, Roboto, &quot;Helveti=
ca Neue&quot;, Arial, sans-serif;font-weight: 400;padding-top: 0;padding-ri=
ght: 0;padding-bottom: 0;padding-left: 0;Margin: 0;text-align: left;font-si=
ze: 14px;line-height: 20px">
    <table role=3D"presentation" class=3D"wrapper outer-wrapper" align=3D"c=
enter" style=3D"border-spacing: 0;border-collapse: collapse;padding-top: 0;=
padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;text=
-align: left;mso-table-lspace: -1pt;mso-table-rspace: -1pt;width: 100%"><tb=
ody><tr style=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;padding-=
left: 0;vertical-align: top;text-align: left"><td class=3D"wrapper-inner" s=
tyle=3D"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;hyph=
ens: auto;border-collapse: collapse;vertical-align: top;color: #11100f;font=
-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans=
-serif;font-weight: 400;padding-right: 0;padding-left: 0;Margin: 0;text-ali=
gn: left;font-size: 14px;line-height: 20px;padding-bottom: 12px;mso-padding=
-bottom-alt: 12px;padding-top: 6px;mso-padding-top-alt: 6px">
        <center style=3D"width: 100%;min-width: 640px">
            <table role=3D"presentation" align=3D"center" class=3D"row floa=
t-center" style=3D"border-spacing: 0;border-collapse: collapse;padding-top:=
 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;m=
so-table-lspace: -1pt;mso-table-rspace: -1pt;padding: 0;width: 100%;positio=
n: relative;Margin: 0 auto;float: none;text-align: center;display: table"><=
tbody><tr style=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;paddin=
g-left: 0;vertical-align: top;text-align: left">
                <th class=3D"small-12 large-12 columns first last" style=3D=
"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;hyphens: au=
to;border-collapse: collapse;vertical-align: top;color: #11100f;font-family=
: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;=
font-weight: 400;text-align: left;font-size: 14px;line-height: 20px;Margin:=
 0 auto;width: 616px;padding-bottom: 12px;mso-padding-bottom-alt: 12px;padd=
ing-left: 24px;padding-right: 24px;padding-top: 6px;mso-padding-top-alt: 6p=
x"><table role=3D"presentation" style=3D"border-spacing: 0;border-collapse:=
 collapse;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0=
;vertical-align: top;text-align: left;mso-table-lspace: -1pt;mso-table-rspa=
ce: -1pt;width: 100%"><tbody><tr style=3D"padding-top: 0;padding-right: 0;p=
adding-bottom: 0;padding-left: 0;vertical-align: top;text-align: left"><th =
style=3D"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;hyp=
hens: auto;border-collapse: collapse;vertical-align: top;color: #11100f;fon=
t-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, san=
s-serif;font-weight: 400;padding-top: 0;padding-right: 0;padding-bottom: 0;=
padding-left: 0;Margin: 0;text-align: left;font-size: 14px;line-height: 20p=
x">
                    <h1 style=3D"padding-top: 0;padding-right: 0;padding-bo=
ttom: 0;padding-left: 0;Margin: 0;text-align: left;color: inherit;Margin-bo=
ttom: 16px;-webkit-hyphens: none;-moz-hyphens: none;-ms-hyphens: none;hyphe=
ns: none;letter-spacing: -.01em;font-family: Segoe UI Semibold, SegoeUISemi=
bold, Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-se=
rif;font-weight: 600;font-size: 28px;line-height: 36px;mso-line-height-alt:=
 36px;word-wrap: normal;-webkit-text-size-adjust: none">Pay your balance in=
 the Microsoft 365 admin centre</h1>
                        <p style=3D"color: #11100f;font-family: Segoe UI, S=
egoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: =
400;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margi=
n: 0;text-align: left;font-size: 16px;line-height: 22px;mso-line-height-alt=
: 22px;word-wrap: normal;-webkit-text-size-adjust: none;Margin-bottom: 12px=
;mso-margin-bottom-alt: 12px">The credit card you used to purchase Power BI=
 Pro was declined. To avoid service disruption, go to the Microsoft 365 adm=
in centre and verify your payment information. Check your card number, CVV =
number, PIN, and expiration date and then retry your payment.</p>
                            <p style=3D"color: #11100f;font-family: Segoe U=
I, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weig=
ht: 400;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;M=
argin: 0;text-align: left;font-size: 16px;line-height: 22px;mso-line-height=
-alt: 22px;word-wrap: normal;-webkit-text-size-adjust: none;Margin-bottom: =
0;mso-margin-bottom-alt: 0">Another reason for the card decline could be re=
cent changes in bank regulations for automatic recurring transactions. Due =
to these changes, you need to sign in to make your payment from the Microso=
ft 365 admin centre.</p>
                </th>
<th class=3D"expander" style=3D"word-wrap: break-word;-webkit-hyphens: auto=
;-moz-hyphens: auto;hyphens: auto;border-collapse: collapse;vertical-align:=
 top;color: #11100f;font-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica=
 Neue&quot;, Arial, sans-serif;font-weight: 400;padding-top: 0;padding-righ=
t: 0;padding-bottom: 0;padding-left: 0;Margin: 0;text-align: left;font-size=
: 14px;line-height: 20px;visibility: hidden;width: 0;padding: 0"></th></tr>=
</tbody></table></th>
            </tr></tbody></table>
            <table role=3D"presentation" align=3D"center" class=3D"row floa=
t-center" style=3D"border-spacing: 0;border-collapse: collapse;padding-top:=
 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;m=
so-table-lspace: -1pt;mso-table-rspace: -1pt;padding: 0;width: 100%;positio=
n: relative;Margin: 0 auto;float: none;text-align: center;display: table"><=
tbody><tr style=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;paddin=
g-left: 0;vertical-align: top;text-align: left">
                <th class=3D"small-12 large-12 columns first last" style=3D=
"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;hyphens: au=
to;border-collapse: collapse;vertical-align: top;color: #11100f;font-family=
: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;=
font-weight: 400;text-align: left;font-size: 14px;line-height: 20px;Margin:=
 0 auto;width: 616px;padding-top: 12px;mso-padding-top-alt: 12px;padding-bo=
ttom: 12px;mso-padding-bottom-alt: 12px;padding-left: 24px;padding-right: 2=
4px"><table role=3D"presentation" style=3D"border-spacing: 0;border-collaps=
e: collapse;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left:=
 0;vertical-align: top;text-align: left;mso-table-lspace: -1pt;mso-table-rs=
pace: -1pt;width: 100%"><tbody><tr style=3D"padding-top: 0;padding-right: 0=
;padding-bottom: 0;padding-left: 0;vertical-align: top;text-align: left"><t=
h style=3D"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;h=
yphens: auto;border-collapse: collapse;vertical-align: top;color: #11100f;f=
ont-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, s=
ans-serif;font-weight: 400;padding-top: 0;padding-right: 0;padding-bottom: =
0;padding-left: 0;Margin: 0;text-align: left;font-size: 14px;line-height: 2=
0px">
                    <table role=3D"presentation" class=3D"button" style=3D"=
border-spacing: 0;border-collapse: collapse;padding-top: 0;padding-right: 0=
;padding-bottom: 0;padding-left: 0;vertical-align: top;text-align: left;mso=
-table-lspace: -1pt;mso-table-rspace: -1pt;Margin: 0;width: auto"><tbody><t=
r style=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: =
0;vertical-align: top;text-align: left"><td style=3D"word-wrap: break-word;=
-webkit-hyphens: auto;-moz-hyphens: auto;hyphens: auto;border-collapse: col=
lapse;vertical-align: top;color: #11100f;font-family: Segoe UI, SegoeUI, Ro=
boto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;paddin=
g-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0;text-=
align: left;font-size: 14px;line-height: 20px"><table role=3D"presentation"=
 style=3D"border-spacing: 0;border-collapse: collapse;padding-top: 0;paddin=
g-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;text-align=
: left;mso-table-lspace: -1pt;mso-table-rspace: -1pt;width: 100%"><tbody><t=
r style=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: =
0;vertical-align: top;text-align: left"><td style=3D"word-wrap: break-word;=
-webkit-hyphens: auto;-moz-hyphens: auto;hyphens: auto;border-collapse: col=
lapse;vertical-align: top;font-family: Segoe UI, SegoeUI, Roboto, &quot;Hel=
vetica Neue&quot;, Arial, sans-serif;font-weight: 400;padding-top: 0;paddin=
g-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0;font-size: 14px;line=
-height: 20px;color: #ffffff;background: #0078d4;border: 0;border-radius: 2=
px;text-align: center"><a href=3D"https://secure-web.cisco.com/1O2tDdiGDyhF=
0CsJd55gZXsqDsQ10mmjLjDaZa7UYXSkAhbvq9lgwoeRdtAu5Sz1y1O2KOuI8Gg7hAk-w_oo1Q9=
UuJBPq1tGn-L-ANVIPpLH3I42YXuOrTGukdy_x9Y18gsrp8J6xtHuU6LypB7lm7T7cE52GAVQIV=
4yQqENhC9txe8GFMSehaqlrK1RYdNiwyi1Vl5a3tLQt1DcyZeR8ig82PrG2k7NLI2e3eMa9CHpb=
7CEeSMEphs2lWGmgN9k4FbUkhZrZ57AXSBa-KxpnkO4Ka-0UJj93CmcAD0LUtVCbR2oFeWnJSQK=
CS6kFbFkzS0WP5E_Y1GiKRGb7nTlegdqIHfid5VfQRUdcr4B23zRhnGfzmfyG3pRgPNB9tK6-VU=
5m1nzies-aGHK4Bcpvd7Pk0Ce2nppCpi3MSUTGzUDEFcNcd18CtGrpRN5nz1oEnaYmez1yDOvGD=
xsxS84SzA/https%3A%2F%2Femails.azure.microsoft.com%2Fredirect%2F%3Fdestinat=
ion%3Dhttps%253A%252F%252Fadmin.microsoft.com%252FAdminPortal%252FHome%253F=
lastFourDigits%253D0385%2523%252FPaymentMethods%26p%3DbT1iZTJlZDcwNC0yMzZiL=
TQ2OWUtOTQwNC05ZjRjYjAxMTg2M2Ymcz0wMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwMDAw=
MDAwMDAmdT1hZW8mbD1Ib21l" style=3D"text-underline: none;mso-text-underline:=
 none;font-size: 16px;color: #ffffff;text-decoration: none;text-align: left=
;display: inline-block;padding: 12px 16px 12px 16px;border: 0 solid #0078d4=
;border-radius: 2px;line-height: 1;mso-border-alt: 8px solid #0078d4;mso-pa=
dding-alt: 0;font-family: Segoe UI Semibold, SegoeUISemibold, Segoe UI, Seg=
oeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 60=
0">Verify payment information &gt;</a></td></tr></tbody></table></td></tr><=
/tbody></table>
                </th>
<th class=3D"expander" style=3D"word-wrap: break-word;-webkit-hyphens: auto=
;-moz-hyphens: auto;hyphens: auto;border-collapse: collapse;vertical-align:=
 top;color: #11100f;font-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica=
 Neue&quot;, Arial, sans-serif;font-weight: 400;padding-top: 0;padding-righ=
t: 0;padding-bottom: 0;padding-left: 0;Margin: 0;text-align: left;font-size=
: 14px;line-height: 20px;visibility: hidden;width: 0;padding: 0"></th></tr>=
</tbody></table></th>
            </tr></tbody></table>
            <table role=3D"presentation" align=3D"center" class=3D"row floa=
t-center" style=3D"border-spacing: 0;border-collapse: collapse;padding-top:=
 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;m=
so-table-lspace: -1pt;mso-table-rspace: -1pt;padding: 0;width: 100%;positio=
n: relative;Margin: 0 auto;float: none;text-align: center;display: table"><=
tbody><tr style=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;paddin=
g-left: 0;vertical-align: top;text-align: left">
                <th class=3D"small-12 large-12 columns first last" style=3D=
"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;hyphens: au=
to;border-collapse: collapse;vertical-align: top;color: #11100f;font-family=
: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;=
font-weight: 400;text-align: left;font-size: 14px;line-height: 20px;Margin:=
 0 auto;width: 616px;padding-top: 12px;mso-padding-top-alt: 12px;padding-bo=
ttom: 12px;mso-padding-bottom-alt: 12px;padding-left: 24px;padding-right: 2=
4px"><table role=3D"presentation" style=3D"border-spacing: 0;border-collaps=
e: collapse;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left:=
 0;vertical-align: top;text-align: left;mso-table-lspace: -1pt;mso-table-rs=
pace: -1pt;width: 100%"><tbody><tr style=3D"padding-top: 0;padding-right: 0=
;padding-bottom: 0;padding-left: 0;vertical-align: top;text-align: left"><t=
h style=3D"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;h=
yphens: auto;border-collapse: collapse;vertical-align: top;color: #11100f;f=
ont-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, s=
ans-serif;font-weight: 400;padding-top: 0;padding-right: 0;padding-bottom: =
0;padding-left: 0;Margin: 0;text-align: left;font-size: 14px;line-height: 2=
0px">
                    <p style=3D"color: #11100f;font-family: Segoe UI, Segoe=
UI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;=
padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0=
;text-align: left;font-size: 16px;line-height: 22px;mso-line-height-alt: 22=
px;word-wrap: normal;-webkit-text-size-adjust: none;Margin-bottom: 12px;mso=
-margin-bottom-alt: 12px">If you continue to have a problem, you may need t=
o contact your bank.</p>
                    <p style=3D"color: #11100f;font-family: Segoe UI, Segoe=
UI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;=
padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0=
;text-align: left;font-size: 16px;line-height: 22px;mso-line-height-alt: 22=
px;word-wrap: normal;-webkit-text-size-adjust: none;Margin-bottom: 12px;mso=
-margin-bottom-alt: 12px">If you've already updated your payment informatio=
n or paid your bill, disregard this email.</p>
                    <p style=3D"color: #11100f;font-family: Segoe UI, Segoe=
UI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;=
padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0=
;text-align: left;font-size: 16px;line-height: 22px;mso-line-height-alt: 22=
px;word-wrap: normal;-webkit-text-size-adjust: none;Margin-bottom: 0;mso-ma=
rgin-bottom-alt: 0"><a href=3D"https://secure-web.cisco.com/1p76tsP2mZn2Yt-=
x7J2bXfS76EBQtISLHZUgW_37UB3mnaLqMkC3g22zZ-cEfdNpTu5BjRIB2_VNYeKJHAMJ7HHGkB=
XcEMXN2_u9rBMHA0k71F7hMYc_RkuaazsZxPGlumNcDBNcj0A42jMSoah3L0SOlUcVi293lFaAq=
JW_egDBJ0hU_d2H6JLC_LhKCE_JDIQRhGxPBrQPEvP9GkANUEfOUDLUNXCY5ZM210-_7I2t3yIs=
odWDJgrdEXp3WMDNtiW8cPYF0SZ-ZGFuhgdugc5FInhsjRtybNSZJBkKKzkXIJW0GF0iwCokyXn=
FJy7Neb6y20yRDFtrg5J7a6-B8vUMQ9azOLCHVoNu8Y-q0MWZvokV5rXZ5Dbmhu6EJhuvXZla1y=
5gKxTJCxfqH_BrrgOJPnYqKfmKgPL6YKl2ga9vbRPuPCyac3d7frdNd7lSnnzJm30YXtn9MAzha=
XlfNyg/https%3A%2F%2Femails.azure.microsoft.com%2Fredirect%2F%3Fdestination=
%3Dhttps%253A%252F%252Fdocs.microsoft.com%252Fen-in%252Foffice365%252Fadmin=
%252Fsubscriptions-and-billing%252Fadd-update-or-remove-credit-card-or-bank=
-account%253Fview%253Do365-worldwide%26p%3DbT1iZTJlZDcwNC0yMzZiLTQ2OWUtOTQw=
NC05ZjRjYjAxMTg2M2Ymcz0wMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwMDAwMDAwMDAmdT1=
hZW8mbD1hZGQtdXBkYXRlLW9yLXJlbW92ZS1jcmVkaXQtY2FyZC1vci1iYW5rLWFjY291bnQ%25=
3D" style=3D"color: #0078d4;font-family: Segoe UI, SegoeUI, Roboto, &quot;H=
elvetica Neue&quot;, Arial, sans-serif;font-weight: 400;padding: 0;text-ali=
gn: left;line-height: 20px;text-decoration: none;text-underline: none;mso-t=
ext-underline: none;Margin: inherit;mso-margin-alt: inherit">Learn how to a=
dd or update your payment information &gt;</a></p>
                </th>
<th class=3D"expander" style=3D"word-wrap: break-word;-webkit-hyphens: auto=
;-moz-hyphens: auto;hyphens: auto;border-collapse: collapse;vertical-align:=
 top;color: #11100f;font-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica=
 Neue&quot;, Arial, sans-serif;font-weight: 400;padding-top: 0;padding-righ=
t: 0;padding-bottom: 0;padding-left: 0;Margin: 0;text-align: left;font-size=
: 14px;line-height: 20px;visibility: hidden;width: 0;padding: 0"></th></tr>=
</tbody></table></th>
            </tr></tbody></table>
        </center>
    </td></tr></tbody></table>
    <table role=3D"presentation" class=3D"wrapper outer-wrapper" align=3D"c=
enter" style=3D"border-spacing: 0;border-collapse: collapse;padding-top: 0;=
padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;text=
-align: left;mso-table-lspace: -1pt;mso-table-rspace: -1pt;width: 100%"><tb=
ody><tr style=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;padding-=
left: 0;vertical-align: top;text-align: left"><td class=3D"wrapper-inner" s=
tyle=3D"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;hyph=
ens: auto;border-collapse: collapse;vertical-align: top;color: #11100f;font=
-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans=
-serif;font-weight: 400;padding-right: 0;padding-left: 0;Margin: 0;text-ali=
gn: left;font-size: 14px;line-height: 20px;padding-top: 12px;mso-padding-to=
p-alt: 12px;padding-bottom: 12px;mso-padding-bottom-alt: 12px">
        <center style=3D"width: 100%;min-width: 640px">
            <table role=3D"presentation" align=3D"center" class=3D"row floa=
t-center" style=3D"border-spacing: 0;border-collapse: collapse;padding-top:=
 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;m=
so-table-lspace: -1pt;mso-table-rspace: -1pt;padding: 0;width: 100%;positio=
n: relative;Margin: 0 auto;float: none;text-align: center;display: table"><=
tbody><tr style=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;paddin=
g-left: 0;vertical-align: top;text-align: left">
                <th class=3D"small-12 large-12 columns first last" style=3D=
"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;hyphens: au=
to;border-collapse: collapse;vertical-align: top;color: #11100f;font-family=
: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;=
font-weight: 400;text-align: left;font-size: 14px;line-height: 20px;Margin:=
 0 auto;width: 616px;padding-top: 12px;mso-padding-top-alt: 12px;padding-bo=
ttom: 12px;mso-padding-bottom-alt: 12px;padding-left: 24px;padding-right: 2=
4px"><table role=3D"presentation" style=3D"border-spacing: 0;border-collaps=
e: collapse;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left:=
 0;vertical-align: top;text-align: left;mso-table-lspace: -1pt;mso-table-rs=
pace: -1pt;width: 100%"><tbody><tr style=3D"padding-top: 0;padding-right: 0=
;padding-bottom: 0;padding-left: 0;vertical-align: top;text-align: left"><t=
h style=3D"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;h=
yphens: auto;border-collapse: collapse;vertical-align: top;color: #11100f;f=
ont-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, s=
ans-serif;font-weight: 400;padding-top: 0;padding-right: 0;padding-bottom: =
0;padding-left: 0;Margin: 0;text-align: left;font-size: 14px;line-height: 2=
0px">
                    <h3 style=3D"padding-top: 0;padding-right: 0;padding-bo=
ttom: 0;padding-left: 0;Margin: 0;text-align: left;color: inherit;Margin-bo=
ttom: 16px;font-family: Segoe UI Semibold, SegoeUISemibold, Segoe UI, Segoe=
UI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 600;=
font-size: 20px;line-height: 28px;mso-line-height-alt: 28px;word-wrap: norm=
al;-webkit-text-size-adjust: none">Account information</h3>
                    <p style=3D"color: #11100f;font-family: Segoe UI, Segoe=
UI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;=
padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0=
;text-align: left;font-size: 16px;line-height: 22px;mso-line-height-alt: 22=
px;word-wrap: normal;-webkit-text-size-adjust: none;Margin-bottom: 12px;mso=
-margin-bottom-alt: 12px"><strong style=3D"font-family: Segoe UI Semibold, =
SegoeUISemibold, Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Ari=
al, sans-serif;font-weight: 600">Organisation name :</strong> satragroup.in=
</p>
                    <p style=3D"color: #11100f;font-family: Segoe UI, Segoe=
UI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;=
padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0=
;text-align: left;font-size: 16px;line-height: 22px;mso-line-height-alt: 22=
px;word-wrap: normal;-webkit-text-size-adjust: none;Margin-bottom: 12px;mso=
-margin-bottom-alt: 12px"><strong style=3D"font-family: Segoe UI Semibold, =
SegoeUISemibold, Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Ari=
al, sans-serif;font-weight: 600">Domain :</strong> satragroup.in</p>
                    <p style=3D"color: #11100f;font-family: Segoe UI, Segoe=
UI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;=
padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0=
;text-align: left;font-size: 16px;line-height: 22px;mso-line-height-alt: 22=
px;word-wrap: normal;-webkit-text-size-adjust: none;Margin-bottom: 12px;mso=
-margin-bottom-alt: 12px"><strong style=3D"font-family: Segoe UI Semibold, =
SegoeUISemibold, Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Ari=
al, sans-serif;font-weight: 600">Payment method: :</strong> **** **** **** =
0385</p>
                    <p style=3D"color: #11100f;font-family: Segoe UI, Segoe=
UI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;=
padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0=
;text-align: left;font-size: 16px;line-height: 22px;mso-line-height-alt: 22=
px;word-wrap: normal;-webkit-text-size-adjust: none;Margin-bottom: 12px;mso=
-margin-bottom-alt: 12px"><strong style=3D"font-family: Segoe UI Semibold, =
SegoeUISemibold, Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Ari=
al, sans-serif;font-weight: 600">Subscription name:</strong> Power BI Pro</=
p>
                    <p style=3D"color: #11100f;font-family: Segoe UI, Segoe=
UI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;=
padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0=
;text-align: left;font-size: 16px;line-height: 22px;mso-line-height-alt: 22=
px;word-wrap: normal;-webkit-text-size-adjust: none;Margin-bottom: 12px;mso=
-margin-bottom-alt: 12px"><strong style=3D"font-family: Segoe UI Semibold, =
SegoeUISemibold, Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Ari=
al, sans-serif;font-weight: 600">Start date:</strong> 18 June 2022</p>
                    <p style=3D"color: #11100f;font-family: Segoe UI, Segoe=
UI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;=
padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0=
;text-align: left;font-size: 16px;line-height: 22px;mso-line-height-alt: 22=
px;word-wrap: normal;-webkit-text-size-adjust: none;Margin-bottom: 12px;mso=
-margin-bottom-alt: 12px"><strong style=3D"font-family: Segoe UI Semibold, =
SegoeUISemibold, Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Ari=
al, sans-serif;font-weight: 600">Expiry date :</strong> 18 June 2023</p>
                    <p style=3D"color: #11100f;font-family: Segoe UI, Segoe=
UI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;=
padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0=
;text-align: left;font-size: 16px;line-height: 22px;mso-line-height-alt: 22=
px;word-wrap: normal;-webkit-text-size-adjust: none;Margin-bottom: 0;mso-ma=
rgin-bottom-alt: 0"><strong style=3D"font-family: Segoe UI Semibold, SegoeU=
ISemibold, Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sa=
ns-serif;font-weight: 600">Licences :</strong> 1</p>
                </th>
<th class=3D"expander" style=3D"word-wrap: break-word;-webkit-hyphens: auto=
;-moz-hyphens: auto;hyphens: auto;border-collapse: collapse;vertical-align:=
 top;color: #11100f;font-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica=
 Neue&quot;, Arial, sans-serif;font-weight: 400;padding-top: 0;padding-righ=
t: 0;padding-bottom: 0;padding-left: 0;Margin: 0;text-align: left;font-size=
: 14px;line-height: 20px;visibility: hidden;width: 0;padding: 0"></th></tr>=
</tbody></table></th>
            </tr></tbody></table>
        </center>
    </td></tr></tbody></table>
    <table role=3D"presentation" class=3D"wrapper outer-wrapper divider-lig=
ht-top" align=3D"center" style=3D"border-spacing: 0;border-collapse: collap=
se;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertic=
al-align: top;text-align: left;mso-table-lspace: -1pt;mso-table-rspace: -1p=
t;width: 100%;border-top: 1px solid #eaebec"><tbody><tr style=3D"padding-to=
p: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top=
;text-align: left"><td class=3D"wrapper-inner" style=3D"word-wrap: break-wo=
rd;-webkit-hyphens: auto;-moz-hyphens: auto;hyphens: auto;border-collapse: =
collapse;vertical-align: top;color: #11100f;font-family: Segoe UI, SegoeUI,=
 Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;pad=
ding-right: 0;padding-left: 0;Margin: 0;text-align: left;font-size: 14px;li=
ne-height: 20px;padding-top: 12px;mso-padding-top-alt: 12px;padding-bottom:=
 12px;mso-padding-bottom-alt: 12px">
        <center style=3D"width: 100%;min-width: 640px">
            <table role=3D"presentation" align=3D"center" class=3D"row floa=
t-center" style=3D"border-spacing: 0;border-collapse: collapse;padding-top:=
 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;m=
so-table-lspace: -1pt;mso-table-rspace: -1pt;padding: 0;width: 100%;positio=
n: relative;Margin: 0 auto;float: none;text-align: center;display: table"><=
tbody><tr style=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;paddin=
g-left: 0;vertical-align: top;text-align: left">
                <th class=3D"small-12 large-12 columns first last" style=3D=
"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;hyphens: au=
to;border-collapse: collapse;vertical-align: top;color: #11100f;font-family=
: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;=
font-weight: 400;text-align: left;font-size: 14px;line-height: 20px;Margin:=
 0 auto;width: 616px;padding-top: 12px;mso-padding-top-alt: 12px;padding-bo=
ttom: 12px;mso-padding-bottom-alt: 12px;padding-left: 24px;padding-right: 2=
4px"><table role=3D"presentation" style=3D"border-spacing: 0;border-collaps=
e: collapse;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left:=
 0;vertical-align: top;text-align: left;mso-table-lspace: -1pt;mso-table-rs=
pace: -1pt;width: 100%"><tbody><tr style=3D"padding-top: 0;padding-right: 0=
;padding-bottom: 0;padding-left: 0;vertical-align: top;text-align: left"><t=
h style=3D"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;h=
yphens: auto;border-collapse: collapse;vertical-align: top;color: #11100f;f=
ont-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, s=
ans-serif;font-weight: 400;padding-top: 0;padding-right: 0;padding-bottom: =
0;padding-left: 0;Margin: 0;text-align: left;font-size: 14px;line-height: 2=
0px">
                </th></tr></tbody></table></th>
            </tr></tbody></table>
        </center>
    </td></tr></tbody></table>
</td></tr></tbody></table>



                                <table role=3D"presentation" dir=3D"ltr" al=
ign=3D"center" class=3D"container footer-template" style=3D"border-spacing:=
 0;border-collapse: collapse;padding-top: 0;padding-right: 0;padding-bottom=
: 0;padding-left: 0;vertical-align: top;mso-table-lspace: -1pt;mso-table-rs=
pace: -1pt;background: #ffffff;width: 640px;Margin: 0 auto;text-align: inhe=
rit"><tbody><tr style=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;=
padding-left: 0;vertical-align: top;text-align: left"><td style=3D"word-wra=
p: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;hyphens: auto;border=
-collapse: collapse;vertical-align: top;color: #11100f;font-family: Segoe U=
I, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weig=
ht: 400;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;M=
argin: 0;text-align: left;font-size: 14px;line-height: 20px">
                                    <table role=3D"presentation" class=3D"w=
rapper outer-wrapper footer-wrapper" align=3D"center" style=3D"border-spaci=
ng: 0;border-collapse: collapse;padding-top: 0;padding-right: 0;padding-bot=
tom: 0;padding-left: 0;vertical-align: top;text-align: left;mso-table-lspac=
e: -1pt;mso-table-rspace: -1pt;width: 100%;background-color: #F2F2F2"><tbod=
y><tr style=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;padding-le=
ft: 0;vertical-align: top;text-align: left"><td class=3D"wrapper-inner" sty=
le=3D"word-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;hyphen=
s: auto;border-collapse: collapse;vertical-align: top;color: #11100f;font-f=
amily: Segoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-s=
erif;font-weight: 400;padding-right: 0;padding-left: 0;Margin: 0;text-align=
: left;font-size: 14px;line-height: 20px;padding-top: 12px;mso-padding-top-=
alt: 12px;padding-bottom: 12px;mso-padding-bottom-alt: 12px">
                                        <center style=3D"width: 100%;min-wi=
dth: 640px">
                                           =20
                                           =20

   =20
<table role=3D"presentation" class=3D"row" style=3D"border-spacing: 0;borde=
r-collapse: collapse;padding-top: 0;padding-right: 0;padding-bottom: 0;padd=
ing-left: 0;vertical-align: top;text-align: left;mso-table-lspace: -1pt;mso=
-table-rspace: -1pt;padding: 0;width: 100%;position: relative;display: tabl=
e"><tbody><tr style=3D"padding-top: 0;padding-right: 0;padding-bottom: 0;pa=
dding-left: 0;vertical-align: top;text-align: left">
    <th class=3D"small-12 large-12 columns first last" style=3D"word-wrap: =
break-word;-webkit-hyphens: auto;-moz-hyphens: auto;hyphens: auto;border-co=
llapse: collapse;vertical-align: top;color: #11100f;font-family: Segoe UI, =
SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight:=
 400;text-align: left;font-size: 14px;line-height: 20px;Margin: 0 auto;padd=
ing-left: 24px;padding-right: 24px;padding-top: 12px;mso-padding-top-alt: 1=
2px;padding-bottom: 12px;mso-padding-bottom-alt: 12px;width: auto"><table r=
ole=3D"presentation" style=3D"border-spacing: 0;border-collapse: collapse;p=
adding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-a=
lign: top;text-align: left;mso-table-lspace: -1pt;mso-table-rspace: -1pt;wi=
dth: 100%"><tbody><tr style=3D"padding-top: 0;padding-right: 0;padding-bott=
om: 0;padding-left: 0;vertical-align: top;text-align: left"><th style=3D"wo=
rd-wrap: break-word;-webkit-hyphens: auto;-moz-hyphens: auto;hyphens: auto;=
border-collapse: collapse;vertical-align: top;color: #11100f;font-family: S=
egoe UI, SegoeUI, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;fon=
t-weight: 400;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-lef=
t: 0;Margin: 0;text-align: left;font-size: 14px;line-height: 20px">       =20
        <p class=3D"margin-bottom-0" style=3D"font-family: Segoe UI, SegoeU=
I, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;p=
adding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0;=
text-align: left;word-wrap: normal;-webkit-text-size-adjust: none;Margin-bo=
ttom: 0px;mso-margin-bottom-alt: 0px;font-size: 12px;line-height: 16px;mso-=
line-height-alt: 16px;color: #484644">

            <a href=3D"https://secure-web.cisco.com/1twoMeB7vPyt1tV_O6uEupk=
X222DgZvsW-NJ82vjdcjYDNjR7NbpVMJynBvsq-mdNzwoimwQf3SYEpXDXd8R4yOAx3YEaSio6A=
RIudRQULghCYJ6Ds1-jkSJlWa_bNA36o6dpuRzEmVkQEh0g18LWdT6DKP8kaB80_goBMV_1Mund=
BSdy6DuvArBOD5hhBPWrAeXyqtgD8HpLkEk_dgIyCkrhFClNtd1w33D7CLrxSYLRW5as9lz7kHI=
DjFyo5ocxnUJUF-Tw1XM_UUIqDHoJxw_z9xhLTyz3JewNdHGnJ12ccWL1kNuUtnSFDBeu8WZXiR=
0UOYb-Oz_nlJtNtYUAABnJlqjznTuW0mQenQusOoAZg729bDQJ6QtA3iC6VGihfN90oJo3hppCH=
359sDMn7lJRwfcwmDjgvbSmwdO1UbM1Z4iz9L1rkx0_L9-MjzPFyjds5ib-dZg355bxgDRQ8g/h=
ttps%3A%2F%2Femails.azure.microsoft.com%2Fredirect%2F%3Fdestination%3Dhttps=
%253A%252F%252Fgo.microsoft.com%252Ffwlink%252F%253FLinkId%253D521839%26p%3=
DbT1iZTJlZDcwNC0yMzZiLTQ2OWUtOTQwNC05ZjRjYjAxMTg2M2Ymcz0wMDAwMDAwMC0wMDAwLT=
AwMDAtMDAwMC0wMDAwMDAwMDAwMDAmdT1hZW8mbD1wcml2YWN5LXN0YXRlbWVudA%253D%253D"=
 title=3D"Privacy Statement" style=3D"font-family: Segoe UI, SegoeUI, Robot=
o, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;padding: =
0;text-align: left;line-height: 20px;color: #484644;display: inline-block;t=
ext-decoration: underline;text-underline: single">Privacy Statement</a>    =
       =20
        </p>
        <p class=3D"margin-top-8" style=3D"font-family: Segoe UI, SegoeUI, =
Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif;font-weight: 400;padd=
ing-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;Margin: 0;tex=
t-align: left;Margin-bottom: 12px;word-wrap: normal;-webkit-text-size-adjus=
t: none;Margin-top: 8px;mso-margin-top-alt: 8px;font-size: 12px;line-height=
: 16px;mso-line-height-alt: 16px;color: #484644">Microsoft Corporation, <sp=
an class=3D"no-wrap" style=3D"display: inline-block;word-break: keep-all;hy=
phens: none">One Microsoft Way, Redmond, WA 98052</span></p>
        <img height=3D"20" width=3D"auto" class=3D"logo-microsoft" src=3D"h=
ttps://secure-web.cisco.com/1K0MjQhG5eQU1bUYQLqsjJOXpzDYmXATNMts9q1NEsqlOZ8=
ns2NWMWaR5ozhwxFJCyrL9IQPDC13rNsQmk5__HZM4NOd099T8SgFXdrEPvC33_0NFlCMHqFfAg=
3lY9Ip6Ge93kQQ25HcbYVdnh8WnMK8TwQAZ988Q1KQ7hq0g13gtVFo0q6Tg4-JgYS33Q2NESZJo=
12SjnehyJwIUsFO9kYvKu_yVjyV7EEUd9VXMhRxT9D4hizJYemM0VtZGyydg5eSkHM0mRohvEcG=
MWUB7QK8T69r9DVIEcjxQ9w9ellUXfj67YvdbY4woeduDB0qdMQe3ks4DCNTnY3UNXG3rTyqYwR=
zWspQoS_b-G_zW04SKYcCHrCfTvEMEZRdrIg2oow5-Wo4q5pwb0_POL2yTY-0ft27_9ZdBudVCN=
YZbL5f09GjFsWZ29DgliqOni2FAare_XYYjV_T2aDfzc1K53A/https%3A%2F%2Fimages.ecom=
m.microsoft.com%2Fcdn%2Fmediahandler%2Fazure-emails-templates%2Fproduction%=
2Fshared%2Fimages%2Ftemplates%2Fshared%2Fimages%2Flogos%2Fmicrosoft-logo-2x=
.png" alt=3D"Microsoft" title=3D"Microsoft" style=3D"outline: none;text-dec=
oration: none;-ms-interpolation-mode: bicubic;max-width: 100%;clear: both;d=
isplay: block;height: 20px;max-height: 20px;width: auto">
    </th>
<th class=3D"expander" style=3D"word-wrap: break-word;-webkit-hyphens: auto=
;-moz-hyphens: auto;hyphens: auto;border-collapse: collapse;vertical-align:=
 top;color: #11100f;font-family: Segoe UI, SegoeUI, Roboto, &quot;Helvetica=
 Neue&quot;, Arial, sans-serif;font-weight: 400;padding-top: 0;padding-righ=
t: 0;padding-bottom: 0;padding-left: 0;Margin: 0;text-align: left;font-size=
: 14px;line-height: 20px;visibility: hidden;width: 0;padding: 0"></th></tr>=
</tbody></table></th>
</tr></tbody></table>

                                        </center>
                                    </td></tr></tbody></table>
                                </td></tr></tbody></table>
                            </td>
                        </tr>
                    </tbody></table>
                </center>
            </td>
        </tr>
    </tbody></table>
        <img height=3D"" width=3D"auto" src=3D"https://secure-web.cisco.com=
/1kRikSb0DM7y-mUAUtTmZV1elEOcPwAOVjFgA86jERy0MfBBMLn8c90MwDspDOOkwh0HTwAkWr=
FF2lu8iDGkUpLQJNFtaEDq7uf86y-jMk4Ta2hBYMUUrarLoPWzk2WOHoSHmvQT0QMBePh14kx6b=
PaaScCXn3T37LZPDUNH7DZvz9ZL4JBwLPohr2Oxk-YIPXjnLXt1tQAs1Li12avLpDKkxc3EsuGo=
iQWLcHXb3wJcVdaOYIynoKC2jHonWdSpqLJTOgrkP-FYBw1CXt77toSnU85DSfEZupNLtJkzN5g=
iY_PjnuAKyZ2oKRKZJ-dGhr_DVbxuLUPbSO5WpbIRVP5YjMZZHipsvwfex0CBI5bWaeVo--3Jsk=
5R1BxklrkDcmZGJENYVpJNEVycjD_FTg6vQbAmIJpwHyu_CZTec67mGP4KxC5zM5OEIZHCwBIOj=
Td09vUhy0y5R3vl2A_cXiA/https%3A%2F%2Femails.azure.microsoft.com%2Ftrackingp=
ixel%2F%3Fp%3DbT1iZTJlZDcwNC0yMzZiLTQ2OWUtOTQwNC05ZjRjYjAxMTg2M2Ymcz0wMDAwM=
DAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwMDAwMDAwMDAmdT1hZW8%253D" alt=3D"" role=3D"p=
resentation" style=3D"outline: none;text-decoration: none;-ms-interpolation=
-mode: bicubic;width: auto;max-width: 100%;clear: both;display: block">
   =20

</body></html>
--=-VPAB+L7lJJY+lIDXX4dVhg==--
