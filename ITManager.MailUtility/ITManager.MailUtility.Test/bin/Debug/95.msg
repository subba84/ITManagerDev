X-Qmail-Scanner-Diagnostics: from 192.168.9.71 by vdvm33.logix.local (envelope-from <noreply@github.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.71):SA:0(IronPort):.  Processed in 0.029343 secs); 14 Sep 2022 16:02:53 -0000
Received-SPF: Pass (tblr2.logix.in: domain of noreply@github.com  designates 192.30.252.211 as permitted sender)  identity=mailfrom; client-ip=192.30.252.211;  receiver=tblr2.logix.in; envelope-from="noreply@github.com";  x-sender="noreply@github.com"; x-conformance=spf_only;  x-record-type="v=spf1"; x-record-text="v=spf1  ip4:192.30.252.0/22 include:_netblocks.google.com  include:_netblocks2.google.com include:_netblocks3.google.com  include:spf.protection.outlook.com include:mail.zendesk.com  include:_spf.salesforce.com include:servers.mcsv.net  ip4:166.78.69.169 ip4:166.78.69.170 ip4:166.78.71.131  ip4:167.89.101.2 ip4:167.89.101.192/28 ip4:192.254.112.60  ip4:192.254.112.98/31 ip4:192.254.113.10 ip4:192.254.113.101  ip4:192.254.114.176 ip4:62.253.227.114 ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@out-28.smtp.github.com) identity=helo;  client-ip=192.30.252.211; receiver=tblr2.logix.in;  envelope-from="noreply@github.com";  x-sender="postmaster@out-28.smtp.github.com";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=noreply@github.com; spf=None smtp.helo=postmaster@out-28.smtp.github.com; dkim=pass (signature verified) header.i=@github.com; dmarc=pass (p=reject dis=none) d=github.com
IronPort-SDR: urlaAxFm5QN3TRiV3TF2rQeJl+XxSWaFjlv+KIGghOD3JSNeeqp8gUtjknwR4g3iCJ9IgX/dFJ Zkapajpaj+JkZ1ISeJR54b65uN43gwWoeGG8/Us/R5TzOxRwAAR0syrsS7Xzc8O0vjSyOvB9Aq WN43KHK4EhguvPoi5YbINrzCiwDcPaO26WZ/sseNXmtmJG9+hmOnrv9rOAMJl4+U7tRx9hj/4O rpx4q7NDnWSQHE66d7jj793Q0dv42ASdCBk9sOHlZQHBgT9nOwScsGZhRlgLRhKF3ZHcobdIua +AMvdLqnyJgGqqenQkZPrF8s
X-ORIGINAL-IP: 192.30.252.211
X-ORIGINAL-TIME: 14 Sep 2022 21:32:52 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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 mOFVSd7STLZtxqxCpGYh+iy3ivx05jKU5o=
IronPort-HdrOrdr: A9a23:GcBbP6xvUpcc3L8p/WjNKrPwl71zdoMgy1knxilNoNJuE/Bw8P re+sjztCWE7wr5PUtLpTnuAsS9qB/nmaKdpLNhXotLsmHdyReVxcJZnPbfKwSJIVyAygcl79 YfT0EdMr3N5ClB/KLHCVKDYq8dKbC8mcjCuQ6d9QYOcegNUc5dBmxCe2Om+yNNKjWuLKBJZa a0145opyeAZX9SVciyHH8DNtKz3eHjpdbJYQMmGxVi0wWFjSqp5LnmeiLopSs2YndgwaoC7W OAqADy5ryiv/anjjfQ2nTe9Y4+oqqQ9vJzQOKNl+kIIXHXhgGkaJ8JYcz7gAwI
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,315,1654540200";    d="scan'208,217";a="217894652"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
Received: from noreply@github.com([192.168.1.1]) 	by PME Mail With Id 1663171377062.14500;Wed, 14 Sep 2022 21:32:57 +0530 (IST)
Received: from vdvm33.logix.local (127.0.0.1) by tblr42.logix.in id h47tiq1oo38d for <helpdesk@satragroup.in>; Wed, 14 Sep 2022 21:32:53 +0530 (envelope-from <noreply@github.com>)
Received: (qmail 118779 invoked by uid 1012); 14 Sep 2022 16:02:53 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.71])          (envelope-sender <noreply@github.com>)          by vdvm33.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 14 Sep 2022 16:02:53 -0000
Received: from out-28.smtp.github.com ([192.30.252.211])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Sep 2022 21:32:50 +0530
Received: from github-lowworker-65e4a37.va3-iad.github.net (github-lowworker-65e4a37.va3-iad.github.net [10.48.119.82])	by smtp.github.com (Postfix) with ESMTP id B1324900201	for <helpdesk@satragroup.in>; Wed, 14 Sep 2022 09:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;	s=pf2014; t=1663171366;	bh=1z9Q0ABrJrDVe7iWN7WKTtmExC/XdzEYR8pxeMwOa4w=;	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:List-ID:	 List-Archive:List-Post:List-Unsubscribe:From;	b=D0TaGX20GiobYpwU1g2qVeXWXNwL6W6fZLVqYtB6Cr6kBeVEmHjX1URtDtS0v1CPk	 n3gw+AV1ZS3VkFiELM7sEqvh1CIr5obH7dj9uGo9b/TUdI8kYyFBmw32zOc8Yvi2MI	 4y8o0vl8zgBQG/HlTnJzZc/SDp4JhVzG/2Y3RJOc=
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
List-Unsubscribe: <mailto:unsub+AUGHELVJ6G2L7OLHRFMOGWGBF4W2NEVBNHHEA25FAM@reply.github.com>, <https://github.com/notifications/unsubscribe/AUGHELVTKFAL6LO5O7ZNFRLV6HZKNANCNFSM5KDEC6HQ>
X-Auto-Response-Suppress: All
X-GitHub-Recipient-Address: helpdesk@satragroup.in
X-UNKNOWN-HEADER: 
Subject: Re: [SatraMobile/Marg-Sahayak-Web] Pre prod (PR #1)
Date: Wed, 14 Sep 2022 09:02:46 -0700
Message-ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/11023348246@github.com>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: Upendra Tarnoju <notifications@github.com>
To: SatraMobile/Marg-Sahayak-Web <Marg-Sahayak-Web@noreply.github.com>
Cc: helpdesk <helpdesk@satragroup.in>,   Push <push@noreply.github.com>
Return-Path: <noreply@github.com>
content-type: multipart/alternative; charset=utf-8; boundary="--==_mimepart_6321fb26a099f_18cdd4f862298c"
content-transfer-encoding: 7bit
X-PMAttribute: 1663171377062.14500; mb_id=QSM1413892035136; imapid=30945; del_to=helpdesk

----==_mimepart_6321fb26a099f_18cdd4f862298c
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit

@upendra-tarnoju pushed 1 commit.

1f6fe141a95c5d5dce5c5804b2078c76a4c23c3c  Dashboard counts - Code changes

-- 
View it on GitHub:
https://secure-web.cisco.com/1TWzlbc_bN6SHRRKS5tjjeoBkjRo-K7fw7O2R9xCXaOWa1e2itGtlcWmMqwBAXIJAmZhkZ8v6vsvEE6hix_NdF3XNDbnQ2OH8h4QfYZkknLn4T5mMfhPc_GVj_BQVNZdIrLLIrlXi_ay-Nj6NPYT1CZyP7QtSEA5_yYDiJrcjThPiyEXILr0N1YhegLEdkoa3FhQiGJzj23Si38nxAUCt2jnd0I-LSFyD6viZ54wmxhIhnEifdBj_Y-mLDkCsq62glncsVqlZ5zQIP7AakxWzAoEE8S891-pkfKw9yAbv3-_F47Nxs9B8oKaI_TBpYkWfxqrTSqN6He_Vp6j6ZjUdqplL55GLXgOlzBxnSMC5z66BzSqTxLGyI_jOYnXGc35mR2NMm4bjPg2hHXjEKBNMoPOUfXMiw8ljYhQz50rTrfxCz1a9AhdFuLIOlfrRODIsDWZ3J-9zPJsW_eqA38_dgQ/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2Fpull%2F1%2Ffiles%2F4b5cf8848406bb8bc1489fecfbc555093e977add..1f6fe141a95c5d5dce5c5804b2078c76a4c23c3c
You are receiving this because you are subscribed to this thread.

Message ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/11023348246@github.com>

----==_mimepart_6321fb26a099f_18cdd4f862298c
content-type: text/html; charset=utf-8
content-transfer-encoding: quoted-printable

<p><a href=3D"https://secure-web.cisco.com/11L-3ofLjNo8nxqCs3SpxeSQRuIt9V5T=
bQOvg7u3KxJQJZPy58GFDKhMDVSoFa6tLMXLSrv8OPwUrTZ251X8PDctzA-e-Ltdkib9kWOu0bw=
U9Aomsq7m_qOuAWEpsM_ElRjRqjnoCB6LN7zOqcrzKoqwpnhe96VI_HazdyDNV9Y252afbg7Nkx=
7EFGY-ux4t42NvlUJYna7FgEIRQ42nP6qKpn7gVI6UzFC9Naoc1LpeSBfwuAsti9c3NCerJv04X=
zYw7vmQH209gsOb7DGfeQXVuagmUWXDQ2zekQYkotWAc-0BAAFONkenzQs7wN9jIgz-3oWq-JoC=
y_UTQgr-f8ZsfIc5bu2O5ThDvtRm2ls5WCyS5OHjiAuZdWGNo2KRxKzxPHfNQogsVojr6CQzkl_=
f6JlzBoJTbHMkk5NYmGmTOsDyKAaPHaUzj_HA1A5o2PUL7Yuz9077TeJeGtQyb6Q/https%3A%2=
F%2Fgithub.com%2Fupendra-tarnoju" class=3D"user-mention">@upendra-tarnoju</=
a> pushed 1 commit.</p>

<ul>
  <li><a class=3D"commit-link" href=3D"https://secure-web.cisco.com/1qPMidh=
OofJLUXnnkh7gm4csqnbcqkiBw-vcKx_H1t_nQEanVB0gr6RXjqm9JxELx8JQS9hRostjvTa97u=
_lq9N5fumykxDKzi4gtOQms14bE9KkuVPpUow4E_oZ699kH9HjNrPDd0do7df8VPWooZ73Nls8M=
DBoGbdHlRwFfiaTR_D9ZeYnksu4K6ND82eyeBXZAf3k4SnkGozLiZgErq-iPfpoXQaXeEgjw90A=
ycuN2OlZVQnmDdkBzbEOAvWqdD7KhwBr3tySNtiAwL0U6xATScvDRupnqcKJaNhfKW1B0YJSfB6=
O_MV0TBQw4AgfI23c-UUwaynLYlVNptf241C6IeMQFEDapYM8RoVp9d1EM31qNhT9No25_-h5mw=
vHxhwnkKNfrMud01EWns5st3t2RNPzqrhFxl-t0BWPBPpP6Z52EqHeW64XaWQSA64mQEv1USByJ=
sl5kM54VbKOYOg/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2F=
commit%2F1f6fe141a95c5d5dce5c5804b2078c76a4c23c3c">1f6fe14</a>  Dashboard c=
ounts - Code changes</li>
</ul>

<p style=3D"font-size:small;-webkit-text-size-adjust:none;color:#666;">&mda=
sh;<br /><a href=3D"https://secure-web.cisco.com/1TWzlbc_bN6SHRRKS5tjjeoBkj=
Ro-K7fw7O2R9xCXaOWa1e2itGtlcWmMqwBAXIJAmZhkZ8v6vsvEE6hix_NdF3XNDbnQ2OH8h4Qf=
YZkknLn4T5mMfhPc_GVj_BQVNZdIrLLIrlXi_ay-Nj6NPYT1CZyP7QtSEA5_yYDiJrcjThPiyEX=
ILr0N1YhegLEdkoa3FhQiGJzj23Si38nxAUCt2jnd0I-LSFyD6viZ54wmxhIhnEifdBj_Y-mLDk=
Csq62glncsVqlZ5zQIP7AakxWzAoEE8S891-pkfKw9yAbv3-_F47Nxs9B8oKaI_TBpYkWfxqrTS=
qN6He_Vp6j6ZjUdqplL55GLXgOlzBxnSMC5z66BzSqTxLGyI_jOYnXGc35mR2NMm4bjPg2hHXjE=
KBNMoPOUfXMiw8ljYhQz50rTrfxCz1a9AhdFuLIOlfrRODIsDWZ3J-9zPJsW_eqA38_dgQ/http=
s%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2Fpull%2F1%2Ffiles%2F=
4b5cf8848406bb8bc1489fecfbc555093e977add..1f6fe141a95c5d5dce5c5804b2078c76a=
4c23c3c">View it on GitHub</a> or <a href=3D"https://secure-web.cisco.com/1=
nfwsA2jLnNJcfC_i7AOQn1b0AoS1AaujuGIluKOHOGQu_lsG4Wmc_d7imTkQNIOOqt-Nwt7qBqg=
PkEVvZiDfNdNIFMDulxVCyP0fGQnSAP8Kt8_uJRSnmo22MrHDeJHnMdcqjIayYudELoa0HjJHh1=
ICdCe2N1tUnzeNnJ56U9n4j0ECVy7YOasB1hj0BUu1wWYkQTDM0a7oOD896oEXBhXfZQTPMdxWC=
2Z9GGNR_mLFdv08IMPezevCAXqwRUS9P_oq2yLIQHZLx_hg1RWfgs4SBf910RC3SfEOuN90-2r7=
e3XeHzyJN3gAph0vWUioUKUB6Xxhn2vGhdOjJ0wJH4D2WfpbPRCTeZy8rJ-vrx6g8EKmYAvItTF=
fvXtC-iwzX51h71a9IxX6fMiR0QuTKep_IbQX7lZBaRoaml1MUuBPhbXIlMZch_6ovD71KRDxjE=
aU0dwZH0E3iyMgSQC2gg/https%3A%2F%2Fgithub.com%2Fnotifications%2Funsubscribe=
-auth%2FAUGHELVR4LLICOXRFLQLAD3V6HZKNANCNFSM5KDEC6HQ">unsubscribe</a>.<br /=
>You are receiving this because you are subscribed to this thread.<img src=
=3D"https://secure-web.cisco.com/1fCBzZ_Vtwcdph_fmiQN2kVprI5GUkF7MuvZi_64DI=
e2smR6inwdB6FI81iZ8wmTKOkNK1x4l-yOiTbz8vhvuhj7rIDkC5yiIur4Lh8QywxVR9v1euhAt=
UFXbPKwEQJok9--ILECkegFnUG_bcWMYyjJnfiZeU9B3g0o4bstDGwkiBXNMg-j-SypMc2LR7nX=
1IivkQLbiU0zNpH082wPMF5tnQUyv-TIg_06Eu0QLQFDGd1IEc7nBovRN1h_wZ7vnIzBP_nI-V3=
3aajaT49bg4fHwcuZznCADqfENSyHPdKKcBbCarNo9FUtcMiwhRT9zcp3QImB-izyNojPKrLahT=
hZksmYPuKDEXgKpF5Zz55X8n2BLf9J3MZCkAiwJ3q8FUFCN0UsoVVqX0t5yAjCMQAKTJmgoom4x=
NdSpWKqkNqcbaNtbjortCzwFEKYjm1AqcHHYNRAz5MVFCHXe-AGZqQ/https%3A%2F%2Fgithub=
.com%2Fnotifications%2Fbeacon%2FAUGHELRDPT3Y3VSJ6QKFCB3V6HZKNA5CNFSM5KDEC6H=
2YY3PNVWWK3TUL52HS4DFXNIHK3DMKJSXC5LFON2FA5LTNBHG65DJMZUWGYLUNFXW5KTDN5WW2Z=
LOORPWSZF6KB2WY3BDHAYDGMRVGU3TEOKQOVZWQIZRGEYDEMZTGQ4DENBW.gif" height=3D"1=
" width=3D"1" alt=3D"" /><span style=3D"color: transparent; font-size: 0; d=
isplay: none; visibility: hidden; overflow: hidden; opacity: 0; width: 0; h=
eight: 0; max-width: 0; max-height: 0; mso-hide: all">Message ID: <span>&lt=
;SatraMobile/Marg-Sahayak-Web/pull/1/push/11023348246</span><span>@</span><=
span>github</span><span>.</span><span>com&gt;</span></span></p>
<script type=3D"application/ld+json">[
{
"@context": "http://schema.org",
"@type": "EmailMessage",
"potentialAction": {
"@type": "ViewAction",
"target": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/4b5=
cf8848406bb8bc1489fecfbc555093e977add..1f6fe141a95c5d5dce5c5804b2078c76a4c2=
3c3c",
"url": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/4b5cf8=
848406bb8bc1489fecfbc555093e977add..1f6fe141a95c5d5dce5c5804b2078c76a4c23c3=
c",
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

----==_mimepart_6321fb26a099f_18cdd4f862298c--
