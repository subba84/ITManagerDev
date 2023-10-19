X-Qmail-Scanner-Diagnostics: from 192.168.8.22 by vdvm33.logix.local (envelope-from <prvs=25072f1ae=rajeev.sharma@hp.gov.in>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.8.22):SA:0(IronPort):.  Processed in 0.049601 secs); 15 Sep 2022 10:54:54 -0000
Authentication-Results: tblr2.logix.in; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=prvs=25072f1ae=rajeev.sharma@hp.gov.in; spf=None smtp.helo=postmaster@vastu24.nic.in
Received-SPF: Pass (tblr2.logix.in: domain of  prvs=25072f1ae=rajeev.sharma@hp.gov.in designates  164.100.10.71 as permitted sender) identity=mailfrom;  client-ip=164.100.10.71; receiver=tblr2.logix.in;  envelope-from="prvs=25072f1ae=rajeev.sharma@hp.gov.in";  x-sender="prvs=25072f1ae=rajeev.sharma@hp.gov.in";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 mx ip4:164.100.14.0/24  ip4:164.100.2.0/24 ip4:164.100.10.0/24 ip4:164.100.15.0/24  ip4:164.100.138.223 ip4:164.100.138.251  include:_spf.google.com include:_spf.yahoo.com ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@vastu24.nic.in) identity=helo;  client-ip=164.100.10.71; receiver=tblr2.logix.in;  envelope-from="prvs=25072f1ae=rajeev.sharma@hp.gov.in";  x-sender="postmaster@vastu24.nic.in"; x-conformance=spf_only
X-Ironport-Dmarc-Check-Result: validskip
IronPort-SDR: VxWvHXKrF7tuMdlDNHPAGXMP6NiPHEP6oXznT4XXuU9q0M3DA8aZIqHlhoCHux70LgxKdd+Amu mZYz1OstqYLAMONNcMWkC8x2UxcnL4hak=
X-ORIGINAL-IP: 164.100.10.71
X-ORIGINAL-TIME: 15 Sep 2022 16:24:52 +0530
x-rcpt-to: helpdesk@satragroup.in
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,317,1654540200";    d="scan'208,217";a="335102435"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
Received: from prvs=25072f1ae=rajeev.sharma@hp.gov.in([192.168.1.1]) 	by PME Mail With Id 1663239329371.15131;Thu, 15 Sep 2022 16:25:29 +0530 (IST)
Received: from vdvm33.logix.local (127.0.0.1) by tblr42.logix.in id h4c29q1oo382 for <helpdesk@satragroup.in>; Thu, 15 Sep 2022 16:24:54 +0530 (envelope-from <prvs=25072f1ae=rajeev.sharma@hp.gov.in>)
Received: (qmail 92783 invoked by uid 1012); 15 Sep 2022 10:54:54 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.8.22])          (envelope-sender <prvs=25072f1ae=rajeev.sharma@hp.gov.in>)          by vdvm33.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 15 Sep 2022 10:54:54 -0000
Received: from vastu24.nic.in ([164.100.10.71])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2022 16:24:49 +0530
IronPort-Data: A9a23:Tjmp36jm0/btT7SyNsGLUdMlX161LxEKZh0ujC45NGQN5FlHY01je htvC27QM6yCYDOhedkiPtu+pBwFu8WAxoQyTgE5rXphEykW8JqUDtmwEBz9bniYRiHhoOKLz Cm/hv3odp1coqr0/0/1WlTHhSchjfngqp3UUbaYZXgZqTdMEXtn0VQ58wIAqtYAbeKRW2thg vuv5ZyEULOZ82QsaDhMuvve8EoHUMna4Vv0gHRvPZing3eDzxH5PLpHTU1mByKlKmX8NrfSq 9frlNlVzEuBl/seIorNfoLAT6E/auW60T5iJZZhc/PKbhBq/kTe20ugXRYWQR8/Zz6hx7idx DjR3HC9YV9BA0HCpAgSe15SDABgZo0Yw72dJFufg9aBxkzfXnS5lp2CDGluVWEZ0ulvBm5Rr aNeLjEGKBGF7w606OvjEq883oJ6dY+3ZevzuVk5pd3dJewvQ53OXePR5dZC2T4YhtgIEvHAI csfAdZqREqbM0AeagtLWfrSms+ToVOhWDNaiGvFjoRq0zGUkDR3z7nEZY+9ltuiAJ89clyjj mLL+3z1DwoZctyH0jaO2nK0g+bOmWX0X5xUFbvQ3vh1m1CYgGwLExEdfVujpPC4jgixXMwZK kp80iojqbA++VeoZsL0Qwexr2SDowZaWtw4LgEhwFjVkuyEu0DAXy5YF1atdeAbiSP/fhRyv nfhoj8jLWU/2FFJYRpxLoupkA4=
IronPort-HdrOrdr: A9a23:Gd/MTawDDe04Xu9wP22pKrPwHr1zdoMgy1knxilNoNJuA6ilfq GV/cjzuiWE6gr5NEtOpTnEAtjkfZqjz/BICPgqXYtKNTOO0ADEQL2Kr7GSpQEIcBeOldK1u5 0QFJRWOZnZCVBkjdy/xA+0E9khzNTvysqVbJ/lvg5QcT0=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
In-Reply-To: <148073400.2663137.1663237763765@nic.in>
References: <004901d8bec2$f60b53e0$e221fba0$@satragroup.in> <cd7dc853606c4855ae40cedbdd65feb0@HPDCSMTPSVR1.hpmail.gov> <1735574236.4088227.1662377453989@nic.in> <148073400.2663137.1663237763765@nic.in>
X-UNKNOWN-HEADER: 
Subject: Re: Server Connection Issue
Date: Thu, 15 Sep 2022 16:24:39 +0530
Message-ID: <153B85F6-2925-44EC-A7EA-AF825EC2EF2D@hp.gov.in>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: Rajeev Sharma <rajeev.sharma@hp.gov.in>
To: Pawan Kumar Sharma <pdsrp-hp@nic.in>
Cc: helpdesk <helpdesk@satragroup.in>,  helpdesk.hpsdc@hpmail.gov.in,  nwsec.hpsdc@hpmail.gov.in
Return-Path: <prvs=25072f1ae=rajeev.sharma@hp.gov.in>
content-type: multipart/alternative; boundary="Apple-Mail=_AD14DC5C-236F-47AA-AC52-402D84094A0A"
X-PMAttribute: 1663239329371.15131; mb_id=QSM1413892035136; imapid=30960; del_to=helpdesk

