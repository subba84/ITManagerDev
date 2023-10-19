X-Qmail-Scanner-Diagnostics: from 192.168.9.66 by vdvm33.logix.local (envelope-from <no-reply@alerts.actcorp.in>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.66):SA:0(IronPort):.  Processed in 0.042058 secs); 09 Sep 2022 14:20:51 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  no-reply@alerts.actcorp.in designates 202.83.20.142 as  permitted sender) identity=mailfrom; client-ip=202.83.20.142;  receiver=tblr2.logix.in;  envelope-from="no-reply@alerts.actcorp.in";  x-sender="no-reply@alerts.actcorp.in";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:202.83.20.128/27  ip4:123.176.40.157/32 ip4:202.53.8.64/28 ip4:202.53.8.129/32  mx:alerts.actcorp.in include:spf.firstcloudsecurity.net  -all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@mail9.alerts.actcorp.in) identity=helo;  client-ip=202.83.20.142; receiver=tblr2.logix.in;  envelope-from="no-reply@alerts.actcorp.in";  x-sender="postmaster@mail9.alerts.actcorp.in";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=no-reply@alerts.actcorp.in; spf=None smtp.helo=postmaster@mail9.alerts.actcorp.in; dmarc=pass (p=reject dis=none) d=actcorp.in
IronPort-SDR: G7cxNg/wPY4c7ANjYnZPfXVuvx4ZEj1tnsx8G40kwy4whznzC+D9HbELUIB3I9OcOj/KJ++R0k SH1KMVw7rlnKnn/pyHtw3r73jXysfuBZoh1i+eDiF37hG/fJLcYoc0zGMCCmEH+dpbhlue2MzJ nxKNRPS8mIxnJabqsEubwFLbkf0yJOgTWQFK0M64ZKjKtRRyFHMrzGevBIUItbTHg3cW9t+9FB kujNC3cCrM8Q/zMJ5kvB4FeYg6wMfCnErGwWhUiQZ4QjyKN1QtXVe4e0nNPnUVHucUmkpEWHr6 Cz9X5dtnP+RRnju44+leWg+R
X-ORIGINAL-IP: 202.83.20.142
X-ORIGINAL-TIME: 09 Sep 2022 19:50:51 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:3lbfUq2JIyJYFK713rz9NgqjBFckLtp133Aq2lEZdPWaSL3nqy nIpoVu6faUskdlZJhEo7C90ca7MArhHPJOkPUs1JaZLXjbUS6TXfxfBOjZsk/d8k/Fh5VgPM 5bGsAUYrCdYzkK6/oSizPIa+rIruP3j5yAtKP3yHp3SwFmL4Vt9R1wBAreMmAefng9OXM+Lu v62iNWnUvFRZ1sVLXJOlA1G875iZnwuLXKTSVuPW9F1OD0t0LZ1JfKVyK94y43bw5vqI1Skx mhr+Un3Mqej80=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,303,1654540200";    d="scan'208";a="84082348"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
X-Virus-Scanned: amavisd-new at alerts.actcorp.in
Received: from no-reply@alerts.actcorp.in([192.168.1.1]) 	by PME Mail With Id 1662731409419.10448;Fri, 9 Sep 2022 19:20:09 +0530 (IST)
Received: from vdvm33.logix.local (127.0.0.1) by tblr42.logix.in id h3d5s81oo384 for <helpdesk@satragroup.in>; Fri, 9 Sep 2022 19:50:51 +0530 (envelope-from <no-reply@alerts.actcorp.in>)
Received: (qmail 73216 invoked by uid 1012); 9 Sep 2022 14:20:51 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.66])          (envelope-sender <no-reply@alerts.actcorp.in>)          by vdvm33.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 9 Sep 2022 14:20:51 -0000
Received: from mail.alert.actcorp.in (HELO mail9.alerts.actcorp.in) ([202.83.20.142])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Sep 2022 19:50:49 +0530
Received: from localhost (localhost [127.0.0.1])	by mail9.alerts.actcorp.in (Postfix) with ESMTP id 2D60E6645D8	for <helpdesk@satragroup.in>; Fri,  9 Sep 2022 14:20:29 +0000 (UTC)
Received: from mail9.alerts.actcorp.in ([127.0.0.1])	by localhost (mail9.alerts.actcorp.in [127.0.0.1]) (amavisd-new, port 10032)	with ESMTP id 1t17miSkg3Jy for <helpdesk@satragroup.in>;	Fri,  9 Sep 2022 14:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])	by mail9.alerts.actcorp.in (Postfix) with ESMTP id E940B6645D9	for <helpdesk@satragroup.in>; Fri,  9 Sep 2022 14:20:28 +0000 (UTC)
Received: from mail9.alerts.actcorp.in ([127.0.0.1])	by localhost (mail9.alerts.actcorp.in [127.0.0.1]) (amavisd-new, port 10026)	with ESMTP id hTaWSOoL9jKG for <helpdesk@satragroup.in>;	Fri,  9 Sep 2022 14:20:28 +0000 (UTC)
Received: from sbldreai2 (unknown [10.100.111.234])	by mail9.alerts.actcorp.in (Postfix) with ESMTP id CD664664603	for <helpdesk@satragroup.in>; Fri,  9 Sep 2022 14:20:28 +0000 (UTC)
Reply-To: helpdesk@satragroup.in
MIME-Version: 1.0
format: flowed
Subject: SR Clousre
Date: Fri, 9 Sep 2022 19:50:28 +0530 (IST)
Message-ID: <935550207.1144895.1662733228761.JavaMail.siebeladm@sbldreai2>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: NoReply-JD <no-reply@alerts.actcorp.in>
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <no-reply@alerts.actcorp.in>
content-type: text/html; charset=us-ascii
content-transfer-encoding: 7bit
X-PMAttribute: 1662731409419.10448; mb_id=QSM1413892035136; imapid=30888; del_to=helpdesk

Dear Customer ,<Br><Br>
Greetings from ACT Fibernet<Br><Br>

Ticket No SR10165824889315 is closed. <Br>
If you are still unable to access internet, please restart your router and recheck. <Br>
To reopen ticket, send N to 9632711600.  

Your feedback helps us improve constantly. Please do take a minute to share your valuable feedback on the link below https://soa.actcorp.in/cx/cn.php?t=SR&id=SR10165824889315 <Br><Br><Br>

Regards,<Br>
Team ACT
