X-Qmail-Scanner-Diagnostics: from 192.168.8.22 by vdvm34.logix.local (envelope-from <noreply@github.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.8.22):SA:0(IronPort):.  Processed in 0.031148 secs); 07 Sep 2022 15:34:44 -0000
Received-SPF: Pass (tblr2.logix.in: domain of noreply@github.com  designates 192.30.252.200 as permitted sender)  identity=mailfrom; client-ip=192.30.252.200;  receiver=tblr2.logix.in; envelope-from="noreply@github.com";  x-sender="noreply@github.com"; x-conformance=spf_only;  x-record-type="v=spf1"; x-record-text="v=spf1  ip4:192.30.252.0/22 include:_netblocks.google.com  include:_netblocks2.google.com include:_netblocks3.google.com  include:spf.protection.outlook.com include:mail.zendesk.com  include:_spf.salesforce.com include:servers.mcsv.net  ip4:166.78.69.169 ip4:166.78.69.170 ip4:166.78.71.131  ip4:167.89.101.2 ip4:167.89.101.192/28 ip4:192.254.112.60  ip4:192.254.112.98/31 ip4:192.254.113.10 ip4:192.254.113.101  ip4:192.254.114.176 ip4:62.253.227.114 ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@smtp.github.com) identity=helo;  client-ip=192.30.252.200; receiver=tblr2.logix.in;  envelope-from="noreply@github.com";  x-sender="postmaster@smtp.github.com"; x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=noreply@github.com; spf=None smtp.helo=postmaster@smtp.github.com; dkim=pass (signature verified) header.i=@github.com; dmarc=pass (p=reject dis=none) d=github.com
IronPort-SDR: ikb0B89MQAYUIKG5LmNThS0O37nJvzke7oEX8WVfHt3WPx6UTlKe0ouHkSCNyN9kKvDGr2CneO KwC6oKT4V4tvQ080UrdJi92pp4J83lnSk=
X-ORIGINAL-IP: 192.30.252.200
X-ORIGINAL-TIME: 07 Sep 2022 21:04:43 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:W/mni656eoIE2EY0fwPXwUiBI+orL9Y04lQ7vn2ZFiY4TiXIra 2TdaogvyMc0AxhIE3I6urwQ5VoIEmsvaKdjrNhWYtKMDOGhILsFvAa0WKA+UyqJ8SdzJ876U 4IScEXY7KfMbE5t7ed3ODRKadk/DDtytHKuQ6q9QYJcegcUdAD0+4WMGamO3wzYDMDKYsyFZ Ka6MYCjSGnY24rYsOyAWRAd/TfpvXQ/aiWKyIuNloC0k2jnDmo4Ln1H1yzxREFSQ5Cxr8k7C zsjxH53KO+qPu2oyWsmlM7rq4m1OcJ+OEzSvBkufJlawkETTzYJLiJbofy8wzdZtvfq2rC3u O84SvIdP4DkU85NlvF3CcFnTOQlArGokWStWOwkD/tp9f0Syk9DNcEjYVFcgHB405lp91k1r lXtljpwKa/ICmw6RgV3eK4Iy1Chw6xuz4vgOQTh3tQXc8Xb6JQt5UW+AdQHI0bFCz35Yg7GK 02Zfusrcp+YBefdTTUr2NvyNujUjA6GQqHWFELvoiQ3yJNlH50wkMEzIgUn2sG9pg6V55Yjt 60RJhAhfVLVIsbfKh9DOAOTY++DXHMWwvFNCaILVHuBMg8SgDwQl7MkcYIDc2RCeI1JcEJ6e v8uXtjxB8PUlOrE8eKtac7gizwfA==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,297,1654540200";    d="scan'208,217";a="331687242"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
Received: from noreply@github.com([192.168.1.1]) 	by PME Mail With Id 1662563041698.19084;Wed, 7 Sep 2022 20:34:01 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h32t181oo38e for <helpdesk@satragroup.in>; Wed, 7 Sep 2022 21:04:44 +0530 (envelope-from <noreply@github.com>)
Received: (qmail 189784 invoked by uid 1012); 7 Sep 2022 15:34:44 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.8.22])          (envelope-sender <noreply@github.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 7 Sep 2022 15:34:44 -0000
Received: from out-17.smtp.github.com (HELO smtp.github.com) ([192.30.252.200])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2022 21:04:30 +0530
Received: from github-lowworker-943b171.ac4-iad.github.net (github-lowworker-943b171.ac4-iad.github.net [10.52.22.59])	by smtp.github.com (Postfix) with ESMTP id 38CAF5C0E59	for <helpdesk@satragroup.in>; Wed,  7 Sep 2022 08:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;	s=pf2014; t=1662564866;	bh=SrVDTyq6Jdowl869N6VARYeaZboJdeKv6Qt6hBpwckU=;	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:List-ID:	 List-Archive:List-Post:List-Unsubscribe:From;	b=RpRcNCs/xFPjn7NB8RNL5QHyhN73zwmHCOSAFXn/IP/osTrM8PIphSdQECus+myqg	 7VUTVsh6HfwCJkkN4PQVg8du3omwFRnFYakKk/RpLNqzMnE5hMpuxX/9ptPM7a2QEh	 NZU0iWGyeB+o0Tg8JLRWuVcKKwW2sDExDJWxrcfU=
Reply-To: SatraMobile/Marg-Sahayak-Web <noreply@github.com>
In-Reply-To: <SatraMobile/Marg-Sahayak-Web/pull/1@github.com>
References: <SatraMobile/Marg-Sahayak-Web/pull/1@github.com>
Mime-Version: 1.0
Precedence: list
X-GitHub-Sender: upendra-tarnoju
X-GitHub-Recipient: SatraMobile
X-GitHub-Reason: push
List-ID: SatraMobile/Marg-Sahayak-Web <Marg-Sahayak-Web.SatraMobile.github.com>
List-Archive: https://github.com/SatraMobile/Marg-Sahayak-Web
List-Post: <mailto:noreply@github.com>
List-Unsubscribe: <mailto:unsub+AUGHELRD6GYRAENM7P7OMTOBEXWIFEVBNHHEA25FAM@reply.github.com>, <https://github.com/notifications/unsubscribe/AUGHELVCGM6E2P7XQPJGKXTV5CYYFANCNFSM5KDEC6HQ>
X-Auto-Response-Suppress: All
X-GitHub-Recipient-Address: helpdesk@satragroup.in
X-UNKNOWN-HEADER: 
Subject: Re: [SatraMobile/Marg-Sahayak-Web] Pre prod (PR #1)
Date: Wed, 07 Sep 2022 08:34:26 -0700
Message-ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/10953157430@github.com>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: Upendra Tarnoju <notifications@github.com>
To: SatraMobile/Marg-Sahayak-Web <Marg-Sahayak-Web@noreply.github.com>
Cc: helpdesk <helpdesk@satragroup.in>,   Push <push@noreply.github.com>
Return-Path: <noreply@github.com>
content-type: multipart/alternative; charset=utf-8; boundary="--==_mimepart_6318ba0228dab_13e4d4d0678815"
content-transfer-encoding: 7bit
X-PMAttribute: 1662563041698.19084; mb_id=QSM1413892035136; imapid=30866; del_to=helpdesk

----==_mimepart_6318ba0228dab_13e4d4d0678815
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit

@upendra-tarnoju pushed 1 commit.

4b5cf8848406bb8bc1489fecfbc555093e977add  Update MOTreeUI.js

-- 
View it on GitHub:
https://secure-web.cisco.com/1DKVqcL8FCawcunXKk9VcoA5I4a6CQqh2b1igE_lSVtgOhhl_izBpPiRZQOz7m8xjp3xdHoYw9cgib3iDhEIF6hVFsV6nX-_4fDS_rFRisiBZdsXABpipEB6B65Q7LsT4QP1VN-7m0Ph8_TlIwX4lE_Mtw4mQAKj8XgZ7vC70fsNWEdNg8MJohWzQojtdexuBI1g_D343KF7FmdaMsnXAR7p7IA1ym3Td0RzAADQMXdUF331JDKcMiRbXXmia-hEw5qz-1jkCQ1rGg4WQrkBkPyPTZaKwAGmaT-zoTNImtOdRJPybsBgPeInydikpZRO2dJCy5_ldhasjf3FfLANwAP9w_gQmW5Cp2_Su6pwc16jXKRO6WN-g-MAXgdIPEub_nA26rKYEdOMNLry-KC3E5oIWn8vPd7sUAsFUDUdl64M/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2Fpull%2F1%2Ffiles%2F2242f44a483c4d5201045237061ee61c4b0e5cc0..4b5cf8848406bb8bc1489fecfbc555093e977add
You are receiving this because you are subscribed to this thread.

Message ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/10953157430@github.com>

----==_mimepart_6318ba0228dab_13e4d4d0678815
content-type: text/html; charset=utf-8
content-transfer-encoding: quoted-printable

<p><a href=3D"https://secure-web.cisco.com/1ulLTsUuFGT-k1SiwV5uGHGolR3Y2ELb=
ORGtOsP_5RodfoUC867_U33KYvt1NyjdClInRFxPPh8SiwWHQghc81BqaRrMKt-K5J-8hNZa9zW=
4yq3Yy09n5satCCaLThtyjAs5U2nVxfCU7xWE-_3Tuka9D5g0GamFz_dlVUXv2dX_oHDKU1XV6l=
YSfVP3lwddkzJOvzEB15vdK96moj1ghtVMxgcLd3Ur-ecmu3w7evPa2WqEPDMAvYVtwOMbPDuIk=
OrbYCi01Aaf8l6P-IzWs2l5pp1gjXWRDOuRMfjXa6lpI9Kpzc_fZ1AlVMzbePU7olXinTObZYVK=
d0tcnKTqcPPcOqniXP6QHk-IxRYIWQVQoeSE8ME1oxJAeJDPlxk7BcWg0YC6munPXeQb5tkrmTh=
3oj0Z8-6qkdwyvxxHEWL4/https%3A%2F%2Fgithub.com%2Fupendra-tarnoju" class=3D"=
user-mention">@upendra-tarnoju</a> pushed 1 commit.</p>

<ul>
  <li><a class=3D"commit-link" href=3D"https://secure-web.cisco.com/1HGZqj9=
Dvhc00NqzX0AgSJQeAItQlYGtoorw5jLRpJtdUm9YwipMn74A_PmMAT1tAaEYdSQ_Mh7l7Ld76P=
4eQImivICLyfuy4U3AgtuNjjZWt17_Y3D106Aj7O98TG0PXl1ILBKw_0i7xEdy9ZEmdZ-NneuTy=
0tuUwYqqqWDonCKGytEtfwvOiK5U2pdZEoO7GtNXTOLVZ3aS6Clwm-9WCdbydTwfk0fBkeTZOJQ=
y-wInpcCIEpqpikVyTABJY01GFvN11UTzE5EczHeHWuiaWaFwlj3TPaTPlxhPq0RUQjPqysVM5K=
_-3MoFGVQRW1bftg0Aa0yAVhi35u_kQIKbkqVryk635hNeuSufiyU9JY4J9Y-3GlsZOFNxd1Pj0=
fnNZRQNF4oDF_zdgtZJeRfRpjWLjVMcFWIDvIzhj7Clh1w/https%3A%2F%2Fgithub.com%2FS=
atraMobile%2FMarg-Sahayak-Web%2Fcommit%2F4b5cf8848406bb8bc1489fecfbc555093e=
977add">4b5cf88</a>  Update MOTreeUI.js</li>
</ul>

<p style=3D"font-size:small;-webkit-text-size-adjust:none;color:#666;">&mda=
sh;<br /><a href=3D"https://secure-web.cisco.com/1DKVqcL8FCawcunXKk9VcoA5I4=
a6CQqh2b1igE_lSVtgOhhl_izBpPiRZQOz7m8xjp3xdHoYw9cgib3iDhEIF6hVFsV6nX-_4fDS_=
rFRisiBZdsXABpipEB6B65Q7LsT4QP1VN-7m0Ph8_TlIwX4lE_Mtw4mQAKj8XgZ7vC70fsNWEdN=
g8MJohWzQojtdexuBI1g_D343KF7FmdaMsnXAR7p7IA1ym3Td0RzAADQMXdUF331JDKcMiRbXXm=
ia-hEw5qz-1jkCQ1rGg4WQrkBkPyPTZaKwAGmaT-zoTNImtOdRJPybsBgPeInydikpZRO2dJCy5=
_ldhasjf3FfLANwAP9w_gQmW5Cp2_Su6pwc16jXKRO6WN-g-MAXgdIPEub_nA26rKYEdOMNLry-=
KC3E5oIWn8vPd7sUAsFUDUdl64M/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-S=
ahayak-Web%2Fpull%2F1%2Ffiles%2F2242f44a483c4d5201045237061ee61c4b0e5cc0..4=
b5cf8848406bb8bc1489fecfbc555093e977add">View it on GitHub</a> or <a href=
=3D"https://secure-web.cisco.com/1IckN5m0prYuB7FxsdyFGpeWxFOKWdz3QOBff49bIh=
0fViWyzdCi3l-VXW7wko5T5nvTBF1CTo3RbXA53ypd65LjBRPi1ZAMgZrhSiCzuUMtbRFuQNKOa=
2MvuutL-16EUuSLcMzRXRCdfT0g_zc3ZCxdj-ddf9fEdcVJuMDxoPY0Dbv_z6baeUq54PtORi4q=
Js6I6VT6ZQL7LW6MJQkC7shvEARrykQuJT5-BYXI5ojpMEuqcyUa0hPGh-L_A1jVTNCDOoNiPPj=
2QgV-pl1vuV9IcZQ1MiW-jVazJ-hI6blhrNpo1nvJg2kZj7Q_j0TJo2YpO7J-YJHN1txh3u6jZ-=
tKLAqdbZG4VXucx7m_LOkWALI13JNUOVsSOzxxKcQULR2ERBfSdBDidu0kTJpH1DCRpYLY8Hx51=
RtgXf0Wds-E/https%3A%2F%2Fgithub.com%2Fnotifications%2Funsubscribe-auth%2FA=
UGHELU2WI56XPLEVSNX5WLV5CYYFANCNFSM5KDEC6HQ">unsubscribe</a>.<br />You are =
receiving this because you are subscribed to this thread.<img src=3D"https:=
//secure-web.cisco.com/1TRJDiNdTUu11vF44pNTrbEgDC6od53EvqLXAyDKjwf-SBpJ3Hlh=
FWMjpsc2EAymqViy9zEIaZZSf5WHXEQME8P0UIc3LifEmoeupfsy8a4neM9FgABCMJ2hJdcL539=
--S1AjSvS8GEdF1N6pZBkknUCPXdYnHTWMnkeDkGBJKwFefk0crZIKUeU1ucivCOZUCSdxRoqXl=
bdzES9_JUUlORQ_TQ_3yWGHX8_bwlSftuydD5tdQgz0Z0DgUi6hAn2FuqIX5ISMGZYvyUMlJFOg=
Pzd6vHifOZETsjgezb_gURUBmEZj5Z4RHxXQQJI2SFbLK90wshRDwvzSuHEeL8_6dKdseJSXHMy=
AzOtwLo9vV5_GbW3BgDAFDnsjEJRsjA2utYqgC30QzFEZCklHpDf2zYur-YpFGVCVoCfKtIZnQt=
k/https%3A%2F%2Fgithub.com%2Fnotifications%2Fbeacon%2FAUGHELRI2DTXC644WVBUX=
X3V5CYYFA5CNFSM5KDEC6H2YY3PNVWWK3TUL52HS4DFXNIHK3DMKJSXC5LFON2FA5LTNBHG65DJ=
MZUWGYLUNFXW5KTDN5WW2ZLOORPWSZF6KB2WY3BDHAYDGMRVGU3TEOKQOVZWQIZRGA4TKMZRGU3=
TIMZQ.gif" height=3D"1" width=3D"1" alt=3D"" /><span style=3D"color: transp=
arent; font-size: 0; display: none; visibility: hidden; overflow: hidden; o=
pacity: 0; width: 0; height: 0; max-width: 0; max-height: 0; mso-hide: all"=
>Message ID: <span>&lt;SatraMobile/Marg-Sahayak-Web/pull/1/push/10953157430=
</span><span>@</span><span>github</span><span>.</span><span>com&gt;</span><=
/span></p>
<script type=3D"application/ld+json">[
{
"@context": "http://schema.org",
"@type": "EmailMessage",
"potentialAction": {
"@type": "ViewAction",
"target": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/224=
2f44a483c4d5201045237061ee61c4b0e5cc0..4b5cf8848406bb8bc1489fecfbc555093e97=
7add",
"url": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/2242f4=
4a483c4d5201045237061ee61c4b0e5cc0..4b5cf8848406bb8bc1489fecfbc555093e977ad=
d",
"name": "View Pull Request"
},
"description": "View this Pull Request on GitHub",
"publisher": {
"@type": "Organization",
"name": "GitHub",
"url": "https://github.com"
}
}
]</script>

----==_mimepart_6318ba0228dab_13e4d4d0678815--