--Apple-Mail=_AD14DC5C-236F-47AA-AC52-402D84094A0A
content-type: text/plain; charset=utf-8
content-transfer-encoding: quoted-printable

Please do the needful.

Yours sincerely,

Rajeev Sharma,
Additional Director,
Department of Information Technology,
Himachal Pradesh

Mobile: +919418450005

> On 15-Sep-2022, at 15:59, Pawan Kumar Sharma <pdsrp-hp@nic.in> wrote:
>=20
>=20
>=20
> From: "Pawan Kumar Sharma" <pdsrp-hp@nic.in <mailto:pdsrp-hp@nic.in>>
> To: "Rajeev Sharma" <rajeev.sharma@hp.gov.in <mailto:rajeev.sharma@hp.gov=
.in>>
> Cc: rajg@satragroup.in <mailto:rajg@satragroup.in>, "sysadmin hpsdc" <sys=
admin.hpsdc@hpmail.gov.in <mailto:sysadmin.hpsdc@hpmail.gov.in>>, "nwsec hp=
sdc" <nwsec.hpsdc@hpmail.gov.in <mailto:nwsec.hpsdc@hpmail.gov.in>>, "helpd=
esk hpsdc" <helpdesk.hpsdc@hpmail.gov.in <mailto:helpdesk.hpsdc@hpmail.gov.=
in>>
> Sent: Monday, September 5, 2022 5:00:54 PM
> Subject: Re: Server Connection Issue
>=20
> Dear Sir,=20
>              As desired, please find the attached VPN and Firewall change=
 request forms duly signed and stamped by the undersigned for further neces=
sary action please.
>=20
>=20
> With Best Regards,
>=20
> (Pawan Kumar Sharma)
> Director (Projects)-cum-CE,
> HPSRP, HPRIDCL,
> Shimla (HP)
>=20
>=20
>=20
> From: "helpdesk hpsdc" <helpdesk.hpsdc@hpmail.gov.in>
> To: rajg@satragroup.in
> Cc: "Pawan Kumar Sharma" <pdsrp-hp@nic.in>, "sysadmin hpsdc" <sysadmin.hp=
sdc@hpmail.gov.in>, "nwsec hpsdc" <nwsec.hpsdc@hpmail.gov.in>
> Sent: Friday, September 2, 2022 5:29:23 PM
> Subject: RE: Server Connection Issue
>=20
> Dear Sir,
> =20
> This is to inform you that your VPN for HPRIDC has expired. Kindly find  =
enclosed the require HPSDC VPN request form, should be dully filled along w=
ith sign and stamp of the concerned department.
> =20
> Request you to mail the filled forms to  - 'rajeev.sharma@hp.gov.in <mail=
to:rajeev.sharma@hp.gov.in>'  Additional Director - Department of Informati=
on Technology - for approval  and keep helpdesk ID in cc.
> =20
> Best Regards,
> Devansh Jhina
> Support Team - HPSDC
> Phone: +91-7807401412
> Intercom#101
> Email: helpdesk.hpsdc@hpmail.gov.in <mailto:helpdesk.hpsdc@hpmail.gov.in>
> http://secure-web.cisco.com/106X5hQZT0wSoOslm4zKnNTInv5WNI0OOQcG2TsI-k9UT=
3p-ivv_GycKy_kn75zNXmMeN8YAQF2-LMESeL9wFlatOCyt4T8Tq7Ci6ZQRIca4gD5-UK6P10Hv=
a_V4kZHzbNt-q-ePJxnJcQwLfuDZKaP2wQeCwWWwwmFJj2OIltIzSIG1EpVP5FpqpxkO0bf5N8N=
UJhz03uea5nlUHbbQNacBJ1kC-9LBqjS5UYjG1Ax8VI3sGTxT_OOqO4xev39ieoUMAN0DI-7uah=
iZOTwLAr3zX3hEJrT2uQVirMLMWJ205aCdEoCk9DxLSlGnSRgcStNuxOzZnNUJYaX79xnTRTKh3=
3I8uAxeV7d_fiewezmnRdMp0SiZEgjAhCDX-bH2sPLyk-483MY87RCjG1KiV_40XjVmnaIAGjxT=
9RV8zoMQ/http%3A%2F%2Fwww.orange-business.com <http://secure-web.cisco.com/=
1e_BxE6LNcCUm1O7xkfUVndwx08Q3NhF7mYIne-KpUITvsE1vjBGFxse1giikAHvukcQQ9ocPuv=
3F_1Hk2leOOJVSxuMx1r8ZbT7ecbDx0MQ7_KGRbsjknCF087indgJXLWJnWdaFBAT0Cp3eVttDp=
Yg1im73ZcdQblYohYtEkNYyjZ96c_8RJK3fxoF_91CXS85L1HJTS1aYwuBN8bmiPBIq4eqnnEOW=
Sw2sfIy40HsLhdiBuWNS-1LnyIT2UOxhqSZpcN6EpQzHgglgZ2kvzsuOTPifVWaB_hdyCv35UfZ=
X1DXlyd_jitEHYbHC2ugf8LXBmMdREl955SDHsHDBIqDB-mXMvpvTcoMv_GNnJVJArx8_CQDeLj=
9gniTL0G1Y7BcmIV8Uy7hOc0MhbVEdRvTiOBgJOJnbGsn8K59mJUo/http%3A%2F%2Fwww.oran=
ge-business.com%2F>
> =20
> =20
> From: Rajshekar Gotimukul [mailto:rajg@satragroup.in]=20
> Sent: Friday, September 2, 2022 5:26 PM
> To: helpdesk.hpsdc <helpdesk.hpsdc@hpmail.gov.in>
> Subject: Server Connection Issue
> =20
> Hi Team,
> =20
> We are unable to connect to our server. Can you please resolve it.
> =20
> <image001.png>
> =20
> Regards,
> <image002.png>
>=20
> G.Rajshekar
> Director =E2=80=93 Asset Management
> India:  +91 91773 00182
> e-mail: rajg@satragroup.in <mailto:rajg@satragroup.in>
> Skype: rajgotimukul
> http://secure-web.cisco.com/1qEPSNSV3ymgmS9mRD9cwfJAa3payFZA-gjsN7i7N9b9v=
6tXWGAHtFgZUROBOP97oXHqZmlHgqT_CBHzG65PtliVV57t4UWvsDoSIymGCAo6z4JJkpLGYrWq=
DGXeb2rBTkeXT4IPh4sz-ku56asUs_yvqZhiqBMLFbFJPKhxRWiG1BRKIPk4M_kqkyJVEmClmwr=
xnxrihJUMn7Yom2YNTi2pEz7qiiDa3BwQVs_gpSSdtJ1ucXkO1CvkeXFvyx83ej-8C2LvlzqGdR=
TZoxrE9F0ap5nZluJoFd_pmUEL4GMXdEwU8DDOQqQJn4e5dInZ2cwCdTmDWWhCFii39Cn14nTP5=
0I0yOicAyumrHSLOMrX30HOi93j2uJxLhrE0_egyiG041wOwvTsF7ccqTltsflLPXNN6TzTU-Ai=
vPWmrHns/http%3A%2F%2Fwww.satragroup.in <http://secure-web.cisco.com/1Qx0LQ=
uSLuhIodsKBCn4Cs-Yiux3dky28exmwuDCvCHl0PwE7L6xroMuD_5bq3MwBV3VP0Tr2eHpwurx3=
ZD3GqgoHth4BeHt9M1MNQFiQpePLNO4fla_TUb5zz5WIno1KdSjeJgfFkNpla8RpvgogO5Lcp50=
Nuj8F7N8kY_zU_iLe1JaA63epApIYWvXpNGsHBbXniBsnX47Pw8mVfEjXG5i8gYKZBOR7qh5xQN=
Ta4BDuQVtipzyR24DjnOmyxLRU0fXnpHP1qjDzH1pxpwD8UOyz2yGjzv5wg3c0KZqLQHFzycujj=
CfTkhsvftrmmo1iMNKwM5yaxvYHM9XJpEG_hCjp4ySq5ErmXnXFkguC3PIgd66jtbC93_lgdjSo=
MRTi_Z8ZQz8RgJeoweBDp233YBPtGZIsaSfEPL0rdfPDCNs/http%3A%2F%2Fwww.satragroup=
.in%2F>
> SATRA Infrastructure Management Services Pvt Ltd now has been rebranded a=
s SATRA Services and Solutions Pvt Ltd.=20
> **** LEGAL DISCLAIMER **** This e-mail including any attachment(s) may co=
ntain confidential and/or legally privileged information and is meant for t=
he intended recipient(s) only. If you have received this e-mail in error an=
d are not the intended recipient/s, kindly notify us at helpdesk@satragroup=
.in <mailto:helpdesk@satragroup.in> and delete this e-mail immediately from=
 your system. You are also hereby notified that any use, any form of reprod=
