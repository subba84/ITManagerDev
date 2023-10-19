X-Qmail-Scanner-Diagnostics: from 192.168.8.53 by vdvm34.logix.local (envelope-from <noreply@github.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.8.53):SA:0(IronPort):.  Processed in 0.033891 secs); 17 Sep 2022 08:03:58 -0000
Received-SPF: Pass (tblr2.logix.in: domain of noreply@github.com  designates 192.30.252.203 as permitted sender)  identity=mailfrom; client-ip=192.30.252.203;  receiver=tblr2.logix.in; envelope-from="noreply@github.com";  x-sender="noreply@github.com"; x-conformance=spf_only;  x-record-type="v=spf1"; x-record-text="v=spf1  ip4:192.30.252.0/22 include:_netblocks.google.com  include:_netblocks2.google.com include:_netblocks3.google.com  include:spf.protection.outlook.com include:mail.zendesk.com  include:_spf.salesforce.com include:servers.mcsv.net  ip4:166.78.69.169 ip4:166.78.69.170 ip4:166.78.71.131  ip4:167.89.101.2 ip4:167.89.101.192/28 ip4:192.254.112.60  ip4:192.254.112.98/31 ip4:192.254.113.10 ip4:192.254.113.101  ip4:192.254.114.176 ip4:62.253.227.114 ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@out-20.smtp.github.com) identity=helo;  client-ip=192.30.252.203; receiver=tblr2.logix.in;  envelope-from="noreply@github.com";  x-sender="postmaster@out-20.smtp.github.com";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=noreply@github.com; spf=None smtp.helo=postmaster@out-20.smtp.github.com; dkim=pass (signature verified) header.i=@github.com; dmarc=pass (p=reject dis=none) d=github.com
IronPort-SDR: VJyYZIgb/u3OE6EGGAWLGR+QlL67CwxCyEx8wEaTtw/pzN/vfrbaz3Dn3pFmh9pf2ehoc4Xx+g eJm0BbqWtgClCPPTAwDjbJwFsN0K0rBp19VHWrE1vC5NHnxBh7YXgNq376tc+lNF5xljeVfSsX duKsZDCahNfJ/t0j9NmwLVPTmzkt3UZlCl7HOx69/D8dq4euFpXgeU086FQCb9balpu1F7WetT MIBFyAoFo5UXjixODQhc2Jid/afU92rvEcnU52MlPAQql1CSnFBNc9nChvZv6OCTXL240yjenu 4YsouXkaAuC1d+1FLRiyV3KK
X-ORIGINAL-IP: 192.30.252.203
X-ORIGINAL-TIME: 17 Sep 2022 13:33:57 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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 +d0hAZcuzLYtxexCUC5sxRjLis=
IronPort-HdrOrdr: A9a23:JIAG/ainw4bJflO0WhCbePEd73BQXmEji2hC6mlwRA09TyVXra GTdZMgpHnJYVcqKRYdcLW7UpVoLkmwyXcY2+Us1PKZLWrbUIXBFvAf0WKg+UycJ8XGntQtqp uICpIOduEYb2IbsS+K2njdLz96+qj/zEnAv463pEuFDzsaCZ2IiT0XNu/xKDwSeOApP/QE/b Onl7t6jgvlV3QLT9ixQkIIV/LEoLTw5ejbSC9DKR47yRWEyQil4r7iExSew34lIkhy6IZn32 jZshDzop6uufGjyhPayiv64plMlMH6o+EzdPCku4w6KijMlg3tXohnVrGY1QpF2N2S1A==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,322,1654540200";    d="scan'208,217";a="84758359"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
Received: from noreply@github.com([192.168.1.1]) 	by PME Mail With Id 1663401843021.16523;Sat, 17 Sep 2022 13:34:03 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h4lvmu1oo38t for <helpdesk@satragroup.in>; Sat, 17 Sep 2022 13:33:58 +0530 (envelope-from <noreply@github.com>)
Received: (qmail 148280 invoked by uid 1012); 17 Sep 2022 08:03:58 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.8.53])          (envelope-sender <noreply@github.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 17 Sep 2022 08:03:58 -0000
Received: from out-20.smtp.github.com ([192.30.252.203])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2022 13:33:56 +0530
Received: from github-lowworker-f052de4.va3-iad.github.net (github-lowworker-f052de4.va3-iad.github.net [10.48.109.96])	by smtp.github.com (Postfix) with ESMTP id 822A9E057F	for <helpdesk@satragroup.in>; Sat, 17 Sep 2022 01:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;	s=pf2014; t=1663401832;	bh=y565rHdWzonyZXj3+NL2LSImxisD5WpQa9FvrxXiwv8=;	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:List-ID:	 List-Archive:List-Post:List-Unsubscribe:From;	b=ZyUr8wcdYKhYHQ/d9LObSda8N6X2qdZxQ7qHWjWzQ7Yl+fe0npDJtZk4e2s8eLi/w	 63p+dGgXG72CAkttRwEbwWkkbPYTVkAVCZSIK7IjcMu3qLPrdFSQUzKMEOkJtzaps+	 Q0PI3jkBt0INe+pzpi4P0NT1rddcjd57MfiylVYo=
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
List-Unsubscribe: <mailto:unsub+AUGHELUNF57UMIAIGT2H73OBGKY6REVBNHHEA25FAM@reply.github.com>, <https://github.com/notifications/unsubscribe/AUGHELUHK6WDODE6M5G36MDV6V3ORANCNFSM5KDEC6HQ>
X-Auto-Response-Suppress: All
X-GitHub-Recipient-Address: helpdesk@satragroup.in
X-UNKNOWN-HEADER: 
Subject: Re: [SatraMobile/Marg-Sahayak-Web] Pre prod (PR #1)
Date: Sat, 17 Sep 2022 01:03:52 -0700
Message-ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/11052097579@github.com>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: Upendra Tarnoju <notifications@github.com>
To: SatraMobile/Marg-Sahayak-Web <Marg-Sahayak-Web@noreply.github.com>
Cc: helpdesk <helpdesk@satragroup.in>,   Push <push@noreply.github.com>
Return-Path: <noreply@github.com>
content-type: multipart/alternative; charset=utf-8; boundary="--==_mimepart_63257f687473a_6ba2d4f84899da"
content-transfer-encoding: 7bit
X-PMAttribute: 1663401843021.16523; mb_id=QSM1413892035136; imapid=30983; del_to=helpdesk

----==_mimepart_63257f687473a_6ba2d4f84899da
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit

@upendra-tarnoju pushed 1 commit.

dc04c895f4ce79798012788b77bf90ed1493407b  Officer fizes and all officers api

-- 
View it on GitHub:
https://secure-web.cisco.com/1SvEtjTSaTJYxuWniTHryGcCFlV1DF8YgvID2eTEs8ze7a1kqAyQYCH4vOixwPBmXEIChvQAhJG-RViBxjG3004InfSn5NM4TjITAjB5pF-E-DWLWIVlcH69AtLKIObIDNcWDOO8BkfIFYiJGfoVeDuxFQX_JWIxd19kmv7w-IhaiWJOzUpCo_j6XsbFTaoy0mvfSMU-yoIMnCluMdKDp3VPSjPYSE6PyTe9ZHP9RxO5mysBbAYeRv7ZWr3cXhA4l0Q7H1owafKYAVPTMPUT-gNf7FkdldfLw3ZLrGrAMG0wOvoTiHrLT9ooldG-cNd4QJZQw5lsVBC7lfp_pl737gXuL3gfItHRVMM6Iy-qgiJBeHrM0fE6Bz-HO-6s5wT35hdQjO3MQr-w62QG6ebT9G-oFRtnM32KGfbgnmx_s548S4fTeaNfOwNX7YDyLRF-1epSEDQtwMxvvYeUCmKfcrw/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2Fpull%2F1%2Ffiles%2F85be835433dc902f79429409361769593689b5aa..dc04c895f4ce79798012788b77bf90ed1493407b
You are receiving this because you are subscribed to this thread.

Message ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/11052097579@github.com>

----==_mimepart_63257f687473a_6ba2d4f84899da
content-type: text/html; charset=utf-8
content-transfer-encoding: quoted-printable

<p><a href=3D"https://secure-web.cisco.com/18mVz3jfe3RJ7rRfjYyiHag17k1hsYmm=
CHFsZMLCXt0k3apQsdRVxADR47LHwJcFDCsBL7cWiTDd72q5yODA9sNZUxFvfFH0F_96NkiekQo=
1sxABxNZuprGicOLnHE5xFBlpq_5nQYXlZvPGWHthrd8o8rRYKY14y1i8rpi7lKCc_VFWYfY1-G=
T4sRAyiYXxl9iYJIxEGAC92XIpXjjpQXGAmU8HwR4vPU2yirwZrmsx2JLEIMVZM423Un8K1mTTi=
4WM065nw4ze1D0WOsa8tJTEKUf8NA9Bw-LLj4xJH1JrLDx-tjjyTJ4f4twH-CZIo-wPsS-1ar3W=
JBvuZNKQ81n6Hjx63I6rru8QK1IpxTPiYuBjKvtjVUkQUuuM3dZsAu2jaI2KmupnPdhxUxZanBn=
oZJY1wEPd0nAiuZ6jefnM6cBEvC3M8yY5M2SnWy7nF8fTjqNTlmd4yRPwHMYTMfQ/https%3A%2=
F%2Fgithub.com%2Fupendra-tarnoju" class=3D"user-mention">@upendra-tarnoju</=
a> pushed 1 commit.</p>

<ul>
  <li><a class=3D"commit-link" href=3D"https://secure-web.cisco.com/19928zD=
k0xj9RlxV8-AjBBXVYihwzrr_BLRMl6wCSrmBrd-XJk5Q-n3YXaL5-bIXJ9CbaOSOX-8UgqNaBt=
OzmGdbilabVjhecgAsQUo8r5YkRzq55ShcEc6W-ya1ChrSvI720IrczUzyPSgHXIbmXPJJXdJ0p=
YD4nfu7Nz0roS1JMrR4I_jT_L9-BdIpBSWRWKnUd_W4SiYeeF8BkHxbG_HjEN-8ZmFVkRMiFkX3=
wVcOG-EbOQt0H5SValmyUshwkhgNdPntRcdlXH7Bi1lqDfP9Y-7UhhLaS6ulxv75kNhQq3bhHuz=
pUhhZQru0MQV0KGM4ZfieCAzSJ-YdtzXkrrBiuqgTaEcaF46TNRJ8o8tjGqewYGmDLvmoJJqUwy=
A2zZi2FGegOtbB-cHQjoLCz9EHLh7K3fBNrCDEoHXrP2pIlYKbY4hgi6mCLidfGK6_wMVZqugyL=
4b8V_uZgxrsa5Q/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2F=
commit%2Fdc04c895f4ce79798012788b77bf90ed1493407b">dc04c89</a>  Officer fiz=
es and all officers api</li>
</ul>

<p style=3D"font-size:small;-webkit-text-size-adjust:none;color:#666;">&mda=
sh;<br /><a href=3D"https://secure-web.cisco.com/1SvEtjTSaTJYxuWniTHryGcCFl=
V1DF8YgvID2eTEs8ze7a1kqAyQYCH4vOixwPBmXEIChvQAhJG-RViBxjG3004InfSn5NM4TjITA=
jB5pF-E-DWLWIVlcH69AtLKIObIDNcWDOO8BkfIFYiJGfoVeDuxFQX_JWIxd19kmv7w-IhaiWJO=
zUpCo_j6XsbFTaoy0mvfSMU-yoIMnCluMdKDp3VPSjPYSE6PyTe9ZHP9RxO5mysBbAYeRv7ZWr3=
cXhA4l0Q7H1owafKYAVPTMPUT-gNf7FkdldfLw3ZLrGrAMG0wOvoTiHrLT9ooldG-cNd4QJZQw5=
lsVBC7lfp_pl737gXuL3gfItHRVMM6Iy-qgiJBeHrM0fE6Bz-HO-6s5wT35hdQjO3MQr-w62QG6=
ebT9G-oFRtnM32KGfbgnmx_s548S4fTeaNfOwNX7YDyLRF-1epSEDQtwMxvvYeUCmKfcrw/http=
s%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2Fpull%2F1%2Ffiles%2F=
85be835433dc902f79429409361769593689b5aa..dc04c895f4ce79798012788b77bf90ed1=
493407b">View it on GitHub</a> or <a href=3D"https://secure-web.cisco.com/1=
bMcRArXKn9ENEQqSQXfayC3lNb5pB5puBcitJZcu7zbjl9Ob-SbZEbgMz9dKxQsq6FpbBVPeI5_=
0sS04wDpeBgd9FndNKuxyZy-JFnMTUf7XY2fY9olTKwyWCFKbmzeH-PT-1_CtK51YgmDTaRztwE=
PwPZNLHjcPJ2hEJgfXogvC3S9bQjOQpvjHogqV38oV_1q4efKCikGW31RiQ4pfNDJw1neIyrmUH=
oqjqcgvh4X9J5JYdJXj7f1fICBTzYWt1X2l_rNtphTYh6ckhvJeQtl9X0GFN3iHUal-jCoZLAr1=
6hmSNHlLGHllizEOOYtuWNjSu-dNXBnmtST70wAugtdlha743ib401XLZQlzyRCDBbQ8g72Xx9U=
heslojeUMQBc1bynQi1QAXMhgpQXW9HlMScKaA-aLlMMKqVGD8coGwk0z1zt5oYX7CUt-bNqdvA=
ZnEOr4gttoPvf2WC09aA/https%3A%2F%2Fgithub.com%2Fnotifications%2Funsubscribe=
-auth%2FAUGHELTSVSQGQJU3ZL67J5LV6V3ORANCNFSM5KDEC6HQ">unsubscribe</a>.<br /=
>You are receiving this because you are subscribed to this thread.<img src=
=3D"https://secure-web.cisco.com/1P_U0ZWu-eDRR2zKJYidNbWsEZuL1eM4ciYefHxVXo=
3sXAviG8hjl6iGbj_G0TsKgmZDNMo-vlIoFK0dkZJEmIncCRCDrM0iwqVFsKmgFYEjHAiQ5vUOP=
Xo1EHQaPF6OoPWaYT_yg-vwZB20Y1-QAss9l2wAQOT8pLAT_KWeaHaUnhdbYUAXdV81t_im6iOo=
_jw5qOyEa6x7Kv81QSI_p0c4BumKAgbGrErtJhdwKz5ijLQ75o9Zvdga6wyTwCGrbw8wkFEYe8C=
fhRUQhaPLHwIo1Od_O-YnY-O7WHA1-I-j23bKgcy-DfZtSIqYevzyMA4OxQSuKdSgSnH8hZAG_K=
rJcY9wr-X_kdxLIbnKjRDlbPqQlBmeVHrz_YYEwkWirS1aoHHqv0fzA-j8oS0-G5V4K6R-TLv-l=
mtYjHyYN66s_rM5sjSgsCdH92uDvfV1eLeNQ9OFP_MAgSUGtBgpTMw/https%3A%2F%2Fgithub=
.com%2Fnotifications%2Fbeacon%2FAUGHELUEPNJDCLJZIB5AA4TV6V3ORA5CNFSM5KDEC6H=
2YY3PNVWWK3TUL52HS4DFXNIHK3DMKJSXC5LFON2FA5LTNBHG65DJMZUWGYLUNFXW5KTDN5WW2Z=
LOORPWSZF6KB2WY3BDHAYDGMRVGU3TEOKQOVZWQIZRGEYDKMRQHE3TKNZZ.gif" height=3D"1=
" width=3D"1" alt=3D"" /><span style=3D"color: transparent; font-size: 0; d=
isplay: none; visibility: hidden; overflow: hidden; opacity: 0; width: 0; h=
eight: 0; max-width: 0; max-height: 0; mso-hide: all">Message ID: <span>&lt=
;SatraMobile/Marg-Sahayak-Web/pull/1/push/11052097579</span><span>@</span><=
span>github</span><span>.</span><span>com&gt;</span></span></p>
<script type=3D"application/ld+json">[
{
"@context": "http://schema.org",
"@type": "EmailMessage",
"potentialAction": {
"@type": "ViewAction",
"target": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/85b=
e835433dc902f79429409361769593689b5aa..dc04c895f4ce79798012788b77bf90ed1493=
407b",
"url": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/85be83=
5433dc902f79429409361769593689b5aa..dc04c895f4ce79798012788b77bf90ed1493407=
b",
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

----==_mimepart_63257f687473a_6ba2d4f84899da--
