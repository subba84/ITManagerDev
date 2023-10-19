X-Qmail-Scanner-Diagnostics: from 192.168.8.53 by vdvm34.logix.local (envelope-from <no-reply@alerts.actcorp.in>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.8.53):SA:0(IronPort):.  Processed in 0.034026 secs); 08 Sep 2022 11:15:06 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  no-reply@alerts.actcorp.in designates 202.83.20.143 as  permitted sender) identity=mailfrom; client-ip=202.83.20.143;  receiver=tblr2.logix.in;  envelope-from="no-reply@alerts.actcorp.in";  x-sender="no-reply@alerts.actcorp.in";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:202.83.20.128/27  ip4:123.176.40.157/32 ip4:202.53.8.64/28 ip4:202.53.8.129/32  mx:alerts.actcorp.in include:spf.firstcloudsecurity.net  -all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@mail8.alerts.actcorp.in) identity=helo;  client-ip=202.83.20.143; receiver=tblr2.logix.in;  envelope-from="no-reply@alerts.actcorp.in";  x-sender="postmaster@mail8.alerts.actcorp.in";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=no-reply@alerts.actcorp.in; spf=None smtp.helo=postmaster@mail8.alerts.actcorp.in; dmarc=pass (p=reject dis=none) d=actcorp.in
IronPort-SDR: Aw8AV1+3rlEFOiGwNUNxYi1bhyl04PZNGWip6Zx/julbXVj5oGCkkzRmvWMxq8vUwMBQ5Cm9jC 6dWbMZFXJyOEtI/dL6VT3U+7dlAM01aCkIr/uAeKPQFz35Hhr/pFC+K/jEogYlZg3GZ3u0mBSK vjPTB1bWiINOPSSDXlqqDOdmJpWb7VuAirRHP4QXYz5ZytCGnOJwRnHMA7EYOjvh0lvp0MFd3j xLVBDBWjglQRM4kcMMqiNJ6FK9t4wo33/fx+3C+3owDgYDM8KoN6QimK7SK96fD8tH/xzxrAPU FnVvVF2gaLOsKtm8GKAFJ+u3
X-ORIGINAL-IP: 202.83.20.143
X-ORIGINAL-TIME: 08 Sep 2022 16:45:05 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:1R5mRqAzak76VK/lHems55DYdb4zR+YMi2TDsHoBMCC9E/bo8f xG88576faZslYssRIb6Le90cu7MBbhHPdOiOF7V9rMMjUO3lHYT72KhrGSpwEIdReOlNK1Cp 0NT0CPYOeAdWRHsQ==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,299,1654540200";    d="scan'208";a="82560491"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
X-Virus-Scanned: amavisd-new at alerts.actcorp.in
Received: from no-reply@alerts.actcorp.in([192.168.1.1]) 	by PME Mail With Id 1662633863694.19691;Thu, 8 Sep 2022 16:14:23 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h377bk1oo387 for <helpdesk@satragroup.in>; Thu, 8 Sep 2022 16:45:06 +0530 (envelope-from <no-reply@alerts.actcorp.in>)
Received: (qmail 111545 invoked by uid 1012); 8 Sep 2022 11:15:06 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.8.53])          (envelope-sender <no-reply@alerts.actcorp.in>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 8 Sep 2022 11:15:06 -0000
Received: from mail.in7.actcorp.in (HELO mail8.alerts.actcorp.in) ([202.83.20.143])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2022 16:45:04 +0530
Received: from localhost (localhost [127.0.0.1])	by mail8.alerts.actcorp.in (Postfix) with ESMTP id C2EA29AA30C	for <helpdesk@satragroup.in>; Thu,  8 Sep 2022 16:45:02 +0530 (IST)
Received: from mail8.alerts.actcorp.in ([127.0.0.1])	by localhost (mail8.alerts.actcorp.in [127.0.0.1]) (amavisd-new, port 10032)	with ESMTP id xAhWCA-_FEYQ for <helpdesk@satragroup.in>;	Thu,  8 Sep 2022 16:45:02 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])	by mail8.alerts.actcorp.in (Postfix) with ESMTP id 8348F9AA338	for <helpdesk@satragroup.in>; Thu,  8 Sep 2022 16:45:02 +0530 (IST)
Received: from mail8.alerts.actcorp.in ([127.0.0.1])	by localhost (mail8.alerts.actcorp.in [127.0.0.1]) (amavisd-new, port 10026)	with ESMTP id nrd6c6QeLFew for <helpdesk@satragroup.in>;	Thu,  8 Sep 2022 16:45:02 +0530 (IST)
Received: from brmdrapp2 (unknown [10.100.111.225])	by mail8.alerts.actcorp.in (Postfix) with ESMTP id 608AD9B3023	for <helpdesk@satragroup.in>; Thu,  8 Sep 2022 16:45:02 +0530 (IST)
Reply-To: helpdesk@satragroup.in
MIME-Version: 1.0
format: flowed
Subject: ACT Payment Notification
Date: Thu, 8 Sep 2022 16:45:02 +0530 (IST)
Message-ID: <524289868.415528.1662635702356.JavaMail.pin@brmdrapp2>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: NoReply-JD <no-reply@alerts.actcorp.in >
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <no-reply@alerts.actcorp.in>
content-type: text/html; charset=us-ascii
content-transfer-encoding: 7bit
X-PMAttribute: 1662633863694.19691; mb_id=QSM1413892035136; imapid=30884; del_to=helpdesk

Dear Subscriber,We acknowledge the receipt of Rs:4718.82 towards ACT Fibernet Account No 101487861449 on 08/09/2022. Happy Surfing!!! Now get your bill breakup and payment details through the ACT Fibernet app https://is.gd/actapp. Team ACT