uction, dissemination, copying, disclosure, modification, distribution and/=
or publication of this e-mail, its contents or its attachment(s) other than=
 by its intended recipient(s) is strictly prohibited and may be unlawful.
> Communications over internet cannot be guaranteed to be secure or error-f=
ree as information could be delayed, intercepted, corrupted, lost, or may c=
ontain viruses that may partially or substantially alter the intended infor=
mation/attachment(s). SATRA GROUP does not accept liability for any errors,=
 omissions, viruses or computer problems experienced by any recipient(s) as=
 a result of this e-mail.
> P Let=E2=80=99s consider our environmental responsibility before printing=
 this e-mail - Save paper.
> =20
> =20
> =20
> =20
> ------------------------------------
> Satra I Man Pvt Ltd, Begumpet, India
> =20
> ****************************************************************** CAUTIO=
N - Disclaimer ************************************************************=
*************** The information contained in this communication is intended=
 solely for the use of the individual or entity to whom it is addressed and=
 others authorized to receive it. It may contain confidential or legally pr=
ivileged information. If you are not the intended recipient you are hereby =
notified that any disclosure, copying, distribution or taking any action in=
 reliance on the contents of this information is strictly prohibited and ma=
y be unlawful. If you have received this communication in error, please not=
ify us immediately by responding to this email and then delete it from your=
 system. The firm is neither liable for the proper and complete transmissio=
n of the information contained in this communication nor for any delay in i=
ts receipt.
>=20
>=20
>  <https://secure-web.cisco.com/1n9GW1ky6HigYv--NN0TFQSAwcIIJ4hcUewIGEnMbO=
zfnOXsAnmx992we1KOnog131zFRnCmC1LQbIT7yI484qrBbGRu8bvdBg0UTucFw4g3e9Rb6vomn=
IpOWWRtt-GvzuX1akg3soNsh3GM97N2Wyx3zcA1rQkN_XYh2dn4n1wUwSkU0-uoOnYUsYFhWiWf=
2R64y1mNpHGA72xwqrC7X7397ai3Ghv7AgBytBQnZDIdrMzrLdHW8eUSMw0eim-ld5z4k4RzFsZ=
j5_sZqbccrHzIPLbvDPFGH8n6B4Zd21PumHviOX1ynJ0k0RyKZSGJ0z-Axi5SgRYVyVtCX5E3LZ=
qjI2p-pUfa2yhPsNCaw8WFPdT9Kihd946LtYxadoqEQOjTJMK8b27koX0E61RJiUG0PHvFe0oO-=
MoIRS6BlJ6M/https%3A%2F%2Famritmahotsav.nic.in%2F>
> <20220905_052321.pdf><20220905_052251.pdf>




--Apple-Mail=_AD14DC5C-236F-47AA-AC52-402D84094A0A
content-type: text/html; charset=utf-8
content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D"">Please do the needful.<div=
 class=3D""><br class=3D""><div class=3D"">
<div dir=3D"auto" style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); =
letter-spacing: normal; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: =
0px; text-decoration: none; word-wrap: break-word; -webkit-nbsp-mode: space=
; line-break: after-white-space;" class=3D""><div style=3D"color: rgb(0, 0,=
 0); letter-spacing: normal; text-align: start; text-indent: 0px; text-tran=
sform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; word-wrap: break-word; -webkit-nbsp-mode: space; line-break: afte=
r-white-space;" class=3D"">Yours sincerely,<br class=3D""><br class=3D"">Ra=
jeev Sharma,<br class=3D"">Additional Director,<br class=3D"">Department of=
 Information Technology,<br class=3D"">Himachal Pradesh</div><div style=3D"=
color: rgb(0, 0, 0); letter-spacing: normal; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; word-wrap: break-word; -webkit-nbsp-mode: space; =
line-break: after-white-space;" class=3D""><br class=3D"">Mobile: +91941845=
0005</div></div>
</div>
<div><br class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On=
 15-Sep-2022, at 15:59, Pawan Kumar Sharma &lt;<a href=3D"mailto:pdsrp-hp@n=
