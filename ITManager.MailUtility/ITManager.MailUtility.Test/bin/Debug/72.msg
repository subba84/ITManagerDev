X-Qmail-Scanner-Diagnostics: from 192.168.9.81 by vdvm34.logix.local (envelope-from <support.trueconnect@jio.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.81):SA:0(IronPort):.  Processed in 0.030197 secs); 13 Sep 2022 10:10:50 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  support.trueconnect@jio.com designates 49.40.14.57 as  permitted sender) identity=mailfrom; client-ip=49.40.14.57;  receiver=tblr2.logix.in;  envelope-from="support.trueconnect@jio.com";  x-sender="support.trueconnect@jio.com";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:49.40.2.101 ip4:49.40.14.18  ip4:49.40.2.144 ip4:49.40.2.145 ip4:49.40.14.57  ip4:49.40.54.128/27 ip4:49.40.55.128/27 -all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@smtp5-outgoing.mail.rjil.net) identity=helo;  client-ip=49.40.14.57; receiver=tblr2.logix.in;  envelope-from="support.trueconnect@jio.com";  x-sender="postmaster@smtp5-outgoing.mail.rjil.net";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=support.trueconnect@jio.com; spf=None smtp.helo=postmaster@smtp5-outgoing.mail.rjil.net; dkim=pass (signature verified) header.i=@jio.com; dmarc=pass (p=reject dis=none) d=jio.com
IronPort-SDR: q8RF611BirjPWFvb2nEqH35uL89EkuG5AhbrgDUVvdah36VNUc4CJ968D/XaQ4RpSfkYGv48Qm BXdXxQGL3iRwEZbF+4iXaKGwvVnNnJqS4W1x+WOErjL5G3F8PO/eG4JHg0KZorLFvFdsSrFi0G jDqth1kQfw2w1gidHGbpw/R0RAsxC5ZAVRbnCwRA1zNNV8AZNhNMJZEWqvzlN2it58hS9J09KT atFMgtohRVS4SSqfH1/4xIjPFIvZf0PQoKxvExqChZCI9wNheRSKrEtaW69XFVo2iP0vxJwadj IwI2Y2ODZFKrBiD+pGIrneTB
X-ORIGINAL-IP: 49.40.14.57
X-ORIGINAL-TIME: 13 Sep 2022 15:40:50 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23:fIS8j6sT6DkYf5T37O6S5ZHRM+fnVC5YMUV32f8akzHdYApBsoF/q tZmKT/Xa/yINmGhctojYdzi9k0AupLTn9A1SVE//3wzQ3kW9ZOVVN+UB3mqAy7DdceroGCLT yk9hngsCOhtFhcwcz/0atANlVEliefQAOCU5NfsYkidfyc9IMsaoU8lyrVRbrJA24DjWVvc4 Iiq+qUzBXf8s9JKGjJJg068gE801BjCkGtwUosWOJinFHeH/5UkJMt3yZOZdhMUcaENdgKOf Nsv+Znjlo/vE7jBPfv/+lrzWhVirrf6bFDW4pZcc/HKbhNq/0Te3o5qbKJ0he66RFxlkvgoo Oihu6BcRi8VMLDcoNxNeiJ+AjtTEq1CqIHcKmSw5Jn7I03uKxMAwt11CV0uYMgf5/p4BmBI+ rodITEJKAqBhubwxr+nIgVurphyapWzetpD/Cw/pd3aJa5OrZTrWLjS/dhCwHEsnN1DFvHYY ccSdRJtbROGaBpKUrsSIMJhxbj42yGlG9FegBW+nfBupE2P8C5Wib22YcjkW+K0AsoAyy50o UqdpTihWUtHXDCF8hKF/3a0iuLUngvgUZ4IHbKi8eNyxlyVrlH/EzUNUEej/by+l1KxXNNZJ AoR8ysq67Iw9UjtSNThN/GlnJKaliISRspoK70T0yec0If74wLJOHMPUjEUPbTKq/QKbTAt0 1aImfbgCjpurKCZRBqhy1uEkd+hEXJMfD5dOUfoWSNasoG7+dlbYgfnF447SMaIYsvJ9SbY4 hbikcTTr64WkdZXkqKm4V/AgjSj4J3ATwpz/AfWWiSj4x8RiG+Zi26AtgezARVodt/xory9U J4swJT2AAcmUcvlqcB1aL9RdIxFHt7cWNEmvXZhHoM66xOm8GO5cIZb7VlWfRk3aZ5cJmOyO BeL5Gu9AaO/2lP0NcebhKrvUKwXIVTIT7wJq9iIN4AXOsguHON51Ho/OBPOt4wSrKTcufplZ c/AK5vE4YcyC6VgpAdatM9DuYLHMhsWnDuJLbiil0rP+ePHOBa9FOlZWHPTMLFRxP3f+m39r Y0AX/ZmPj0EDYUSlAGMrdVMRb3LRFBnba3LRzt/L7PYelI/RTx9VJc8A9oJIuRYokicrc+Rl lmVWE5fjlH4gBX6xc+iMBiPsZvjAsRyq2wVJyspMQr60nQve9n97qYYMZAweOB/puBkyPd1S dgDetmBU60WF2+Xo2xFYMmvtpFmeTSqmRmKY3ivbg85csMyXAfO4NLlIlbi+XBWXCq6vMczu ZO60QbfTcZRTghuFpmEavOoiVi2uCFFyu51WkLJJPhVeVntodEzdneh1qdvLphVexvZxzac2 wKHOjsipLHA890v7d3EpaGYtIP1QeFwKUxXQjvA5rGsOCiGo2euzNMSUOuMejyBBmr49L/4N bdOyu3kbbgAgUpFtIt6HPBuxKM6ocHtprscyAl4RS2ZY1OuA7JmA3+HwcgW7fAcm+IF5FrrV xLd4MReNJWIJNjhTAwbKj0jY7nRzvoTgDTTsak4LRmo/iNx57bbA0xeMwPW2H5GKadtbMYi3 Psuv88Q5Eq6gxsudMyEjyQS8WmQdyRSX6Iiv5AcIYnqlgtykQwTPMGAV36r7cHdcchIP2krP iSQ2PjIiYNayxeQaHE0D3XMgbdQiJlmVMqmF7Pey4llW+Yph8PbGDVK9CgvE0FS0wlI1ON1N S5uPkxxY7+M/jMugsVfN4xp98etGzXBknEdCXNR/IEac6Vsfm7MKys2PuPlEIUx7TdHZjYCl F2H4D+NbAsGt/0dEsf/tYCJZhAjoRFMGtX+pf2a
IronPort-HdrOrdr: A9a23:qdarcK/L/DN/o8NOn21uk+DMI+orL9Y04lQ7vn2ZLiYlFvBw9v re+cjyt3fP4gr5PUtMpTnuAsa9qB/nm6KdgrNhX4tKPjOHhILAFugLhuffKlbbak7DH4BmtJ tdTw==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,312,1654540200";    d="scan'208";a="87178502"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp5-outgoing.mail.rjil.net BD97966005B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jio.com; s=jiomail;	t=1663063828; bh=kQlPKVGjR3o4bouaHLqpAJ2BrbR4VBlVGIl/DneAGyk=;	h=Date:From:To:Subject:From;	b=LB6Q5AkcKUPIfU0s3AStNASv8xBYZGqo0qCGqqDKY820yuNrn3e46TQ3ahhRF8ft5	 wbxfrYXc6ANMs/qvVaKBcJDp/1Ql4gB+bz5HJ3wGY8RCTsJg1iurEioBUMer47yDbW	 X511HdVEU29eZnC31ESzMZT4BQoJ/f8ECPTmShDc=
Received: from support.trueconnect@jio.com([192.168.1.1]) 	by PME Mail With Id 1663063854567.13051;Tue, 13 Sep 2022 15:40:54 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h41bim1oo38h for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 15:40:50 +0530 (envelope-from <support.trueconnect@jio.com>)
Received: (qmail 135081 invoked by uid 1012); 13 Sep 2022 10:10:50 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.81])          (envelope-sender <support.trueconnect@jio.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 13 Sep 2022 10:10:50 -0000
Received: from smtp4-outgoing.mail.rjil.net (HELO smtp5-outgoing.mail.rjil.net) ([49.40.14.57])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Sep 2022 15:40:49 +0530
Received: from NVMBD2ANR070V15.bss.jio.com (unknown [10.140.84.156])	by smtp5-outgoing.mail.rjil.net (Postfix) with ESMTP id BD97966005B	for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 15:40:28 +0530 (IST)
Received: from jiouccwsonode-1 (unknown [10.160.216.144])	by NVMBD2ANR070V15.bss.jio.com (Postfix) with ESMTP id B49EA6E;	Tue, 13 Sep 2022 15:40:28 +0530 (IST)
MIME-Version: 1.0
Subject: Jio Trueconnect - Confirmation of Registration request for Content Template (<SMS/VOICE>) for PE ID 1201162072903097949
Date: Tue, 13 Sep 2022 15:40:28 +0530 (IST)
Message-ID: <402961521.518878.1663063828731@jiouccwsonode-1>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: support.trueconnect@jio.com
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <support.trueconnect@jio.com>
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit
X-PMAttribute: 1663063854567.13051; mb_id=QSM1413892035136; imapid=30922; del_to=helpdesk

Dear User, 

We have received your registration request for Content Template (<SMS/VOICE>) and it has been submitted to Jio's Managed Commercial Communication (MCC) portal.

Request Number : SR1663063826334
Content Template ID : 1207166306382633444

A confirmation message will be sent on completion of the registration process.

Thank you, 
Jio Trueconnect Team


Disclaimer: This is a system generated email, please do not reply
