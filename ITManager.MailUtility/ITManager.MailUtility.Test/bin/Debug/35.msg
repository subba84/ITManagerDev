X-Qmail-Scanner-Diagnostics: from 192.168.9.66 by vdvm34.logix.local (envelope-from <no-reply@alerts.actcorp.in>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.66):SA:0(IronPort):.  Processed in 0.032208 secs); 09 Sep 2022 06:27:11 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  no-reply@alerts.actcorp.in designates 202.83.20.142 as  permitted sender) identity=mailfrom; client-ip=202.83.20.142;  receiver=tblr2.logix.in;  envelope-from="no-reply@alerts.actcorp.in";  x-sender="no-reply@alerts.actcorp.in";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:202.83.20.128/27  ip4:123.176.40.157/32 ip4:202.53.8.64/28 ip4:202.53.8.129/32  mx:alerts.actcorp.in include:spf.firstcloudsecurity.net  -all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@mail9.alerts.actcorp.in) identity=helo;  client-ip=202.83.20.142; receiver=tblr2.logix.in;  envelope-from="no-reply@alerts.actcorp.in";  x-sender="postmaster@mail9.alerts.actcorp.in";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=no-reply@alerts.actcorp.in; spf=None smtp.helo=postmaster@mail9.alerts.actcorp.in; dmarc=pass (p=reject dis=none) d=actcorp.in
IronPort-SDR: DVjI273xIBGqQOYPsEjhWOexFq1VuxphJAC4YNVQPcMyVI/SLdm0vfMTFnNArVslV65iYnNrU/ hmf1gHYUGWS9lKpar+rkDDj4X0FjXDGLlbS38tSqODNeOVZ/1jAE3PiOYyZsjwEb66p1x6bqkx 6klLfINonIM1wVMB365N9FpESDWF9RLREA7GorCOHHOLNL7l4IxK5Uh3gw+NEmE1TpaSVh/AsP EsMOpbfmGlWh26dpj5GZKSaivNf+sOIp++wQ2VUu3CDMam7Qd1B+lieGXJ0f9cTD3vY3YUtQfI PoMpXhunMI8y1PFkZ2e1UguF
X-ORIGINAL-IP: 202.83.20.142
X-ORIGINAL-TIME: 09 Sep 2022 11:57:10 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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 m8cSt5aLlGtuA==
IronPort-HdrOrdr: A9a23:+oaDyqm/9l7k6BBRbZPj/UExBN3pDfIs3DAbv31ZSRFFG/Fw8P re5cjztCWE7gr5N0tApTntAsm9qBDnhPlICOsqTNKftWDd0QPCRuwMg7cKpQeQeBEWndQtsZ uIHZIOauEY0mIXsS4LiDPIa+od/A==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,302,1654540200";    d="scan'208";a="83952448"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
X-Virus-Scanned: amavisd-new at alerts.actcorp.in
Received: from no-reply@alerts.actcorp.in([192.168.1.1]) 	by PME Mail With Id 1662702988669.10128;Fri, 9 Sep 2022 11:26:28 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h3bebu1oo388 for <helpdesk@satragroup.in>; Fri, 9 Sep 2022 11:57:11 +0530 (envelope-from <no-reply@alerts.actcorp.in>)
Received: (qmail 17132 invoked by uid 1012); 9 Sep 2022 06:27:11 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.66])          (envelope-sender <no-reply@alerts.actcorp.in>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 9 Sep 2022 06:27:11 -0000
Received: from mail.alert.actcorp.in (HELO mail9.alerts.actcorp.in) ([202.83.20.142])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Sep 2022 11:57:09 +0530
Received: from localhost (localhost [127.0.0.1])	by mail9.alerts.actcorp.in (Postfix) with ESMTP id 92782664440	for <helpdesk@satragroup.in>; Fri,  9 Sep 2022 06:27:09 +0000 (UTC)
Received: from mail9.alerts.actcorp.in ([127.0.0.1])	by localhost (mail9.alerts.actcorp.in [127.0.0.1]) (amavisd-new, port 10032)	with ESMTP id JJhfFQFY01DH for <helpdesk@satragroup.in>;	Fri,  9 Sep 2022 06:27:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])	by mail9.alerts.actcorp.in (Postfix) with ESMTP id 440DE6643C7	for <helpdesk@satragroup.in>; Fri,  9 Sep 2022 06:27:09 +0000 (UTC)
Received: from mail9.alerts.actcorp.in ([127.0.0.1])	by localhost (mail9.alerts.actcorp.in [127.0.0.1]) (amavisd-new, port 10026)	with ESMTP id 4ZHCr2QEzCkt for <helpdesk@satragroup.in>;	Fri,  9 Sep 2022 06:27:09 +0000 (UTC)
Received: from sbldreai2 (unknown [10.100.111.234])	by mail9.alerts.actcorp.in (Postfix) with ESMTP id 2A3C4664442	for <helpdesk@satragroup.in>; Fri,  9 Sep 2022 06:27:09 +0000 (UTC)
Reply-To: helpdesk@satragroup.in
MIME-Version: 1.0
format: flowed
Subject: Complaint Raised
Date: Fri, 9 Sep 2022 11:57:09 +0530 (IST)
Message-ID: <1291340743.1095663.1662704829126.JavaMail.siebeladm@sbldreai2>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: NoReply-JD <no-reply@alerts.actcorp.in>
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <no-reply@alerts.actcorp.in>
content-type: text/html; charset=us-ascii
content-transfer-encoding: 7bit
X-PMAttribute: 1662702988669.10128; mb_id=QSM1413892035136; imapid=30885; del_to=helpdesk

Dear Subscriber,

This is an automatic email confirmation to inform you that your ticket number SR10165824889315 has been registered.
Account Number is 101487861449
Userid is 101487861449.
Ticket details for your reference
Ticket No:SR10165824889315
. Also Wi Fi experience depends on multiple factors, to enhance the current experience and enjoy incredible speed, Click here https://www.actcorp.in/wifi_router/tips.pdf. For any further information and clarification regarding this ticket, please call our Subscriber support on 9121212121/7288999999 or reply to support@actcorp.in.

Now you can also track your service request using the ACT Fibernet app https://is.gd/actapp

Regards,
ACT Fibernet.