ic.in" class=3D"">pdsrp-hp@nic.in</a>&gt; wrote:</div><br class=3D"Apple-in=
terchange-newline"><div class=3D""><meta charset=3D"UTF-8" class=3D""><div =
font-size:=3D"" 12pt;=3D"" color:=3D"" #000000"=3D"" style=3D"caret-color: =
rgb(0, 0, 0); font-size: 12px; font-style: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; text-decoration: none; font-family: arial, helvet=
ica, sans-serif;" class=3D""><div class=3D""><br class=3D"Apple-interchange=
-newline"><br class=3D""></div><hr id=3D"zwchr" data-marker=3D"__DIVIDER__"=
 class=3D""><div data-marker=3D"__HEADERS__" class=3D""><b class=3D"">From:=
<span class=3D"Apple-converted-space">&nbsp;</span></b>"Pawan Kumar Sharma"=
 &lt;<a href=3D"mailto:pdsrp-hp@nic.in" style=3D"color: rgb(149, 79, 114); =
text-decoration: underline;" class=3D"">pdsrp-hp@nic.in</a>&gt;<br class=3D=
""><b class=3D"">To:<span class=3D"Apple-converted-space">&nbsp;</span></b>=
"Rajeev Sharma" &lt;<a href=3D"mailto:rajeev.sharma@hp.gov.in" style=3D"col=
or: rgb(149, 79, 114); text-decoration: underline;" class=3D"">rajeev.sharm=
a@hp.gov.in</a>&gt;<br class=3D""><b class=3D"">Cc:<span class=3D"Apple-con=
verted-space">&nbsp;</span></b><a href=3D"mailto:rajg@satragroup.in" style=
=3D"color: rgb(149, 79, 114); text-decoration: underline;" class=3D"">rajg@=
satragroup.in</a>, "sysadmin hpsdc" &lt;<a href=3D"mailto:sysadmin.hpsdc@hp=
mail.gov.in" style=3D"color: rgb(149, 79, 114); text-decoration: underline;=
" class=3D"">sysadmin.hpsdc@hpmail.gov.in</a>&gt;, "nwsec hpsdc" &lt;<a hre=
f=3D"mailto:nwsec.hpsdc@hpmail.gov.in" style=3D"color: rgb(149, 79, 114); t=
ext-decoration: underline;" class=3D"">nwsec.hpsdc@hpmail.gov.in</a>&gt;, "=
helpdesk hpsdc" &lt;<a href=3D"mailto:helpdesk.hpsdc@hpmail.gov.in" style=
=3D"color: rgb(149, 79, 114); text-decoration: underline;" class=3D"">helpd=
esk.hpsdc@hpmail.gov.in</a>&gt;<br class=3D""><b class=3D"">Sent:<span clas=
s=3D"Apple-converted-space">&nbsp;</span></b>Monday, September 5, 2022 5:00=
:54 PM<br class=3D""><b class=3D"">Subject:<span class=3D"Apple-converted-s=
pace">&nbsp;</span></b>Re: Server Connection Issue<br class=3D""></div><div=
 class=3D""><br class=3D""></div><div data-marker=3D"__QUOTED_TEXT__" class=
=3D""><div style=3D"font-family: arial, helvetica, sans-serif;" class=3D"">=
<div style=3D"font-family: arial, helvetica, sans-serif; font-size: 14.16px=
; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent=
: 0px; text-transform: none; white-space: normal; word-spacing: 0px; backgr=
ound-color: rgb(253, 253, 253); text-align: justify;" class=3D""><span styl=
e=3D"font-family: &quot;times new roman&quot;, &quot;new york&quot;, serif;=
 font-size: 13pt;" class=3D"">Dear Sir,&nbsp;</span><span style=3D"font-siz=
e: 13pt; font-family: &quot;times new roman&quot;, &quot;new york&quot;, se=
rif;" class=3D""></span></div><div style=3D"font-family: arial, helvetica, =
sans-serif; font-size: 14.16px; font-style: normal; font-weight: 400; lette=
r-spacing: normal; text-indent: 0px; text-transform: none; white-space: nor=
mal; word-spacing: 0px; background-color: rgb(253, 253, 253); text-align: j=
ustify;" class=3D""><div style=3D"margin: 0px; font-size: 11pt; font-family=
: calibri, sans-serif; background-color: white;" class=3D""><span style=3D"=
font-family: &quot;times new roman&quot;, &quot;new york&quot;, serif; font=
-size: 13pt;" class=3D"">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nb=
sp;As desired,&nbsp;p<span style=3D"color: rgb(68, 84, 106);" class=3D"">le=
ase find the attached&nbsp;<span id=3D"DWT850" class=3D"ZmSearchResult"><sp=
an id=3D"DWT910" class=3D"ZmSearchResult"><span id=3D"DWT2382" class=3D"ZmS=
earchResult">VPN</span></span></span>&nbsp;and Firewall change request form=
s duly signed and stamped by the undersigned for further necessary action p=
lease.</span></span></div></div><div style=3D"font-family: arial, helvetica=
, sans-serif; font-size: 14.16px; font-style: normal; font-weight: 400; let=
ter-spacing: normal; text-indent: 0px; text-transform: none; white-space: n=
ormal; word-spacing: 0px; background-color: rgb(253, 253, 253);" class=3D""=
><div style=3D"margin: 0px; font-size: 11pt; font-family: calibri, sans-ser=
if; background-color: white; text-align: justify;" class=3D""><span style=
=3D"font-size: 13pt; font-family: &quot;times new roman&quot;, &quot;new yo=
rk&quot;, serif; color: rgb(68, 84, 106);" class=3D""></span><br class=3D""=
></div><div style=3D"margin: 0px; font-size: 11pt; font-family: calibri, sa=
ns-serif; background-color: white; text-align: justify;" class=3D""><span s=
tyle=3D"font-size: 13pt; font-family: &quot;times new roman&quot;, &quot;ne=
w york&quot;, serif; color: rgb(68, 84, 106);" class=3D""></span><br class=
=3D""></div><div style=3D"font-size: 16px; background-color: rgb(255, 255, =
255); text-align: justify;" class=3D""><span style=3D"font-size: 13pt; font=
-family: &quot;times new roman&quot;, &quot;new york&quot;, serif;" class=
=3D"">With Best Regards,</span></div><div style=3D"font-size: 16px; backgro=
und-color: rgb(255, 255, 255); text-align: justify;" class=3D""><span style=
=3D"font-size: 13pt; font-family: &quot;times new roman&quot;, &quot;new yo=
rk&quot;, serif;" class=3D""><br class=3D""></span></div><div style=3D"font=
-size: 16px; background-color: rgb(255, 255, 255); text-align: justify;" cl=
ass=3D""><span style=3D"font-family: &quot;times new roman&quot;, &quot;new=
 york&quot;, serif; font-size: 13pt;" class=3D"">(Pawan Kumar Sharma)</span=
