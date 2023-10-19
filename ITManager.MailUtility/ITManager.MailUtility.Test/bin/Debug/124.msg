X-Qmail-Scanner-Diagnostics: from 192.168.8.22 by vdvm34.logix.local (envelope-from <noreply@github.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.8.22):SA:0(IronPort):.  Processed in 0.028531 secs); 17 Sep 2022 06:26:25 -0000
Received-SPF: Pass (tblr2.logix.in: domain of noreply@github.com  designates 192.30.252.200 as permitted sender)  identity=mailfrom; client-ip=192.30.252.200;  receiver=tblr2.logix.in; envelope-from="noreply@github.com";  x-sender="noreply@github.com"; x-conformance=spf_only;  x-record-type="v=spf1"; x-record-text="v=spf1  ip4:192.30.252.0/22 include:_netblocks.google.com  include:_netblocks2.google.com include:_netblocks3.google.com  include:spf.protection.outlook.com include:mail.zendesk.com  include:_spf.salesforce.com include:servers.mcsv.net  ip4:166.78.69.169 ip4:166.78.69.170 ip4:166.78.71.131  ip4:167.89.101.2 ip4:167.89.101.192/28 ip4:192.254.112.60  ip4:192.254.112.98/31 ip4:192.254.113.10 ip4:192.254.113.101  ip4:192.254.114.176 ip4:62.253.227.114 ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@smtp.github.com) identity=helo;  client-ip=192.30.252.200; receiver=tblr2.logix.in;  envelope-from="noreply@github.com";  x-sender="postmaster@smtp.github.com"; x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=noreply@github.com; spf=None smtp.helo=postmaster@smtp.github.com; dkim=pass (signature verified) header.i=@github.com; dmarc=pass (p=reject dis=none) d=github.com
IronPort-SDR: PGTpyhPXNyVwB3q4eoRx427u/2VhBu9K3T/vK1NvO4+IudMGd4mbkH1mycjsaRvcLz3k+dteol 5doBpwehnwc3mKzO0Xa3ALmgU4yL6+YOU=
X-ORIGINAL-IP: 192.30.252.200
X-ORIGINAL-TIME: 17 Sep 2022 11:56:24 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:G2+Ta69OA4hdN/CygIluk+BjI+orL9Y04lQ7vn2ZhyY1TiX+rb HJoB17726StN91YhsdcL+7VZVoLUmxyXcx2/hzAV9NNDOWxFdAb7sSkLcL+lXbalLDH5dmpN ldmspFaOEYfGIK6foSuzPIaurIqePvmMuVbKXlvhVQpGdRBJ2IhD0JbzpzfHcZeOBuP+tJKL OsouRGuhu9cjAtYsygAH5tZZm4m/T70LznfD8bDFod5AOPlDOl76OSKWni4j4uFx1O3JY/+i z/nwb4/6WutOz+4hLQzGPI9f1t6avc4+oGKsyQq9Qfbg/hjQulf+1aKsW/gAw=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,322,1654540200";    d="scan'208,217";a="336149320"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
Received: from noreply@github.com([121.240.11.42]) 	by PME Mail With Id 1663396032704.16460;Sat, 17 Sep 2022 11:57:12 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h4lkbo1oo38d for <helpdesk@satragroup.in>; Sat, 17 Sep 2022 11:56:25 +0530 (envelope-from <noreply@github.com>)
Received: (qmail 214612 invoked by uid 1012); 17 Sep 2022 06:26:25 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.8.22])          (envelope-sender <noreply@github.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 17 Sep 2022 06:26:25 -0000
Received: from out-17.smtp.github.com (HELO smtp.github.com) ([192.30.252.200])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2022 11:56:20 +0530
Received: from github-lowworker-f052de4.va3-iad.github.net (github-lowworker-f052de4.va3-iad.github.net [10.48.109.96])	by smtp.github.com (Postfix) with ESMTP id 095B65C038B	for <helpdesk@satragroup.in>; Fri, 16 Sep 2022 23:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;	s=pf2014; t=1663395977;	bh=TeRSCSFcfCjCWFD/BBO7WP/U3eTZPEUPJ4+YOplHKGg=;	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:List-ID:	 List-Archive:List-Post:List-Unsubscribe:From;	b=ukQs9DKxFHU6UcAe78ACM6NnyAU/VRjtxnugChHRvQ4cQS3htUIRVqmQO2SpurVtQ	 mGDB1GQfRz+enOxk03dxXPvTEDRi2jUkDrOFDAx3gdRWOZEiY/R+t9y+1Gm/t4NbrQ	 dz8vLbxeWCgg+hdNR7vUh7wJ7NIkICpV5zYEEKUc=
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
List-Unsubscribe: <mailto:unsub+AUGHELXLNGNR24ISDQH6IUWBGKNQREVBNHHEA25FAM@reply.github.com>, <https://github.com/notifications/unsubscribe/AUGHELQD7ZRNVRTDDVENOOLV6VQARANCNFSM5KDEC6HQ>
X-Auto-Response-Suppress: All
X-GitHub-Recipient-Address: helpdesk@satragroup.in
X-UNKNOWN-HEADER: 
Subject: Re: [SatraMobile/Marg-Sahayak-Web] Pre prod (PR #1)
Date: Fri, 16 Sep 2022 23:26:16 -0700
Message-ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/11051760816@github.com>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: Upendra Tarnoju <notifications@github.com>
To: SatraMobile/Marg-Sahayak-Web <Marg-Sahayak-Web@noreply.github.com>
Cc: helpdesk <helpdesk@satragroup.in>,   Push <push@noreply.github.com>
Return-Path: <noreply@github.com>
content-type: multipart/alternative; charset=utf-8; boundary="--==_mimepart_63256888ee5f7_1352d4f8673e2"
content-transfer-encoding: 7bit
X-PMAttribute: 1663396032704.16460; mb_id=QSM1413892035136; imapid=30978; del_to=helpdesk

----==_mimepart_63256888ee5f7_1352d4f8673e2
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit

@upendra-tarnoju pushed 1 commit.

85be835433dc902f79429409361769593689b5aa  Gujmark Officers APIs

-- 
View it on GitHub:
https://secure-web.cisco.com/1NS1e7iUV29WQYm4xWrOhuzgNFEjPw4dNUCCWElrVfhafhR5rR6yQMqv-78eBBoaNGw7xV91fGo5P_MX7TTht0cs1r0X6QkYPaokH_g-4gT1tI7NMZ2uxZG4UBeFRHz22QpYMnMwf8y9athbX5UoGeS-HCIFA1FeaOS-X7ct_9SzStG1htCUVpz1uULFZq6_jjrWO5y2knBJ-BpMDKb7KrH-qiMK94AZAFx-XJVpmIxPxupXqj2LDasFwgPawRZ4vPvjPYqV6hK9twB1xQ6_a29rXMSyYScD5fMc47I_g5VsCoeEo6Ud9HwiSppT-1SK7t1R__VA6KcdJBg_caI79209L3oFoPtW3BmYwQynEs-Ka8EdRZ7Fx9HSUJPfC8qtyR4QJhZENOu-x0d7pwBSEcMxM9z9gTfM1AkdIYVlJCJg/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2Fpull%2F1%2Ffiles%2F37f96ebe888bb524e2d5833d9a54ebbe7093dd9a..85be835433dc902f79429409361769593689b5aa
You are receiving this because you are subscribed to this thread.

Message ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/11051760816@github.com>

----==_mimepart_63256888ee5f7_1352d4f8673e2
content-type: text/html; charset=utf-8
content-transfer-encoding: quoted-printable

<p><a href=3D"https://secure-web.cisco.com/1YV8pmykx3qskAfOkZv19gvCcx28AOeQ=
Ltfcuv1Rxp3ear3H-SQOTUT9Vv9r6GYZ5F8GYd_SY-1omuhMdbjJoLp8TqS6C8g1DhHHEw_8ck5=
zjsai-4vy5OKQmKVIlnZU366vER5EyKhyoccsXidP4xnJXvDrjXRbXYN6qK3eKqnjVuBL94TbPH=
v2FE95RtKZl27H07ou0AvPQtHIShM4N1Q_j7Yc1gASWgsC8decYps38WKl0lB_sT7xb6gzUesIt=
YiMHXel_lyHiQGyx2Gy_6G3-YUsIJIsFi8AcNe7vZh57JCVrpO1v3fpYS1m9nZ_jbIBoQhPgobW=
6LanUnbzytRsZ7kam4cYhf2He9R3aPd9VNnyxgQHiwrZS2rSgx7C643dvFnNqwHjgp-XNbGh385=
VETVPILAu_SzJVTtZbsBI/https%3A%2F%2Fgithub.com%2Fupendra-tarnoju" class=3D"=
user-mention">@upendra-tarnoju</a> pushed 1 commit.</p>

<ul>
  <li><a class=3D"commit-link" href=3D"https://secure-web.cisco.com/1_f9tur=
96Rm4wrKwZq58xB5TdbavdIa3Anv5cpHtY_OQMzb_K3geoxkBxI-sO83OfwHouc5JnG6d1IwxLL=
mlzQFAj6lS2IXoCGYCxHULcN4dN0OuI5Ji1jUS3tl1MZNex222HKDfVE0LhgXoBCdxQ1KDYwFjF=
asONWUVVtQw5D6HqzPNPzdGzUrWGCI_zZlkA7ST_84hXg8mCpr78g3czrGnKkTHralraGQxrRzY=
CUWJI2Iou3_uChH3YJxYt6M8Wf7SxVhelb2eQHAh_P1wGeYVgZN4Yq5nYDbGV7tTZaM_3GPasit=
mPQfNBMx4qofgf-70XwMT5OJdRtaWoZVz6V7UU3ei3nkkBss6Z4jrgdTvCxLD3mpk2zyohwktGr=
TRzWkqVSnpGrOxxScemnox420MfuhXzv7mtFf9W8MILaZM/https%3A%2F%2Fgithub.com%2FS=
atraMobile%2FMarg-Sahayak-Web%2Fcommit%2F85be835433dc902f794294093617695936=
89b5aa">85be835</a>  Gujmark Officers APIs</li>
</ul>

<p style=3D"font-size:small;-webkit-text-size-adjust:none;color:#666;">&mda=
sh;<br /><a href=3D"https://secure-web.cisco.com/1NS1e7iUV29WQYm4xWrOhuzgNF=
EjPw4dNUCCWElrVfhafhR5rR6yQMqv-78eBBoaNGw7xV91fGo5P_MX7TTht0cs1r0X6QkYPaokH=
_g-4gT1tI7NMZ2uxZG4UBeFRHz22QpYMnMwf8y9athbX5UoGeS-HCIFA1FeaOS-X7ct_9SzStG1=
htCUVpz1uULFZq6_jjrWO5y2knBJ-BpMDKb7KrH-qiMK94AZAFx-XJVpmIxPxupXqj2LDasFwgP=
awRZ4vPvjPYqV6hK9twB1xQ6_a29rXMSyYScD5fMc47I_g5VsCoeEo6Ud9HwiSppT-1SK7t1R__=
VA6KcdJBg_caI79209L3oFoPtW3BmYwQynEs-Ka8EdRZ7Fx9HSUJPfC8qtyR4QJhZENOu-x0d7p=
wBSEcMxM9z9gTfM1AkdIYVlJCJg/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-S=
ahayak-Web%2Fpull%2F1%2Ffiles%2F37f96ebe888bb524e2d5833d9a54ebbe7093dd9a..8=
5be835433dc902f79429409361769593689b5aa">View it on GitHub</a> or <a href=
=3D"https://secure-web.cisco.com/1MkYInmJjFTJbVc5_dLpskLX43BCI4I_wg64A_R1Vi=
onZNt7v8RWBaR9zUx6oexyvkY4AFjc8Y0IxFFzHrdGMPeQNKKstkrbwFu0GpOBOSlwW7m1oiMdZ=
zOcyIWqs5JNKhsuch0RNjSdLJSSV0mpqni9laWNngwK5skhTXLGwBiqOb-8ZO01qbY0btFmNcdT=
Ybexcs-QsflYc-LDmkunHeHzP7Dt9xS3bRddrjhOh73Zlaq_xGQxfyNNJjMML8QZ6F7Wfb1XHhy=
IGXX0ZdwLaq2LvNImPn_mgfS-n0B5k1vjcM1EQFi6LeXm7EuCS-oxgvaRvlBXOth4T7lruBPX9R=
ofLm6dvm7Kx0u2NoRBlTWWsWn-rj8AifhQsT7sixAbtk2F-rapdkzMlF1E1BfxSX78QmRAfH8do=
cz7i8WWp89Q/https%3A%2F%2Fgithub.com%2Fnotifications%2Funsubscribe-auth%2FA=
UGHELQJYLCIOZRYUU4F7BDV6VQARANCNFSM5KDEC6HQ">unsubscribe</a>.<br />You are =
receiving this because you are subscribed to this thread.<img src=3D"https:=
//secure-web.cisco.com/1d4Yd5hWeylwSzWU1-0F_cRmufW_1zjYEIzQLDKpRplxO24EyCtJ=
NbWi76thYXjaIiX8ycRgAWaIyCazZuI5zdiBTPmbCrwpWO1KATGpiWjq02su_OjqqnpD2-aAGLs=
Dxri8cTUp0Vs5ijmsTZzGnQtsWujiPEkPclD8Ox8zN-EicnkZzM3NcRn0lEi8ZWyDx_71hjWRLB=
CN4mp_mpHBhZTOqdZMcWDSlo-UKUJ44bUeVU5r8u2O6hK9H-doE0n4iDsocF3pdeCyzSO_zBSOp=
rb9KCxsekcPanzLNK9bxlCh33G1YG1DKfVpxPa33luplyhnTD0JU8PxG6d223KChjLRz57TyADf=
9h0F5XZHdvwqAFkKkby66B1eoziP6qGPz0AqGbYYIDY_EJxNXfFIcKUHsLXlaAFD_0PWrIHRaXG=
Q/https%3A%2F%2Fgithub.com%2Fnotifications%2Fbeacon%2FAUGHELR3OKAWGWXUQT5FE=
TTV6VQARA5CNFSM5KDEC6H2YY3PNVWWK3TUL52HS4DFXNIHK3DMKJSXC5LFON2FA5LTNBHG65DJ=
MZUWGYLUNFXW5KTDN5WW2ZLOORPWSZF6KB2WY3BDHAYDGMRVGU3TEOKQOVZWQIZRGEYDKMJXGYY=
DQMJW.gif" height=3D"1" width=3D"1" alt=3D"" /><span style=3D"color: transp=
arent; font-size: 0; display: none; visibility: hidden; overflow: hidden; o=
pacity: 0; width: 0; height: 0; max-width: 0; max-height: 0; mso-hide: all"=
>Message ID: <span>&lt;SatraMobile/Marg-Sahayak-Web/pull/1/push/11051760816=
</span><span>@</span><span>github</span><span>.</span><span>com&gt;</span><=
/span></p>
<script type=3D"application/ld+json">[
{
"@context": "http://schema.org",
"@type": "EmailMessage",
"potentialAction": {
"@type": "ViewAction",
"target": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/37f=
96ebe888bb524e2d5833d9a54ebbe7093dd9a..85be835433dc902f79429409361769593689=
b5aa",
"url": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/37f96e=
be888bb524e2d5833d9a54ebbe7093dd9a..85be835433dc902f79429409361769593689b5a=
a",
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

----==_mimepart_63256888ee5f7_1352d4f8673e2--
