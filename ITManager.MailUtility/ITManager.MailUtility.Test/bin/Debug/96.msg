X-Qmail-Scanner-Diagnostics: from 192.168.9.76 by vdvm34.logix.local (envelope-from <noreply@github.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.76):SA:0(IronPort):.  Processed in 0.025658 secs); 14 Sep 2022 16:53:15 -0000
Received-SPF: Pass (tblr2.logix.in: domain of noreply@github.com  designates 192.30.252.209 as permitted sender)  identity=mailfrom; client-ip=192.30.252.209;  receiver=tblr2.logix.in; envelope-from="noreply@github.com";  x-sender="noreply@github.com"; x-conformance=spf_only;  x-record-type="v=spf1"; x-record-text="v=spf1  ip4:192.30.252.0/22 include:_netblocks.google.com  include:_netblocks2.google.com include:_netblocks3.google.com  include:spf.protection.outlook.com include:mail.zendesk.com  include:_spf.salesforce.com include:servers.mcsv.net  ip4:166.78.69.169 ip4:166.78.69.170 ip4:166.78.71.131  ip4:167.89.101.2 ip4:167.89.101.192/28 ip4:192.254.112.60  ip4:192.254.112.98/31 ip4:192.254.113.10 ip4:192.254.113.101  ip4:192.254.114.176 ip4:62.253.227.114 ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@smtp.github.com) identity=helo;  client-ip=192.30.252.209; receiver=tblr2.logix.in;  envelope-from="noreply@github.com";  x-sender="postmaster@smtp.github.com"; x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=noreply@github.com; spf=None smtp.helo=postmaster@smtp.github.com; dkim=pass (signature verified) header.i=@github.com; dmarc=pass (p=reject dis=none) d=github.com
IronPort-SDR: aqwD1fUljnfFL5jBWNxPUTV++RlTSoOVr8gTpuRQ4UF3h7awnzThcMkobNjFsbhs5QtcxGet5q ApjwghRnKeGEoZWfRRTEOiQo79VVJ0+p/I+7Pgacv22tVAOig5dtXZFQaJ00SmhKTKI4+pXsCu 9mtAUPL+tZydinMotuecLwGdlRv/HiZiwRudGrdOv5rd1iOjIlvsfcffzaM1HjYewXGUSzR9eY jokeE+QTiiHGawK82uGo6ns/T8PpCw78jzpkshfsuDh6s8gtPdafAQk4JakzUZKtJWfym5zKiH +1sQ4AXq/RO+DhFBTfTOpDhT
X-ORIGINAL-IP: 192.30.252.209
X-ORIGINAL-TIME: 14 Sep 2022 22:23:13 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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 jaF
IronPort-HdrOrdr: A9a23:IWVpkaygF2IINdqumUtaKrPwl71zdoMgy1knxilNoNJuE/Bw8P re+sjztCWE7wr5PUtLpTnuAsS9qB/nmaKdpLNhXotLsmHdyReVxcJZnPbfKwSJIVyAygcl79 YfT0EdMr3N5ClB/KLHCVKDYq8dKbC8mcjCuQ6d9QYOcegNUc5dBmxCe2Om+yNNKjWuLKBJZa a0145opyeAZX9SVciyHH8DNtKz3eHjpdbJYQMmGxVi0wWFjSqp5LnmeiLopSs2YndgwaoC7W OAqADy5ryiv/anjjfQ2nTe9Y4+oqqQ9vJzQOKNl+kIIXHXhgGkaJ8JYcz7gAwI
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,315,1654540200";    d="scan'208,217";a="181884466"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
Received: from noreply@github.com([192.168.1.1]) 	by PME Mail With Id 1663174399009.14513;Wed, 14 Sep 2022 22:23:19 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h483fm1oo38d for <helpdesk@satragroup.in>; Wed, 14 Sep 2022 22:23:15 +0530 (envelope-from <noreply@github.com>)
Received: (qmail 77456 invoked by uid 1012); 14 Sep 2022 16:53:15 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.76])          (envelope-sender <noreply@github.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 14 Sep 2022 16:53:15 -0000
Received: from out-26.smtp.github.com (HELO smtp.github.com) ([192.30.252.209])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Sep 2022 22:23:10 +0530
Received: from github-lowworker-c5134a3.ac4-iad.github.net (github-lowworker-c5134a3.ac4-iad.github.net [10.52.23.55])	by smtp.github.com (Postfix) with ESMTP id 62BA85E0BB2	for <helpdesk@satragroup.in>; Wed, 14 Sep 2022 09:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;	s=pf2014; t=1663174387;	bh=f/Kh+WjFErBghJKTEU9vE6whS0ef7mxZoG1dbuiHfqI=;	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:List-ID:	 List-Archive:List-Post:List-Unsubscribe:From;	b=GLRXO2d3W+Jyi50svpAX83AVgw6j5IHXZSDB6GqO5qp8CbgdLcxr3RqbCQeiBBfxb	 zVJiu4aUc468qfkzCTIDHsgT1sPky51npGpMQ/mCFRbpNmEzgXGE0ho096oAUiKroF	 VfEBDU7oRzcV0/xjgzGVugc6WXb+VKzkmZr1gkUI=
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
List-Unsubscribe: <mailto:unsub+AUGHELWW24GZSI3ULSJTILWBF44XHEVBNHHEA25FAM@reply.github.com>, <https://github.com/notifications/unsubscribe/AUGHELR7JN5V4ACCAODMFRDV6H7HHANCNFSM5KDEC6HQ>
X-Auto-Response-Suppress: All
X-GitHub-Recipient-Address: helpdesk@satragroup.in
X-UNKNOWN-HEADER: 
Subject: Re: [SatraMobile/Marg-Sahayak-Web] Pre prod (PR #1)
Date: Wed, 14 Sep 2022 09:53:07 -0700
Message-ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/11023859280@github.com>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: Upendra Tarnoju <notifications@github.com>
To: SatraMobile/Marg-Sahayak-Web <Marg-Sahayak-Web@noreply.github.com>
Cc: helpdesk <helpdesk@satragroup.in>,   Push <push@noreply.github.com>
Return-Path: <noreply@github.com>
content-type: multipart/alternative; charset=utf-8; boundary="--==_mimepart_632206f353ccc_4d82d4f81960d2"
content-transfer-encoding: 7bit
X-PMAttribute: 1663174399009.14513; mb_id=QSM1413892035136; imapid=30946; del_to=helpdesk

----==_mimepart_632206f353ccc_4d82d4f81960d2
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit

@upendra-tarnoju pushed 1 commit.

37f96ebe888bb524e2d5833d9a54ebbe7093dd9a  Print - code changes

-- 
View it on GitHub:
https://secure-web.cisco.com/1uJSvLUyx8326yOW-rBx8xNI9Gp3Hm4-JFhRxfvf4N3jMJG4aLMTECuaAPvLOiMY8RdoEkjt6HUIOPqtVuoZuQftCqJu1NrVq2XR3dKOf8pCm6rULsTbwFicjFyxTyhamNrlpbnDfSyJM3NZVAEmN93ojpCx3EUAmNqi8Jqp0CaLm3ENksfNflENoEKLRRMyKxNQ2-27gdkIWq8eEHnPyRePLZ51dKgfyv0qs9OWBAOSJP8CmaoRNH3BCyRoVo3CbpWmWJjV_dV3L4MTzsXoKDKz1d_AetTCxhJg198m-41rbCqgqUfa5ROewIK7Pih2M9QUscEMcAZXN0CUg-FF29Edct-W5utloW_ITt9J7KQjPl4tN_LDKKcfr5o5GdzRUNHxg7rudaxv-sycfU7MToO9kxQccM40NLnKhK3Q3v_tiqPms4OH9VLoc-3ZdGMqAhVnUOCbN7vY3pyiOt9IuQg/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2Fpull%2F1%2Ffiles%2F1f6fe141a95c5d5dce5c5804b2078c76a4c23c3c..37f96ebe888bb524e2d5833d9a54ebbe7093dd9a
You are receiving this because you are subscribed to this thread.

Message ID: <SatraMobile/Marg-Sahayak-Web/pull/1/push/11023859280@github.com>

----==_mimepart_632206f353ccc_4d82d4f81960d2
content-type: text/html; charset=utf-8
content-transfer-encoding: quoted-printable

<p><a href=3D"https://secure-web.cisco.com/14j-qHcZLtuycgHZeieFOWhVhO4Q8Nwx=
KGRhhEN_-YMUqfiB5mf9T8BxXkXo6IFU7-KkALuADH_i4GQxlzXhX8_5cn2XXHbmWvUh3IwoLak=
DCaaY9GzZDBBgQTS2tawoy_Oh7L2Fl0MsVOVVtJ6Eg2Gdd23hF29bqxWQ0pqR_4Bh8VKOTuK8Bs=
Pui6ESN4ykNZXKvGyb5XNtxnfKE2kAOWItPrgpS1ozyIzea7C6wahJ4Hr_uJTIgUFEwIZgyfVBB=
sCL4NaSfZsGfo-ogXT4cTPvmXjDIAYSl1a9jkjmsoXBhnbyhqvKZGIwKXUhUqZhec_qITHSsZDT=
QDlRSZN3irFFdovtVG6YektHwC5cIgfRU3HckRB5fExxn600eKiF-dxzZexHl-K6zyuRCArmXnT=
FwkAd_YZJuwriWvp7vCsW86bbCxI3thlmMZO-mpyYXVU4yz61KJfL_SMuF6hhLEw/https%3A%2=
F%2Fgithub.com%2Fupendra-tarnoju" class=3D"user-mention">@upendra-tarnoju</=
a> pushed 1 commit.</p>

<ul>
  <li><a class=3D"commit-link" href=3D"https://secure-web.cisco.com/14B3Vj2=
vytfnKdVIogqSr4wDV2NtR3NR-TOOmznieCh8A2piUT7dKMyWLklCQkUuhemV-2lLtj6huixl2N=
kKDqxLQqY5HGa4Rijbumo2eCNY3LTkpa-kDWiqXifglD7N2CeRqhqn2PmvR-2ZPfmI5Ym5kmmut=
QDfn1cCd-2piSTC2VDFmysgxEmPXV2FBfN4NKJJf7JaJ0Shm1BixBWghcDEj6vPagK85YOmByRI=
E2otnGX1Xzl7Utp7ESk4KBXf8We4A7NoGW6-EBrimH-6QxMcaGlp-EyusgRiB9sWZnuINUNRxh1=
Zoc6UDlWYNPBN0KCH1tCBt9D6x2EVg16wRZNrGgFuouk8bbbZts4_8EfPcNKNMU-Cv-hP86k8hw=
FXNiaxgjKT9TEq4bk8vd8xEPgBay1NOaCEv7uei7FPIo9fYkIMeW298ZUcYfGijBUmW3PBvU5N9=
91gWGWhJvxa2hQ/https%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2F=
commit%2F37f96ebe888bb524e2d5833d9a54ebbe7093dd9a">37f96eb</a>  Print - cod=
e changes</li>
</ul>

<p style=3D"font-size:small;-webkit-text-size-adjust:none;color:#666;">&mda=
sh;<br /><a href=3D"https://secure-web.cisco.com/1uJSvLUyx8326yOW-rBx8xNI9G=
p3Hm4-JFhRxfvf4N3jMJG4aLMTECuaAPvLOiMY8RdoEkjt6HUIOPqtVuoZuQftCqJu1NrVq2XR3=
dKOf8pCm6rULsTbwFicjFyxTyhamNrlpbnDfSyJM3NZVAEmN93ojpCx3EUAmNqi8Jqp0CaLm3EN=
ksfNflENoEKLRRMyKxNQ2-27gdkIWq8eEHnPyRePLZ51dKgfyv0qs9OWBAOSJP8CmaoRNH3BCyR=
oVo3CbpWmWJjV_dV3L4MTzsXoKDKz1d_AetTCxhJg198m-41rbCqgqUfa5ROewIK7Pih2M9QUsc=
EMcAZXN0CUg-FF29Edct-W5utloW_ITt9J7KQjPl4tN_LDKKcfr5o5GdzRUNHxg7rudaxv-sycf=
U7MToO9kxQccM40NLnKhK3Q3v_tiqPms4OH9VLoc-3ZdGMqAhVnUOCbN7vY3pyiOt9IuQg/http=
s%3A%2F%2Fgithub.com%2FSatraMobile%2FMarg-Sahayak-Web%2Fpull%2F1%2Ffiles%2F=
1f6fe141a95c5d5dce5c5804b2078c76a4c23c3c..37f96ebe888bb524e2d5833d9a54ebbe7=
093dd9a">View it on GitHub</a> or <a href=3D"https://secure-web.cisco.com/1=
Yw2nLhxH-XFu7HMyTkCBQlMSMX9YVitH4noaIBRUnL2oITs0m--mWESF1LIw7BLnL--kGPM24Ew=
iB-Q7QEI1aie8UVHf9oyDf1ptoMKs8dMilkVHsJ49hN6Rwv75jasFX-W62yZmi9t8_a2IngdDuK=
MwJBXNjePOZAMyThY9H4UvKSDrBAD6aXrWEv7elSq8uI0G3HP9l_3NplUvLU6wFfDIVrsKtW_RQ=
js9_LRuP4ZnPSXfP1hhhv5-mVZ_mMOy1s4cMnl1AV92Gq2OtYV6PbKr3F81ujFPh24aeCqSZH6X=
bv1MGdBm_ML7Po2ZIkY545lEtOsLNQ5bQ65lXMV26tAfF7aliHW83uGGM2E7AVz1NEsC3zgYYPp=
cl_NTZKgWUMtx5ly4IgFqejcvz7Y2BKwta9XzqjNV1SsVKwXl2YxlkYlxbiTzTpBBwAUEhZ5VMu=
4deCMBbf5JBChBTLQqpA/https%3A%2F%2Fgithub.com%2Fnotifications%2Funsubscribe=
-auth%2FAUGHELVGE45CTF23RH4GZVTV6H7HHANCNFSM5KDEC6HQ">unsubscribe</a>.<br /=
>You are receiving this because you are subscribed to this thread.<img src=
=3D"https://secure-web.cisco.com/1XAkkyo2T2U3ZWBiP6VrdCkbMqAqAsct4h3_Ndu8k3=
UDXqE2icuUmw6Q7-EepEWKYevKBhtKde-CVaG5_VWNN6TccIa_CPijmHJ_A2yy3x15SUGHUc-cB=
3_iprsnYRWYfjAWZN_RwjIXDR_StDwobu8YAzfo9doxuYHOr3TIhzAovsg384sAdjoE2acjy4lr=
Mv9Pk7Rn9JcgbV2dTEexzBUZpLFMXZO11xlJhIveoj5Xa06aCDEec5rj0KMKIRYqf_OSjW7Easw=
KRyBidTe-6tvQPrMppve79kdzWFpvbwOag9_4v8RmpRGSLExsjBwtrFgU-bMBe9gOXd_U9aSKsn=
gO0BrP07X_BLImDY7x_30NBFA0HKuFtpX8Z1tvZDB9mVjl9ZZrfjrx4SeZXmWLsLy7b7GqGdTHV=
WcONGDd7O7506LK0PiBX7dQANfVisQCoVeYxsHCuKUF34SW4ORhejw/https%3A%2F%2Fgithub=
.com%2Fnotifications%2Fbeacon%2FAUGHELVZKLNBK7VM75FRWQLV6H7HHA5CNFSM5KDEC6H=
2YY3PNVWWK3TUL52HS4DFXNIHK3DMKJSXC5LFON2FA5LTNBHG65DJMZUWGYLUNFXW5KTDN5WW2Z=
LOORPWSZF6KB2WY3BDHAYDGMRVGU3TEOKQOVZWQIZRGEYDEMZYGU4TEOBQ.gif" height=3D"1=
" width=3D"1" alt=3D"" /><span style=3D"color: transparent; font-size: 0; d=
isplay: none; visibility: hidden; overflow: hidden; opacity: 0; width: 0; h=
eight: 0; max-width: 0; max-height: 0; mso-hide: all">Message ID: <span>&lt=
;SatraMobile/Marg-Sahayak-Web/pull/1/push/11023859280</span><span>@</span><=
span>github</span><span>.</span><span>com&gt;</span></span></p>
<script type=3D"application/ld+json">[
{
"@context": "http://schema.org",
"@type": "EmailMessage",
"potentialAction": {
"@type": "ViewAction",
"target": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/1f6=
fe141a95c5d5dce5c5804b2078c76a4c23c3c..37f96ebe888bb524e2d5833d9a54ebbe7093=
dd9a",
"url": "https://github.com/SatraMobile/Marg-Sahayak-Web/pull/1/files/1f6fe1=
41a95c5d5dce5c5804b2078c76a4c23c3c..37f96ebe888bb524e2d5833d9a54ebbe7093dd9=
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

----==_mimepart_632206f353ccc_4d82d4f81960d2--