><br class=3D""><span style=3D"font-size: 13pt; font-family: &quot;times ne=
w roman&quot;, &quot;new york&quot;, serif;" class=3D"">Director (Projects)=
-cum-CE,</span><br class=3D""><span style=3D"font-family: &quot;times new r=
oman&quot;, &quot;new york&quot;, serif; font-size: 13pt;" class=3D"">HPSRP=
,&nbsp;HPRIDCL,</span></div><div style=3D"font-size: 16px; background-color=
: rgb(255, 255, 255); text-align: justify;" class=3D""><span style=3D"font-=
size: 13pt; font-family: &quot;times new roman&quot;, &quot;new york&quot;,=
 serif;" class=3D"">Shimla (HP)</span></div></div><br class=3D""><div class=
=3D""></div><br class=3D""><br class=3D""><hr id=3D"zwchr" class=3D""><div =
class=3D""><b class=3D"">From:<span class=3D"Apple-converted-space">&nbsp;<=
/span></b>"helpdesk hpsdc" &lt;<a href=3D"mailto:helpdesk.hpsdc@hpmail.gov.=
in" class=3D"">helpdesk.hpsdc@hpmail.gov.in</a>&gt;<br class=3D""><b class=
=3D"">To:<span class=3D"Apple-converted-space">&nbsp;</span></b><a href=3D"=
mailto:rajg@satragroup.in" class=3D"">rajg@satragroup.in</a><br class=3D"">=
<b class=3D"">Cc:<span class=3D"Apple-converted-space">&nbsp;</span></b>"Pa=
wan Kumar Sharma" &lt;pdsrp-hp@nic.in&gt;, "sysadmin hpsdc" &lt;sysadmin.hp=
sdc@hpmail.gov.in&gt;, "nwsec hpsdc" &lt;nwsec.hpsdc@hpmail.gov.in&gt;<br c=
lass=3D""><b class=3D"">Sent:<span class=3D"Apple-converted-space">&nbsp;</=
span></b>Friday, September 2, 2022 5:29:23 PM<br class=3D""><b class=3D"">S=
ubject:<span class=3D"Apple-converted-space">&nbsp;</span></b>RE: Server Co=
nnection Issue<br class=3D""></div><br class=3D""><div class=3D""><div clas=
s=3D""><div style=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sa=
ns-serif;" class=3D""><span style=3D"" class=3D"">Dear Sir,</span></div><p =
class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: Cal=
ibri, sans-serif;"><span style=3D"" class=3D"">&nbsp;</span></p><div style=
=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif;" class=
=3D""><span style=3D"" class=3D"">This is to inform you that your VPN for H=
PRIDC has expired. Kindly find&nbsp; enclosed the require HPSDC VPN request=
 form, should be dully filled along with sign and stamp of the concerned de=
partment.</span></div><p class=3D"MsoNormal" style=3D"margin: 0in; font-siz=
e: 11pt; font-family: Calibri, sans-serif;"><span style=3D"" class=3D"">&nb=
sp;</span></p><div style=3D"margin: 0in; font-size: 11pt; font-family: Cali=
bri, sans-serif;" class=3D""><span style=3D"" class=3D"">Request you to mai=
l the filled forms to &nbsp;- '<a href=3D"mailto:rajeev.sharma@hp.gov.in" r=
el=3D"nofollow noopener noreferrer nofollow noopener noreferrer" target=3D"=
_blank" style=3D"color: rgb(149, 79, 114); text-decoration: underline;" cla=
ss=3D""><span style=3D"" class=3D"">rajeev.sharma@hp.gov.in</span></a>'&nbs=
p; Additional Director - Department of Information Technology - for approva=
l&nbsp; and keep helpdesk ID in cc.</span></div><p class=3D"MsoNormal" styl=
e=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif;"><span=
 style=3D"" class=3D"">&nbsp;</span></p><div style=3D"margin: 0in; font-siz=
e: 11pt; font-family: Calibri, sans-serif;" class=3D""><span style=3D"" cla=
ss=3D"">Best Regards,</span></div><div style=3D"margin: 0in; font-size: 11p=
t; font-family: Calibri, sans-serif;" class=3D""><span style=3D"" class=3D"=
">Devansh Jhina</span></div><div style=3D"margin: 0in; font-size: 11pt; fon=
t-family: Calibri, sans-serif;" class=3D""><span style=3D"" class=3D"">Supp=
ort Team - HPSDC</span></div><div style=3D"margin: 0in; font-size: 11pt; fo=
nt-family: Calibri, sans-serif;" class=3D""><span style=3D"" class=3D"">Pho=
ne: +91-7807401412</span></div><div style=3D"margin: 0in; font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D""><span style=3D"" class=3D"">I=
ntercom#101</span></div><div style=3D"margin: 0in; font-size: 11pt; font-fa=
mily: Calibri, sans-serif;" class=3D""><span style=3D"" class=3D"">Email:<s=
pan class=3D"Apple-converted-space">&nbsp;</span><a href=3D"mailto:helpdesk=
.hpsdc@hpmail.gov.in" rel=3D"nofollow noopener noreferrer nofollow noopener=
 noreferrer" target=3D"_blank" style=3D"color: rgb(149, 79, 114); text-deco=
ration: underline;" class=3D""><span style=3D"" class=3D"">helpdesk.hpsdc@h=
pmail.gov.in</span></a></span></div><div style=3D"margin: 0in; font-size: 1=
1pt; font-family: Calibri, sans-serif;" class=3D""><span style=3D"" class=
=3D""><a href=3D"http://secure-web.cisco.com/1e_BxE6LNcCUm1O7xkfUVndwx08Q3N=
hF7mYIne-KpUITvsE1vjBGFxse1giikAHvukcQQ9ocPuv3F_1Hk2leOOJVSxuMx1r8ZbT7ecbDx=
0MQ7_KGRbsjknCF087indgJXLWJnWdaFBAT0Cp3eVttDpYg1im73ZcdQblYohYtEkNYyjZ96c_8=
RJK3fxoF_91CXS85L1HJTS1aYwuBN8bmiPBIq4eqnnEOWSw2sfIy40HsLhdiBuWNS-1LnyIT2UO=
xhqSZpcN6EpQzHgglgZ2kvzsuOTPifVWaB_hdyCv35UfZX1DXlyd_jitEHYbHC2ugf8LXBmMdRE=
l955SDHsHDBIqDB-mXMvpvTcoMv_GNnJVJArx8_CQDeLj9gniTL0G1Y7BcmIV8Uy7hOc0MhbVEd=
RvTiOBgJOJnbGsn8K59mJUo/http%3A%2F%2Fwww.orange-business.com%2F" rel=3D"nof=
ollow noopener noreferrer nofollow noopener noreferrer" target=3D"_blank" s=
tyle=3D"color: rgb(149, 79, 114); text-decoration: underline;" class=3D""><=
span style=3D"" class=3D"">www.orange-business.com</span></a></span></div><=
p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: C=
alibri, sans-serif;"><span style=3D"" class=3D"">&nbsp;</span></p><p class=
=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: Calibri,=
 sans-serif;"><span style=3D"color: rgb(31, 73, 125);" class=3D"">&nbsp;</s=
