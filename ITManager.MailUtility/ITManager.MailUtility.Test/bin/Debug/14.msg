X-Qmail-Scanner-Diagnostics: from 192.168.8.22 by vdvm34.logix.local (envelope-from <noreply@github.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.8.22):SA:0(IronPort):.  Processed in 0.029369 secs); 07 Sep 2022 08:53:57 -0000
Received-SPF: Pass (tblr2.logix.in: domain of noreply@github.com  designates 192.30.252.205 as permitted sender)  identity=mailfrom; client-ip=192.30.252.205;  receiver=tblr2.logix.in; envelope-from="noreply@github.com";  x-sender="noreply@github.com"; x-conformance=spf_only;  x-record-type="v=spf1"; x-record-text="v=spf1  ip4:192.30.252.0/22 include:_netblocks.google.com  include:_netblocks2.google.com include:_netblocks3.google.com  include:spf.protection.outlook.com include:mail.zendesk.com  include:_spf.salesforce.com include:servers.mcsv.net  ip4:166.78.69.169 ip4:166.78.69.170 ip4:166.78.71.131  ip4:167.89.101.2 ip4:167.89.101.192/28 ip4:192.254.112.60  ip4:192.254.112.98/31 ip4:192.254.113.10 ip4:192.254.113.101  ip4:192.254.114.176 ip4:62.253.227.114 ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@smtp.github.com) identity=helo;  client-ip=192.30.252.205; receiver=tblr2.logix.in;  envelope-from="noreply@github.com";  x-sender="postmaster@smtp.github.com"; x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=noreply@github.com; spf=None smtp.helo=postmaster@smtp.github.com; dkim=pass (signature verified) header.i=@github.com; dmarc=pass (p=reject dis=none) d=github.com
IronPort-SDR: SRHi5zteWqAeZyY90qb1HL5/IcVlZeI0CrpGNu7idkOC7d6+LOj4in+Ov5YV4dIn0FqMW1CbY7 uP5+pDQFjv7GRCLxyFH5r/3QETxcyALoo=
X-ORIGINAL-IP: 192.30.252.205
X-ORIGINAL-TIME: 07 Sep 2022 14:23:56 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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 jY=
IronPort-HdrOrdr: A9a23:kzcXFKjf3sqSDp6PMKQ9uyBZWHBQXvQji2hC6mlwRA09TyX4rb HIoB1173DJYVoqNk3I3OrwW5VoIkmskaKdg7NwAV7KZmCP0wbFEGgh1/qB/9SKIVyaygcp79 YaT0EIMqyJMbEVt6fHyTj9O9Ip39mctISviOfQz3thJDsBV0gZ1XYBNu/NKDwReDV7
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,296,1654540200";    d="scan'208,217";a="331497047"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
Received: from noreply@github.com([192.168.1.1]) 	by PME Mail With Id 1662538994692.18398;Wed, 7 Sep 2022 13:53:14 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h31e2a1oo38v for <helpdesk@satragroup.in>; Wed, 7 Sep 2022 14:23:57 +0530 (envelope-from <noreply@github.com>)
Received: (qmail 172709 invoked by uid 1012); 7 Sep 2022 08:53:57 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.8.22])          (envelope-sender <noreply@github.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 7 Sep 2022 08:53:57 -0000
Received: from out-22.smtp.github.com (HELO smtp.github.com) ([192.30.252.205])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2022 14:23:55 +0530
Received: from github-lowworker-d1fc117.ash1-iad.github.net (github-lowworker-d1fc117.ash1-iad.github.net [10.56.22.62])	by smtp.github.com (Postfix) with ESMTP id B34CB720D63	for <helpdesk@satragroup.in>; Wed,  7 Sep 2022 01:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;	s=pf2014; t=1662540831;	bh=BZsbMDzbnku4KXyDQRYdYPzFJnCZIul+LBzUXyH0ELM=;	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:List-ID:	 List-Archive:List-Post:List-Unsubscribe:From;	b=mtGJAzRhV6AuvfejfgL9wm9WzLzBbIR4vA2wQjyPH+PAm+TtJ3rjgjAd7TYkzO+Gf	 Mwzlk++m+4zK5j4yOO8YbWZ16omaU8uSPpHho8fc95SzgFGkI2ofQeGOxoufI3ZATE	 WlsbcKGWDEg/IPi1ZS21p56t1chhOKnJQkb7Pwp4=
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
List-Unsubscribe: <mailto:unsub+AUGHELSUYECIVENUQXJNBL6BEWHJ7EVBNHHEA25FAM@reply.github.com>, <https://github.com/notifications/unsubscribe/AUGHELSNAHH6HVPP7BWHIJTV5BJZ7ANCNFSM5KDEC6HQ>
X-Auto-Response-Suppress: All
X-GitHub-Recipient-Address: helpdesk@satragroup.in
X-UNKNOWN-HEADER: 
Subject: Re: [SatraMobile/Marg-Sahayak-Web] Pre prod (PR #1)
Date: Wed, 07 Sep 2022 01:53:51 -0700
Message-ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/10948881876@github.com>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: Upendra Tarnoju <notifications@github.com>
To: SatraMobile/Marg-Sahayak-Web <Marg-Sahayak-Web@noreply.github.com>
Cc: helpdesk <helpdesk@satragroup.in>,   Push <push@noreply.github.com>
Return-Path: <noreply@github.com>
content-type: multipart/alternative; charset=utf-8; boundary="--==_mimepart_63185c1fa576d_38f1d4d04482b"
content-transfer-encoding: 7bit
X-PMAttribute: 1662538994692.18398; mb_id=QSM1413892035136; imapid=30864; del_to=helpdesk

----==_mimepart_63185c1fa576d_38f1d4d04482b
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit

@upendra-tarnoju pushed 1 commit.

2242f44a483c4d5201045237061ee61c4b0e5cc0  Update local counts when refresh

-- 
View it on GitHub:
https://secure-web.cisco.com/1jYT7fX7jgurtdbiLlplFXplAFRj9pMs6BJAVHJpm7EUZ5D7dwGVsKcrAhQTd2ddmys7ysytoTb8n1cEnRRWagCZTBiW00M5Xkv6-v0jGydIQs6jFtrxNZIID62JsMr44wAKLZfOIuBUYam77GsFUWCyhd1KJlWyh3FR3l4_SpmGvhvw3xqGHSLuRYo2Js0VR7WeV-wwMlz8CMD8kxUxeirZHdOb9upg5cfvEXjLSIxj5G6bj2lmetxcczRxP-xzCGs3n6BuK74ylY0n6AMqJIy4hvrTLdBQxIo3U1TV6UDWEuyO4KB8lfEmNkUMqOxtLR28T4iGEFjkGsn5WO96Hh1s_e7OUpsyEWNvZiMCR__sdS55BimhIP6qPrAJGMM1hN40hUUUTI5yt5hsvSqzAED6400oDXIEDOT_wZ7xFUPQ/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2Fpull%2F1%2Ffiles%2F2dc8637095b91d984f79d0775f5175f4d26dab42..2242f44a483c4d5201045237061ee61c4b0e5cc0
You are receiving this because you are subscribed to this thread.

Message ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/10948881876@github.com>

----==_mimepart_63185c1fa576d_38f1d4d04482b
content-type: text/html; charset=utf-8
content-transfer-encoding: quoted-printable

<p><a href=3D"https://secure-web.cisco.com/1bCTUYmODBGLdOu-p8ZimmLFDoj5M2nq=
P1nQR51ThkIrDs1pZn7WioQQE7qmtTjY0WZK8O61cnKOApXopAzG2u3yT7crv9bg4R8KLeekJWh=
onz6gH4spNgZDR85OeSU3oNIUwFuvClICUOWAh5YB7l-R-HvAd4pTcg8sKDblq8ZNghIXfJ3CAc=
DQUtA-WRdNMWMW6r33e0LBTbIc8E23x8MjrpIMZrI9pRLFdFm9khEI67DkgCk9UQd_Ue69jVRm4=
vWOy21gmISei1Oz7vWMZPEouHIqVn4wg_92_M0CZe5dE8eadF7I0KEbNLosE0KyEuBay2z-SQKP=
Tn4Uhm4daIwqKvj4_Kfi773h8M9gQsuMigVhqMmlsO1n1RZAddUVFwB6J88BET3dBW-rwlnZs6f=
jTngv3jSnY0AiPRoUMeCY/https%3A%2F%2Fgithub.com%2Fupendra-tarnoju" class=3D"=
user-mention">@upendra-tarnoju</a> pushed 1 commit.</p>

<ul>
  <li><a class=3D"commit-link" href=3D"https://secure-web.cisco.com/1v6Ex5h=
4Zcxu6BrIsWYWJVmYulGhu1y7dJibJUnFZM_FDSNThu0EM0iksUsTb1MwRynKCHH-UZRmLmBoq-=
JB_yKQfCFgBHr9fG3sCvG0uBIYTYg1CdiHn3Qy2LBJUhC5Wxugfd1DIvOqJN9CeAUCt4TcmmxBi=
tiU7tDomFmZzlt0YmqSXUW79KdVcBGvHbBnII6A4jhKNyJWHqni3htMxrE6wgL-dHPTt1G21XH7=
PzdAG1CfKQFqKxyihpcFozlyhJC2FpMIhgcFghGjnhPxwpwRn7oog0a8HC1xPJZMqYsG1TwFxYD=
LBYBQsSY2Yz8xQOGVnW3buRvZ4Yg1Cqp6qBOZ4uJfs4MJXHwY2qcJsXu_FoKffG9K1yWm4vtMj_=
ohSapvCdtIJuSvxqgu6BEb4y8B1V43V9kwoY5Xy356xPq8/https%3A%2F%2Fgithub.com%2FS=
atraMobile%2FMarg-Sahayak-Web%2Fcommit%2F2242f44a483c4d5201045237061ee61c4b=
0e5cc0">2242f44</a>  Update local counts when refresh</li>
</ul>

<p style=3D"font-size:small;-webkit-text-size-adjust:none;color:#666;">&mda=
sh;<br /><a href=3D"https://secure-web.cisco.com/1jYT7fX7jgurtdbiLlplFXplAF=
Rj9pMs6BJAVHJpm7EUZ5D7dwGVsKcrAhQTd2ddmys7ysytoTb8n1cEnRRWagCZTBiW00M5Xkv6-=
v0jGydIQs6jFtrxNZIID62JsMr44wAKLZfOIuBUYam77GsFUWCyhd1KJlWyh3FR3l4_SpmGvhvw=
3xqGHSLuRYo2Js0VR7WeV-wwMlz8CMD8kxUxeirZHdOb9upg5cfvEXjLSIxj5G6bj2lmetxcczR=
xP-xzCGs3n6BuK74ylY0n6AMqJIy4hvrTLdBQxIo3U1TV6UDWEuyO4KB8lfEmNkUMqOxtLR28T4=
iGEFjkGsn5WO96Hh1s_e7OUpsyEWNvZiMCR__sdS55BimhIP6qPrAJGMM1hN40hUUUTI5yt5hsv=
SqzAED6400oDXIEDOT_wZ7xFUPQ/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-S=
ahayak-Web%2Fpull%2F1%2Ffiles%2F2dc8637095b91d984f79d0775f5175f4d26dab42..2=
242f44a483c4d5201045237061ee61c4b0e5cc0">View it on GitHub</a> or <a href=
=3D"https://secure-web.cisco.com/1WQtpMBu6wwQwp4OWcFI7568ccGXBtGC0EsZfRqxPI=
Xgh4gXHhraduXKbQv_oOmNxhKI3HXlaxjzIUmF64_75zXi4RpWqr5SrCcPzEgJ1BJ-X3xu2hkmg=
KUEHfE8w4_F3CSni76VF0cn-woQ2-lABJbT4nfN867TG1ptgVvO4M_8L44GR3XYAJnakfg4TNRR=
XJhUHFDCt851nnRZxd9iuo_SIpF0DcJHXTV-SoQ6MJnyBsV9KwKHePfHG3IKWTq0XPH5RfY50P5=
Y0IQ4abanWC-Aj3-fhS0Y2V1YOlV6lkYHJJPsblVyCkqzR6xDjRBuz848IAqMnX7RBa9P7L2hXk=
MChvVTjI7wVfaeZDgXG3sGeZSvJOgW9OfJetuemBDeZvWRpTBe8o03KHWFdzjJgm7nWTKhK6mF4=
t19rQRs30BI/https%3A%2F%2Fgithub.com%2Fnotifications%2Funsubscribe-auth%2FA=
UGHELV6U26IT4PETVEZZD3V5BJZ7ANCNFSM5KDEC6HQ">unsubscribe</a>.<br />You are =
receiving this because you are subscribed to this thread.<img src=3D"https:=
//secure-web.cisco.com/1FgvPoLN3iqVEwOIMmuBFBv-5qz7Cxp7wjFGMkY5_LkXBAEIupnY=
bcDufYl5_tYQW6JXDAhJEA8Pe88SZuMyLwlT15K-By76hAflGlc_BoOuT5-mkaDpz2o4LMEGR9j=
1fdIPrD-6vjywYj2myGVzvzimHsX3Co9uXmMJr6IcEBX1i9DXh2qhIXGTh5wUu0gaELAxyfEMmq=
xbEje_xrksYgDxzYpkPuVJSm6FozBfH1eJykNqOV_2OOZ_0R9CSR6M0KWhktw9__ihJdatZK6eK=
gIIMtQa3iqz25V88ZxGzCnSdIMh-8BH0R9RoJCxU5ZrAO70Cjn0qX_V7gQNV2Bn0Tu-wqY9qFzK=
qBxymdCIr-xoA5vNaESVoQ2PDF03i7LVex-7By5a6Mr8VY4mBfLQUmsZQ2O8aZAvEpgqfid4-eH=
I/https%3A%2F%2Fgithub.com%2Fnotifications%2Fbeacon%2FAUGHELQ3LN2NWITT75N6B=
CLV5BJZ7A5CNFSM5KDEC6H2YY3PNVWWK3TUL52HS4DFXNIHK3DMKJSXC5LFON2FA5LTNBHG65DJ=
MZUWGYLUNFXW5KTDN5WW2ZLOORPWSZF6KB2WY3BDHAYDGMRVGU3TEOKQOVZWQIZRGA4TIOBYHAY=
TQNZW.gif" height=3D"1" width=3D"1" alt=3D"" /><span style=3D"color: transp=
arent; font-size: 0; display: none; visibility: hidden; overflow: hidden; o=
pacity: 0; width: 0; height: 0; max-width: 0; max-height: 0; mso-hide: all"=
>Message ID: <span>&lt;SatraMobile/Marg-Sahayak-Web/pull/1/push/10948881876=
</span><span>@</span><span>github</span><span>.</span><span>com&gt;</span><=
/span></p>
<script type=3D"application/ld+json">[
{
"@context": "http://schema.org",
"@type": "EmailMessage",
"potentialAction": {
"@type": "ViewAction",
"target": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/2dc=
8637095b91d984f79d0775f5175f4d26dab42..2242f44a483c4d5201045237061ee61c4b0e=
5cc0",
"url": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/2dc863=
7095b91d984f79d0775f5175f4d26dab42..2242f44a483c4d5201045237061ee61c4b0e5cc=
0",
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

----==_mimepart_63185c1fa576d_38f1d4d04482b--
