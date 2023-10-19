X-Qmail-Scanner-Diagnostics: from 192.168.9.76 by vdvm34.logix.local (envelope-from <noreply@github.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.76):SA:0(IronPort):.  Processed in 0.025293 secs); 18 Sep 2022 16:33:48 -0000
Received-SPF: Pass (tblr2.logix.in: domain of noreply@github.com  designates 192.30.252.209 as permitted sender)  identity=mailfrom; client-ip=192.30.252.209;  receiver=tblr2.logix.in; envelope-from="noreply@github.com";  x-sender="noreply@github.com"; x-conformance=spf_only;  x-record-type="v=spf1"; x-record-text="v=spf1  ip4:192.30.252.0/22 include:_netblocks.google.com  include:_netblocks2.google.com include:_netblocks3.google.com  include:spf.protection.outlook.com include:mail.zendesk.com  include:_spf.salesforce.com include:servers.mcsv.net  ip4:166.78.69.169 ip4:166.78.69.170 ip4:166.78.71.131  ip4:167.89.101.2 ip4:167.89.101.192/28 ip4:192.254.112.60  ip4:192.254.112.98/31 ip4:192.254.113.10 ip4:192.254.113.101  ip4:192.254.114.176 ip4:62.253.227.114 ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@smtp.github.com) identity=helo;  client-ip=192.30.252.209; receiver=tblr2.logix.in;  envelope-from="noreply@github.com";  x-sender="postmaster@smtp.github.com"; x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=noreply@github.com; spf=None smtp.helo=postmaster@smtp.github.com; dkim=pass (signature verified) header.i=@github.com; dmarc=pass (p=reject dis=none) d=github.com
IronPort-SDR: 3PEK4ANq3NZ19Bd1rMHCxSJFh/ce8XamvmrGJl+PDBW3+dVCMg9qJ3Lhc0ybluFyBzu8mGtLqI dTDM7iFq1MHc4hT8kedkH9FQMyL3LDO0AO8GkYEwFLHzc+nA+z7ruf70RcBXESi7SNsHJC0qW8 br+Bst+blIcXUtOCkhnGrjXb1fdVP+IHRWmCU7okqaTOrbsYq740SvmEapcZMv5+inpZZ+dt0e TMdM6QW22R50vXD2yY3uhMfdtwH7RfidctxZ/m5mZDMnzhhhJV4QlXDqAd4UnCY6N4lQDEm3zI QO0xhVtVaZGQ9/ZuBdf2uj0S
X-ORIGINAL-IP: 192.30.252.209
X-ORIGINAL-TIME: 18 Sep 2022 22:03:46 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:4iSvGqqIQ/o1tPe44AqGWkcaV5qQeYIsimQD101hICG9vPb4qy nIpoV86faUskd3ZJhEo7q90ca7LE80maQY3WBVB8bAYOEJ0FHYUL2KrrGSvgEJIkXFh5FgPN 5bAtZD4b/LbWSS/PyKhDVQSOxQueVvmZrA7YzjJjVWPGNXgsdbgDuRYTzrd3GeKjMpOXMRLu vs2uN34xShZFUKZYCBCnEeWe+rnaywqLvWJTAHGj864020gTmp8b73FAXw5GZkbxp/hZkj7E nYmEjD6q+iqvG2zQKZ/2Lf9JhNgrLau6t+Lf3JpMgJCynmzjylY4lsQNS5zUgInN0=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,325,1654540200";    d="scan'208,217";a="182871327"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
Received: from noreply@github.com([192.168.1.1]) 	by PME Mail With Id 1663518832320.17009;Sun, 18 Sep 2022 22:03:52 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h4t46o1oo38o for <helpdesk@satragroup.in>; Sun, 18 Sep 2022 22:03:48 +0530 (envelope-from <noreply@github.com>)
Received: (qmail 18511 invoked by uid 1012); 18 Sep 2022 16:33:48 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.76])          (envelope-sender <noreply@github.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 18 Sep 2022 16:33:47 -0000
Received: from out-26.smtp.github.com (HELO smtp.github.com) ([192.30.252.209])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Sep 2022 22:03:44 +0530
Received: from github-lowworker-cb47c52.ac4-iad.github.net (github-lowworker-cb47c52.ac4-iad.github.net [10.52.112.28])	by smtp.github.com (Postfix) with ESMTP id D812C5E01BB	for <helpdesk@satragroup.in>; Sun, 18 Sep 2022 09:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;	s=pf2014; t=1663518820;	bh=qJJ0CD2c/XQYDW88MaMLacs5JocCCul1QVAnt8srCXg=;	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:List-ID:	 List-Archive:List-Post:List-Unsubscribe:From;	b=r2nfye68X9DlUZ/FqB2S6Za90AqXhDXUR89AtpDjuSmduDNphm8xuzGE7Jf/keniB	 XNofbqY1RlPNpLF9aV6FceHSsDLoNEY9TWwqTY8x0mhLO9M3wzpJqK4Lv8hpcEOP45	 Q9cJowOSY53emvmPBu7OKFXBcwClUYyTyxUOKBug=
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
List-Unsubscribe: <mailto:unsub+AUGHELTJJOCFQ46CP7N27DGBGR5OJEVBNHHEA25FAM@reply.github.com>, <https://github.com/notifications/unsubscribe/AUGHELV3QMYXVC3QEJKEMNDV6476JANCNFSM5KDEC6HQ>
X-Auto-Response-Suppress: All
X-GitHub-Recipient-Address: helpdesk@satragroup.in
X-UNKNOWN-HEADER: 
Subject: Re: [SatraMobile/Marg-Sahayak-Web] Pre prod (PR #1)
Date: Sun, 18 Sep 2022 09:33:40 -0700
Message-ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/11059394658@github.com>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: Upendra Tarnoju <notifications@github.com>
To: SatraMobile/Marg-Sahayak-Web <Marg-Sahayak-Web@noreply.github.com>
Cc: helpdesk <helpdesk@satragroup.in>,   Push <push@noreply.github.com>
Return-Path: <noreply@github.com>
content-type: multipart/alternative; charset=utf-8; boundary="--==_mimepart_63274864c9dbc_2c9ad4f8115938"
content-transfer-encoding: 7bit
X-PMAttribute: 1663518832320.17009; mb_id=QSM1413892035136; imapid=30989; del_to=helpdesk

----==_mimepart_63274864c9dbc_2c9ad4f8115938
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit

@upendra-tarnoju pushed 1 commit.

fbfbf8290270e1b3a3320d8329feb71d239d4b61  History and My compliants API

-- 
View it on GitHub:
https://secure-web.cisco.com/1odaF5K6lFBAP6yeXcYiEwp6qbN-NiQq9yeT9r0Dpv2jGicgKrKkkxvwxA4cvw7SsnsoR6CdBrQ8uQMA8ye61c_e-OVrmlKfGg1eGofaQ8TNnbASunkFDKH3Fk3sd3DNVGMpmuv0fWFdbtyRM8es1ghpsthJKoyYQJOiW2J1X_YjFaXwfFsBDmfYo2OAeLYn87bZaZZAjI0eGaOTITct8zEeeq6vg0WFBFUp1yuKjSdaHV0VSerIDTHal4QGx4A6zFS3QOBABbpEOdHkJuND-jPeZS6tHsF23gMAQiZcxnUrA1hv-wlQvPdt7lyAHEZdJRAvISIl__WdA0orQdsPPZQ_jHFGKinsSVnE9sggEUj_3SWOFZVlCT5ygbXPYUSIWpPlgtO2Jeis-TuGwCsrUynwZ9dPKgQymy946l_w19Qh9dVFLsixmwy_VaaIwCTiRQYWgb7lXOPQvZjnbBYFAlg/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2Fpull%2F1%2Ffiles%2Fdc04c895f4ce79798012788b77bf90ed1493407b..fbfbf8290270e1b3a3320d8329feb71d239d4b61
You are receiving this because you are subscribed to this thread.

Message ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/11059394658@github.com>

----==_mimepart_63274864c9dbc_2c9ad4f8115938
content-type: text/html; charset=utf-8
content-transfer-encoding: quoted-printable

<p><a href=3D"https://secure-web.cisco.com/1eNgIgka-GUKH1DDSXoU5D60-TmvLPZJ=
gXErvlwevzHOSW0zwJ8bNi4sL-ccg601gXaoyQV0beRHhzjXdct9AOLFNqyijCP-vNyHeaRTOj3=
-98o1kddcuIJHQvJW1M2O2iVhEQfTKNo7_ayZekeQIzklTsyR9xF9hJsfqzNvoWoQtiT3HZAic5=
4ZTm4jk2aZmB7hmlS_IlINga88u7HN5tPE99o1lcAUz-DZzxnEsuEw1vOq7Z_tvlxFYb19lXhnj=
p3aHdqk5cmaVR3gXveM6FKLdCyM-x48ddnUMedyceWkB8U3D-PfcWAWJ-JMp3PrEngBmerLPlfe=
HgxTZqRURs1LgZDv_RZvNW0Ixj2uPfMMDiRN-qOtNRtszWHlgnu--hHsELKCArQEpkcO0XCS0oZ=
pOIGY3d8Yin7fXtsgaI9Tzo-5HZqnWjgYs1Nqa_GxELMOkPhVtaT4-R8ORqyToTw/https%3A%2=
F%2Fgithub.com%2Fupendra-tarnoju" class=3D"user-mention">@upendra-tarnoju</=
a> pushed 1 commit.</p>

<ul>
  <li><a class=3D"commit-link" href=3D"https://secure-web.cisco.com/1IEvU81=
jbeM-TXdI49zsY9h5HiEi5EoC-h6cLRd8EjlJJf8WE0s5l5r0NqKXWHxksFM412BQZygpvC93dH=
21UIE9-LyEiq2uhxhnQJ-XlwdSJLYwpIKny-eVdwLEHd15xLEEgGhrO7-mjAuNEZuF4fwCixmL2=
66YXEyHwGEH6A0vgHygcjDrqHjkpcZtFmnI-WbMFvFejXojkPdjfGWrjFfrzFoEnQKr4eccX9ih=
F5HU_X-0hV7twjfGOHWxu77BRs2e_DZIq7w5d373tcOm2hUiOhQVTrD-b6Q6dbO0WXMXQlbefhT=
low3j0h7877ISJA6xw--pR-szkNPctIVqzbr4AgsjuqNLKZuBIbkKdrVKZnYtAvTvRCccA2xhHb=
DMzFxTqK9hi7uBLxv65bu3s99KNyrZ72FQ2Gdig6r0hkeHe0CmoHt-j4EHMlXLl0L26T-fF574O=
YXsHYHCplhRqPQ/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2F=
commit%2Ffbfbf8290270e1b3a3320d8329feb71d239d4b61">fbfbf82</a>  History and=
 My compliants API</li>
</ul>

<p style=3D"font-size:small;-webkit-text-size-adjust:none;color:#666;">&mda=
sh;<br /><a href=3D"https://secure-web.cisco.com/1odaF5K6lFBAP6yeXcYiEwp6qb=
N-NiQq9yeT9r0Dpv2jGicgKrKkkxvwxA4cvw7SsnsoR6CdBrQ8uQMA8ye61c_e-OVrmlKfGg1eG=
ofaQ8TNnbASunkFDKH3Fk3sd3DNVGMpmuv0fWFdbtyRM8es1ghpsthJKoyYQJOiW2J1X_YjFaXw=
fFsBDmfYo2OAeLYn87bZaZZAjI0eGaOTITct8zEeeq6vg0WFBFUp1yuKjSdaHV0VSerIDTHal4Q=
Gx4A6zFS3QOBABbpEOdHkJuND-jPeZS6tHsF23gMAQiZcxnUrA1hv-wlQvPdt7lyAHEZdJRAvIS=
Il__WdA0orQdsPPZQ_jHFGKinsSVnE9sggEUj_3SWOFZVlCT5ygbXPYUSIWpPlgtO2Jeis-TuGw=
CsrUynwZ9dPKgQymy946l_w19Qh9dVFLsixmwy_VaaIwCTiRQYWgb7lXOPQvZjnbBYFAlg/http=
s%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2Fpull%2F1%2Ffiles%2F=
dc04c895f4ce79798012788b77bf90ed1493407b..fbfbf8290270e1b3a3320d8329feb71d2=
39d4b61">View it on GitHub</a> or <a href=3D"https://secure-web.cisco.com/1=
_EdOiWjYpaj7zqig4XcJHTrZQv5-7xOHBjLKpVr4VnY3asFg_WO1LKZJXVvQ32pBs-BXlMK_CNJ=
XMUpkP0-rpqmzDCzsEoOSsHquABXxIYaBCl6I2DbzR5yDCpNWJOwZ9s0gy4xNlOLY7PO5AUA-aN=
U4484aW1KRaJWybgXHc6wDnXFYoSJVkF2mJNZkCiRTsd4Lbn4OFSw4-pqDhnsNieE68jMRgG19H=
L78BtzGRpn6v615brUQHGB8MkGIkW5eSl3TPTbtNVbWcaQ2kOfVcra5atJW3pCGm3PIQQxhc4AE=
zB-41pWIcBpv9wjK86NjhpokcEKemdhrrZkqa_7AHmXofDZgFMcygG6puZKkTqLlpyQuL_uy9l_=
fbHFdgm-UxUxJJND4dmlhxKleCTWOhMrhV_7VCtLwh6aFmSnBnZojKIr5paEuOxSoe56SCHHpKI=
GREBc9Nh6oonzZwaO5Vw/https%3A%2F%2Fgithub.com%2Fnotifications%2Funsubscribe=
-auth%2FAUGHELUTYIWGX2SYIS7AKOLV6476JANCNFSM5KDEC6HQ">unsubscribe</a>.<br /=
>You are receiving this because you are subscribed to this thread.<img src=
=3D"https://secure-web.cisco.com/1QjfmwXGSv-6yZYG0horYbAWNEMptu96A97n2WvRZ8=
szjCPKdaDt976jC4vjFinT8dU-sqKqXKAmqEgdbz56H6Rqxs-SGWfFxzcJd05Qa-GVYZDtQ-NIW=
Y_TsoruLb5Z5JBoYMakWvP8m_UrOBmOW0JINwFe9d6HEEgAuvyBaAn6NQAdx8h-CH2Lfhl21h8D=
YR22G4u-kATAoz6_OlmgDdMhW55zEvS0Gk1VA6T3ym9Al6L9ZAFWsckcRPqrOsAvr2l0EQatQjD=
Jh4ZkZnXjOWelNvMfjT6FYusAcQSjTjleXwAI1D9fJLY7000A1hOqbX8_h2mwT-ikJ7C4KxhSKL=
TpbGkJRCcy9VnlhWNhemEWMwN7H1xlRhmRK7MUp3vjIv5aZOUVmXWUc_i3wb9bKNVYMnMVqVOEL=
RPIZb-K2NJEl1wxs3C0Ta4Li0wbMFYnkNHfegnvXHHUFT8oyzARm5Q/https%3A%2F%2Fgithub=
.com%2Fnotifications%2Fbeacon%2FAUGHELRRDGSHQKXJFU3XAMLV6476JA5CNFSM5KDEC6H=
2YY3PNVWWK3TUL52HS4DFXNIHK3DMKJSXC5LFON2FA5LTNBHG65DJMZUWGYLUNFXW5KTDN5WW2Z=
LOORPWSZF6KB2WY3BDHAYDGMRVGU3TEOKQOVZWQIZRGEYDKOJTHE2DMNJY.gif" height=3D"1=
" width=3D"1" alt=3D"" /><span style=3D"color: transparent; font-size: 0; d=
isplay: none; visibility: hidden; overflow: hidden; opacity: 0; width: 0; h=
eight: 0; max-width: 0; max-height: 0; mso-hide: all">Message ID: <span>&lt=
;SatraMobile/Marg-Sahayak-Web/pull/1/push/11059394658</span><span>@</span><=
span>github</span><span>.</span><span>com&gt;</span></span></p>
<script type=3D"application/ld+json">[
{
"@context": "http://schema.org",
"@type": "EmailMessage",
"potentialAction": {
"@type": "ViewAction",
"target": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/dc0=
4c895f4ce79798012788b77bf90ed1493407b..fbfbf8290270e1b3a3320d8329feb71d239d=
4b61",
"url": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/dc04c8=
95f4ce79798012788b77bf90ed1493407b..fbfbf8290270e1b3a3320d8329feb71d239d4b6=
1",
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

----==_mimepart_63274864c9dbc_2c9ad4f8115938--