pan></p><div style=3D"margin: 0in; font-size: 11pt; font-family: Calibri, s=
ans-serif;" class=3D""><b class=3D"">From:</b><span class=3D"Apple-converte=
d-space">&nbsp;</span>Rajshekar Gotimukul [<a href=3D"mailto:rajg@satragrou=
p.in" class=3D"">mailto:rajg@satragroup.in</a>]<span class=3D"Apple-convert=
ed-space">&nbsp;</span><br class=3D""><b class=3D"">Sent:</b><span class=3D=
"Apple-converted-space">&nbsp;</span>Friday, September 2, 2022 5:26 PM<br c=
lass=3D""><b class=3D"">To:</b><span class=3D"Apple-converted-space">&nbsp;=
</span>helpdesk.hpsdc &lt;<a href=3D"mailto:helpdesk.hpsdc@hpmail.gov.in" c=
lass=3D"">helpdesk.hpsdc@hpmail.gov.in</a>&gt;<br class=3D""><b class=3D"">=
Subject:</b><span class=3D"Apple-converted-space">&nbsp;</span>Server Conne=
ction Issue</div><p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11=
pt; font-family: Calibri, sans-serif;">&nbsp;</p><div style=3D"margin: 0in;=
 font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Hi Team,</d=
iv><p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-famil=
y: Calibri, sans-serif;">&nbsp;</p><div style=3D"margin: 0in; font-size: 11=
pt; font-family: Calibri, sans-serif;" class=3D"">We are unable to connect =
to our server. Can you please resolve it.</div><p class=3D"MsoNormal" style=
=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif;">&nbsp;=
</p><div style=3D"margin: 0in; font-size: 11pt; font-family: Calibri, sans-=
serif;" class=3D""><span id=3D"cid:image001.png@01D8BEF1.8A484EE0">&lt;imag=
e001.png&gt;</span></div><p class=3D"MsoNormal" style=3D"margin: 0in; font-=
size: 11pt; font-family: Calibri, sans-serif;">&nbsp;</p><div style=3D"marg=
in: 0in; font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><sp=
an lang=3D"EN-IN" style=3D"color: rgb(31, 73, 125);" class=3D"">Regards,</s=
pan></div><table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" ce=
llpadding=3D"0" style=3D"border-collapse: collapse;"><tbody class=3D""><tr =
style=3D"height: 50.15pt;" class=3D""><td width=3D"341" valign=3D"top" styl=
e=3D"width: 256.05pt; padding: 0in 5.4pt; height: 50.15pt;" class=3D""><p c=
lass=3D"MsoNormal" style=3D"margin: 0in 0in 10pt; font-size: 11pt; font-fam=
ily: Calibri, sans-serif; line-height: 16.866666793823242px;"><span style=
=3D"color: rgb(31, 73, 125);" class=3D""><span id=3D"cid:image002.png@01D8B=
EF1.8A484EE0">&lt;image002.png&gt;</span></span></p></td><td width=3D"297" =
valign=3D"top" style=3D"width: 222.75pt; padding: 0in 5.4pt; height: 50.15p=
t;" class=3D""><div style=3D"margin: 0in; font-size: 11pt; font-family: Cal=
ibri, sans-serif;" class=3D""><b class=3D""><span style=3D"font-size: 8pt; =
font-family: verdana, sans-serif; color: rgb(15, 36, 62);" class=3D"">G.Raj=
shekar</span></b></div><div style=3D"margin: 0in; font-size: 11pt; font-fam=
ily: Calibri, sans-serif;" class=3D""><span style=3D"font-size: 8pt; font-f=
amily: verdana, sans-serif; color: rgb(31, 73, 125);" class=3D"">Director =
=E2=80=93 Asset Management</span></div><div style=3D"margin: 0in; font-size=
: 11pt; font-family: Calibri, sans-serif;" class=3D""><span style=3D"font-s=
ize: 8pt; font-family: verdana, sans-serif; color: rgb(31, 73, 125);" class=
=3D"">India: &nbsp;+91&nbsp;91773 00182</span></div><div style=3D"margin: 0=
in; font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span st=
yle=3D"font-size: 8pt; font-family: verdana, sans-serif; color: rgb(31, 73,=
 125);" class=3D"">e-mail:<span class=3D"Apple-converted-space">&nbsp;</spa=
n></span><span style=3D"color: rgb(31, 73, 125);" class=3D""><a href=3D"mai=
lto:rajg@satragroup.in" rel=3D"nofollow noopener noreferrer nofollow noopen=
er noreferrer" target=3D"_blank" style=3D"color: rgb(149, 79, 114); text-de=
coration: underline;" class=3D""><span style=3D"font-size: 8pt; font-family=
: verdana, sans-serif; color: blue;" class=3D"">rajg@satragroup.in</span></=
a></span><span style=3D"font-size: 8pt; font-family: verdana, sans-serif; c=
olor: rgb(31, 73, 125);" class=3D""></span></div><div style=3D"margin: 0in;=
 font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span style=
