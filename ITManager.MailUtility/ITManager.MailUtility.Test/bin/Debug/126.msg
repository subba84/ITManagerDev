X-Qmail-Scanner-Diagnostics: from 192.168.9.71 by vdvm34.logix.local (envelope-from <support.trueconnect@jio.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.71):SA:0(IronPort):.  Processed in 0.02932 secs); 17 Sep 2022 07:06:46 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  support.trueconnect@jio.com designates 49.40.2.145 as  permitted sender) identity=mailfrom; client-ip=49.40.2.145;  receiver=tblr2.logix.in;  envelope-from="support.trueconnect@jio.com";  x-sender="support.trueconnect@jio.com";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:49.40.2.101 ip4:49.40.14.18  ip4:49.40.2.144 ip4:49.40.2.145 ip4:49.40.14.57  ip4:49.40.54.128/27 ip4:49.40.55.128/27 -all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@smtp9-outgoing.mail.rjil.net) identity=helo;  client-ip=49.40.2.145; receiver=tblr2.logix.in;  envelope-from="support.trueconnect@jio.com";  x-sender="postmaster@smtp9-outgoing.mail.rjil.net";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=support.trueconnect@jio.com; spf=None smtp.helo=postmaster@smtp9-outgoing.mail.rjil.net; dkim=temperror (key query timeout) header.i=@jio.com; dmarc=pass (p=reject dis=none) d=jio.com
IronPort-SDR: 9PlRwYM/d5J6xwpplVSCaq++a4SGGIz91M7mNXhbsu0f2DbBOLfpQyHOzQLLOL/sh+UemnjG0v n0Y4vUkhTzsCrbx5pok+S2BdW8WvhgS02w5hX/c1hJBIM1rR4AmPotQbKqABN929dFgHtfXk8E kuJ0mnV1LdKy64H8Rnalkt6hGsqYRhKov/7pLUmQGkxFuSlxHkJoewkTX2Z/wW2+nLtmxNbJf7 McpcEfLNIvdXAv0Ve+UG7svGccZnPpb4Wa9RjNkBVD+XFUETW5yHEMJ1dUGJozEHhrg+q1GQQ6 zuVEe9WlADE3r8ugMs7cMeIX
X-ORIGINAL-IP: 49.40.2.145
X-ORIGINAL-TIME: 17 Sep 2022 12:36:45 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23:Aa5Jiqh4RXErH5N68Sts9ONhX161GxYKZh0ujC45NGQN5FlHY01je htvUDrUO62NNmf9fdF0adzg9k0D6JSAmNViSwtl/ysyRSMW8JqUDtmwEB3MMnLJJKUvbq7HA +byyzXkBJlsJpMJjk71WlTZhSAgk/nOHNIQMcacUsxLbVYMpBwJ1FQywIbVvqYy2YLjW1LU5 ouryyHiEAbNNwBcYj98B52r9EgHUMTa4Fv0aXRjDRzjlAa2e0g9VfrzF4noR5fLatA88tqBe gr25OvRElU1UPsaIonNfr7TKiXmS5aDZVDmZnB+AsBOiTAbzsA++vdjbJLwwKqY4tmEt4kZ9 TlDiXC/YQQMNfaSk94+aTlBE3h7L/N/+ofacUHq5KR/z2WeG5ft6+5rEFlneIoF5ulwAGdBs /kRKTRLdBKCg6Swza7TputE2pVlcJGtZsVG5iwIITLxVZ7KRbjYXr3S4sVEmisqm81FGvDYa sEFQThua1LLZBgn1lI/Ustuwrfz3SKuG9FegFLSgLMcxnjJ9TFg8IHzCvfIZMGra+wAyy50o UqdpTihWUtHXDCF8hKF/3a0iuLUngvgUZ4IHbKi8eNyxlyVrlH/EzUNUEej+ry+l1KxXNNZJ AoR8ysq67Iw9UjtSNThN/GlnJKalh05UIEOGNcZ0iGUyvPR8VigBFAZHgcUPbTKq/QKbTAt0 1aImfbgCjpurKCZRBqhy1uEkd+hEXJMfD5dOUfoWSNasoG7+dlbYgfnF447SMaIYsvJ9SbY4 hbikcTTr64WkdZQkqKm4V/AgjSj4J3ATwpz/AfWWiSj4x8RiG+Zi26AtgGzARVodt3xory9U J4swJf2AAcmUcvlqcB1aL9RdIxFHt7cWNEmvXZhHoM66xOm8GO5cIZb7VlWfRk3aZ1ZImeyO BCI4Gu9AaO/2lP0NcebhKrvUKwXIVTITLwJq9iIN4AXOsguHON51HozOBLIt4wSrKTcufplZ c/AK5vE4YcyC6VgpAdatM9DuYLHMhsWnDuJLbiil0rP+ePHOBa9FOlZWHPTMLFRxP3f+m39r Y0AX/ZmPj0EDYUSlAGMrdVMRb3LRFBnba3LRzt/L7faclU3SD55VZc8A9oJIuRYokicrc+Tl lmVWE5fjlH4gBX6xc+iMRiPsZvjAsRyq2wVJyspMQr60nQve9n97qYYMZAweOB/puBkyPd1S dgDetmBU60WF2+Xo2xFYMmvtpFmeTSqmRmKY3ivbg85csMyXAfO4NLlIlbi+XBWXCq6vMczu ZO60QbfTcZRTghuFpmEavOoiVi2uCFFyu51WkLJJPhVeVntodEzdneh1qdvLphVexvZxzac2 wKHOjsipLHA890v7d3EpaGYtIP1QeFwKUxXQjvA5rGsOCiGo2euzNMSUOuMejyBBmr49L/4N bdOyu3kYbgAgUpFtIt6HPBuxKM6ocHtprscyAl4RS2ZY1OuA7JmA3+HwcgW7fAcm+IF5FrrV xLd4MReNJWIJNjhTAwbKj0jY7nRzvoTgDTTsak4LRmo/iNx57bbA0xeMwPW2H5GKadta8Yi3 Psuv88Q5Eq6gxsudMyEjyQS8WmQdyRSX6Iiv5AcIYnqlgtykQwTPMGAV36r7cHdcchIP2krP iSQ2PjIiYNayxeQaHE0D3XMgbdQiJlmVMqmF7Pey4llW+Yph8PbGDVK9CgvH0FS0wlI1ON1N S5uPkxxY7+M/jMugsVfN4xp98etGzXBknEdCXNR/IEac6Vsfm7MKys2PuPlEIUx7TdHZjYCl F2H4D+NbAsGt/0dEsf/tYCJZhAjoRFMGtX+pf2a
IronPort-HdrOrdr: A9a23:rGNPzqBo/H6AB27lHem455DYdb4zR+YMi2TDsHoBLSC9E/bo8v xH/pwgvyMc7Qx9ZJhOo7+90cW7L080lqQFg7X5X43DYOCOggLBR+1fBODZsl7d8kPFl9Jg6Q ==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,322,1654540200";    d="scan'208";a="218683339"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp9-outgoing.mail.rjil.net E5960280151
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jio.com; s=jiomail;	t=1663398393; bh=Tr6x4fs1US9esIDyX7anl365HK9RT66d8qkiGmlWytE=;	h=Date:From:To:Subject:From;	b=gGPIzepERnd+HHjFt8YuNn0bji5gu94k7zd7GxyPx27VrI+9BZroCnRrdQid1mrSR	 Qr5QvAeVkfNmbSf0NFXGJK4dbXh+fLMcLSlUJ+USYJryTbQm24s6WrvmdwnO9PjXEo	 GUddKjS48k8ITleW+R+xSQC0dr1uoa+2TAjSl/z4=
Received: from support.trueconnect@jio.com([192.168.1.1]) 	by PME Mail With Id 1663398410404.16487;Sat, 17 Sep 2022 12:36:50 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h4lp0c1oo38v for <helpdesk@satragroup.in>; Sat, 17 Sep 2022 12:36:46 +0530 (envelope-from <support.trueconnect@jio.com>)
Received: (qmail 144899 invoked by uid 1012); 17 Sep 2022 07:06:46 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.71])          (envelope-sender <support.trueconnect@jio.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 17 Sep 2022 07:06:46 -0000
Received: from smtp3-outgoing.mail.rjil.net (HELO smtp9-outgoing.mail.rjil.net) ([49.40.2.145])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2022 12:36:34 +0530
Received: from NVMBD2ANO130V15.bss.jio.com (unknown [10.140.84.156])	by smtp9-outgoing.mail.rjil.net (Postfix) with ESMTP id E5960280151	for <helpdesk@satragroup.in>; Sat, 17 Sep 2022 12:34:17 +0530 (IST)
Received: from jiouccwsonode-1 (unknown [10.160.216.144])	by NVMBD2ANO130V15.bss.jio.com (Postfix) with ESMTP id 98329440043;	Sat, 17 Sep 2022 12:36:33 +0530 (IST)
MIME-Version: 1.0
Subject: Jio Trueconnect - Approval of Registration request for Content Template (<SMS/VOICE>)
Date: Sat, 17 Sep 2022 12:36:33 +0530 (IST)
Message-ID: <236778995.531978.1663398393613@jiouccwsonode-1>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: support.trueconnect@jio.com
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <support.trueconnect@jio.com>
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit
X-PMAttribute: 1663398410404.16487; mb_id=QSM1413892035136; imapid=30980; del_to=helpdesk

Dear User,

Your request for Content Template (<SMS/VOICE>) registration has been approved.

Kindly find the Content Template (<SMS/VOICE>) details below :

Content Template ID : 1207166306382633444
Category : Communication/Broadcasting/Entertainment/IT
Template Type : SMS
Content Template (<SMS/VOICE>) : OTP-RBDGUJ

Associated Headers : RBDGUJ)
Associated Consent Template :  ()

Thank you,
Jio Trueconnect Team


Disclaimer: This is a system generated email, please do not reply