=3D"font-size: 8pt; font-family: verdana, sans-serif; color: rgb(31, 73, 12=
5);" class=3D"">Skype: rajgotimukul</span></div><div style=3D"margin: 0in; =
font-size: 11pt; font-family: Calibri, sans-serif; line-height: 16.86666679=
3823242px;" class=3D""><span style=3D"color: rgb(31, 73, 125);" class=3D"">=
<a href=3D"http://secure-web.cisco.com/1Qx0LQuSLuhIodsKBCn4Cs-Yiux3dky28exm=
wuDCvCHl0PwE7L6xroMuD_5bq3MwBV3VP0Tr2eHpwurx3ZD3GqgoHth4BeHt9M1MNQFiQpePLNO=
4fla_TUb5zz5WIno1KdSjeJgfFkNpla8RpvgogO5Lcp50Nuj8F7N8kY_zU_iLe1JaA63epApIYW=
vXpNGsHBbXniBsnX47Pw8mVfEjXG5i8gYKZBOR7qh5xQNTa4BDuQVtipzyR24DjnOmyxLRU0fXn=
pHP1qjDzH1pxpwD8UOyz2yGjzv5wg3c0KZqLQHFzycujjCfTkhsvftrmmo1iMNKwM5yaxvYHM9X=
JpEG_hCjp4ySq5ErmXnXFkguC3PIgd66jtbC93_lgdjSoMRTi_Z8ZQz8RgJeoweBDp233YBPtGZ=
IsaSfEPL0rdfPDCNs/http%3A%2F%2Fwww.satragroup.in%2F" rel=3D"nofollow noopen=
er noreferrer nofollow noopener noreferrer" target=3D"_blank" style=3D"colo=
r: rgb(149, 79, 114); text-decoration: underline;" class=3D""><span style=
=3D"font-size: 8pt; line-height: 12.266667366027832px; font-family: verdana=
, sans-serif; color: blue;" class=3D"">www.satragroup.in</span></a></span><=
span style=3D"font-size: 9pt; line-height: 13.800000190734863px; font-famil=
y: &quot;humanst521 lt bt&quot;; color: rgb(24, 56, 131);" class=3D""></spa=
n></div></td></tr></tbody></table><div style=3D"margin: 0in; font-size: 11p=
t; font-family: Calibri, sans-serif;" class=3D""><span lang=3D"EN-IN" style=
=3D"font-size: 7pt; font-family: verdana, sans-serif; color: red;" class=3D=
"">SATRA Infrastructure Management Services Pvt Ltd now has been rebranded =
as<span class=3D"Apple-converted-space">&nbsp;</span><b class=3D"">SATRA Se=
rvices and Solutions Pvt Ltd</b>.<span class=3D"Apple-converted-space">&nbs=
p;</span></span></div><div style=3D"margin: 0in; font-size: 11pt; font-fami=
ly: Calibri, sans-serif; text-align: justify;" class=3D""><span style=3D"fo=
nt-size: 7pt; font-family: verdana, sans-serif; color: gray;" class=3D"">**=
** LEGAL DISCLAIMER **** This e-mail including any attachment(s) may contai=
n confidential and/or legally privileged information and is meant for the i=
ntended recipient(s) only. If you have received this e-mail in error and ar=
e not the intended recipient/s, kindly notify us at<span class=3D"Apple-con=
verted-space">&nbsp;</span></span><span lang=3D"EN-IN" style=3D"color: rgb(=
31, 73, 125);" class=3D""><a href=3D"mailto:helpdesk@satragroup.in" rel=3D"=
nofollow noopener noreferrer nofollow noopener noreferrer" target=3D"_blank=
" style=3D"color: rgb(149, 79, 114); text-decoration: underline;" class=3D"=
"><b class=3D""><span lang=3D"EN-US" style=3D"font-size: 7pt; font-family: =
verdana, sans-serif; color: gray;" class=3D"">helpdesk@satragroup.in</span>=
</b></a></span><span style=3D"font-size: 7pt; font-family: verdana, sans-se=
rif; color: gray;" class=3D""><span class=3D"Apple-converted-space">&nbsp;<=
/span>and delete this e-mail immediately from your system. You are also her=
eby notified that any use, any form of reproduction, dissemination, copying=
, disclosure, modification, distribution and/or publication of this e-mail,=
 its contents or its attachment(s) other than by its intended recipient(s) =
is strictly prohibited and may be unlawful.</span></div><p class=3D"MsoNorm=
al" style=3D"margin: 3pt 0in 0in; font-size: 11pt; font-family: Calibri, sa=
ns-serif; text-align: justify;"><span style=3D"font-size: 7pt; font-family:=
 verdana, sans-serif; color: gray;" class=3D"">Communications over internet=
 cannot be guaranteed to be secure or error-free as information could be de=
layed, intercepted, corrupted, lost, or may contain viruses that may partia=
lly or substantially alter the intended information/attachment(s). SATRA GR=
OUP does not accept liability for any errors, omissions, viruses or compute=
r problems experienced by any recipient(s) as a result of this e-mail.</spa=
n></p><div style=3D"margin: 0in; font-size: 11pt; font-family: Calibri, san=
s-serif;" class=3D""><b class=3D""><span style=3D"font-size: 14pt; font-fam=
ily: webdings; color: green;" class=3D"">P</span></b><b class=3D""><span st=
yle=3D"font-size: 14pt; color: green;" class=3D"">&nbsp;</span></b><b class=
=3D""><span lang=3D"EN-IN" style=3D"font-size: 7pt; font-family: verdana, s=
ans-serif; color: rgb(0, 100, 45);" class=3D"">Let=E2=80=99s consider our e=
nvironmental responsibility before printing this e-mail - Save paper.</span=
></b><span lang=3D"EN-IN" style=3D"color: rgb(31, 73, 125);" class=3D""></s=
pan></div><p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; fon=
t-family: Calibri, sans-serif;">&nbsp;</p><pre style=3D"margin: 0in; font-s=
ize: 10pt; font-family: &quot;Courier New&quot;;" class=3D"">&nbsp;</pre><p=
re style=3D"margin: 0in; font-size: 10pt; font-family: &quot;Courier New&qu=
ot;;" class=3D"">&nbsp;</pre><pre style=3D"margin: 0in; font-size: 10pt; fo=
nt-family: &quot;Courier New&quot;;" class=3D"">&nbsp;</pre><pre style=3D"m=
argin: 0in; font-size: 10pt; font-family: &quot;Courier New&quot;;" class=
=3D"">------------------------------------</pre><pre style=3D"margin: 0in; =
font-size: 10pt; font-family: &quot;Courier New&quot;;" class=3D"">Satra I =
Man Pvt Ltd, Begumpet, India</pre><pre style=3D"margin: 0in; font-size: 10p=
t; font-family: &quot;Courier New&quot;;" class=3D"">&nbsp;</pre></div>****=
************************************************************** CAUTION - Di=
sclaimer ******************************************************************=
********* The information contained in this communication is intended solel=
y for the use of the individual or entity to whom it is addressed and other=
s authorized to receive it. It may contain confidential or legally privileg=
ed information. If you are not the intended recipient you are hereby notifi=
ed that any disclosure, copying, distribution or taking any action in relia=
nce on the contents of this information is strictly prohibited and may be u=
nlawful. If you have received this communication in error, please notify us=
 immediately by responding to this email and then delete it from your syste=
m. The firm is neither liable for the proper and complete transmission of t=
he information contained in this communication nor for any delay in its rec=
eipt.</div></div><br class=3D""></div></div><br style=3D"caret-color: rgb(0=
, 0, 0); font-family: Helvetica; font-size: 12px; font-style: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align:=
 start; text-indent: 0px; text-transform: none; white-space: normal; word-s=
pacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;" class=
=3D""><p style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-s=
ize: 12px; font-style: normal; font-variant-caps: normal; font-weight: 400;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration: none;" class=3D""><a href=3D"https://secure-web.cisc=
o.com/1n9GW1ky6HigYv--NN0TFQSAwcIIJ4hcUewIGEnMbOzfnOXsAnmx992we1KOnog131zFR=
nCmC1LQbIT7yI484qrBbGRu8bvdBg0UTucFw4g3e9Rb6vomnIpOWWRtt-GvzuX1akg3soNsh3GM=
97N2Wyx3zcA1rQkN_XYh2dn4n1wUwSkU0-uoOnYUsYFhWiWf2R64y1mNpHGA72xwqrC7X7397ai=
3Ghv7AgBytBQnZDIdrMzrLdHW8eUSMw0eim-ld5z4k4RzFsZj5_sZqbccrHzIPLbvDPFGH8n6B4=
Zd21PumHviOX1ynJ0k0RyKZSGJ0z-Axi5SgRYVyVtCX5E3LZqjI2p-pUfa2yhPsNCaw8WFPdT9K=
ihd946LtYxadoqEQOjTJMK8b27koX0E61RJiUG0PHvFe0oO-MoIRS6BlJ6M/https%3A%2F%2Fa=
mritmahotsav.nic.in%2F" target=3D"_blank" style=3D"color: rgb(149, 79, 114)=
; text-decoration: underline;" class=3D""><img src=3D"https://secure-web.ci=
sco.com/1cBaEr3gIPGUwyIq27atMNx4PhHHLUibd_jt00fZDcf3f1j-_pG6bfn69NgNxJj_nAg=
XNh7NSnNw853byx8HmtRlDGfvcHQ6FHXwdYbzXEsDoIpWSOD1FN0Ycn-HtnGuxkB0HoG3OJXgzx=
3qv4a0xTRSuaP9VN9ddS4JK3AzTADg2EXJuAInqbMXSFDIFLEcr9r5oZtuZuGxtXy5cdao6Q6Ig=
JY8JgGN00JMtd4lc9o6g1uKLsACT8CgXZTUYjRdHpDokCYRzJxm8ughukjEFoRhz3zMHP7yRvIB=
JR73YwvXHrVByGX5lb-2Pm6bKVIkTyTv1MLv3wHQKX831ZIAeERNt2cb1j4jufGZF6_TKirXrv4=
eFQgl8gav48hLnNyR0sCRvFX8gHpVI6hq4iNSFK3qaMe0D1cUHdFbo15VAABs/https%3A%2F%2=
Femail.gov.in%2Fvideos%2Fimages%2F75.jpg" style=3D"width: 450px; height: 11=
3px;" class=3D""></a></p><br style=3D"caret-color: rgb(0, 0, 0); font-famil=
y: Helvetica; font-size: 12px; font-style: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; text-decoration: none;" class=3D""><span id=3D"ci=
d:1E581763-5DA0-41E1-B424-05615AA98A32">&lt;20220905_052321.pdf&gt;</span><=
span id=3D"cid:E3683C77-7828-4C30-80DE-073D87ECC6D2">&lt;20220905_052251.pd=
f&gt;</span></div></blockquote></div><br class=3D""></div>
<br><html><head></head><body>

<p><a href=3D"https://secure-web.cisco.com/1n9GW1ky6HigYv--NN0TFQSAwcIIJ4hc=
UewIGEnMbOzfnOXsAnmx992we1KOnog131zFRnCmC1LQbIT7yI484qrBbGRu8bvdBg0UTucFw4g=
3e9Rb6vomnIpOWWRtt-GvzuX1akg3soNsh3GM97N2Wyx3zcA1rQkN_XYh2dn4n1wUwSkU0-uoOn=
YUsYFhWiWf2R64y1mNpHGA72xwqrC7X7397ai3Ghv7AgBytBQnZDIdrMzrLdHW8eUSMw0eim-ld=
5z4k4RzFsZj5_sZqbccrHzIPLbvDPFGH8n6B4Zd21PumHviOX1ynJ0k0RyKZSGJ0z-Axi5SgRYV=
yVtCX5E3LZqjI2p-pUfa2yhPsNCaw8WFPdT9Kihd946LtYxadoqEQOjTJMK8b27koX0E61RJiUG=
0PHvFe0oO-MoIRS6BlJ6M/https%3A%2F%2Famritmahotsav.nic.in%2F" target=3D"_bla=
nk"><img style=3D"width: 450px; height: 113px;" src=3D'https://secure-web.c=
isco.com/1cBaEr3gIPGUwyIq27atMNx4PhHHLUibd_jt00fZDcf3f1j-_pG6bfn69NgNxJj_nA=
gXNh7NSnNw853byx8HmtRlDGfvcHQ6FHXwdYbzXEsDoIpWSOD1FN0Ycn-HtnGuxkB0HoG3OJXgz=
x3qv4a0xTRSuaP9VN9ddS4JK3AzTADg2EXJuAInqbMXSFDIFLEcr9r5oZtuZuGxtXy5cdao6Q6I=
gJY8JgGN00JMtd4lc9o6g1uKLsACT8CgXZTUYjRdHpDokCYRzJxm8ughukjEFoRhz3zMHP7yRvI=
BJR73YwvXHrVByGX5lb-2Pm6bKVIkTyTv1MLv3wHQKX831ZIAeERNt2cb1j4jufGZF6_TKirXrv=
4eFQgl8gav48hLnNyR0sCRvFX8gHpVI6hq4iNSFK3qaMe0D1cUHdFbo15VAABs/https%3A%2F%=
2Femail.gov.in%2Fvideos%2Fimages%2F75.jpg'/></a></p>

</body></html>

<br></body></html>
--Apple-Mail=_AD14DC5C-236F-47AA-AC52-402D84094A0A--
