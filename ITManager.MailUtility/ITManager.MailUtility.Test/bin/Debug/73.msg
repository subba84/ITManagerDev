X-Qmail-Scanner-Diagnostics: from 192.168.8.22 by vdvm34.logix.local (envelope-from <support.trueconnect@jio.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.8.22):SA:0(IronPort):.  Processed in 0.037275 secs); 13 Sep 2022 10:13:09 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  support.trueconnect@jio.com designates 49.40.14.18 as  permitted sender) identity=mailfrom; client-ip=49.40.14.18;  receiver=tblr2.logix.in;  envelope-from="support.trueconnect@jio.com";  x-sender="support.trueconnect@jio.com";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:49.40.2.101 ip4:49.40.14.18  ip4:49.40.2.144 ip4:49.40.2.145 ip4:49.40.14.57  ip4:49.40.54.128/27 ip4:49.40.55.128/27 -all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@smtp-outgoing.mail.rjil.net) identity=helo;  client-ip=49.40.14.18; receiver=tblr2.logix.in;  envelope-from="support.trueconnect@jio.com";  x-sender="postmaster@smtp-outgoing.mail.rjil.net";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=support.trueconnect@jio.com; spf=None smtp.helo=postmaster@smtp-outgoing.mail.rjil.net; dkim=pass (signature verified) header.i=@jio.com; dmarc=pass (p=reject dis=none) d=jio.com
IronPort-SDR: egbydSPAQuIlAzOiK1eNssheUP3rxE4kgV/ppn53f22rJ0bxXUMzqpZ20zY2MrKpONEzA52knG Gw5UkGv/W3iw==
X-ORIGINAL-IP: 49.40.14.18
X-ORIGINAL-TIME: 13 Sep 2022 15:43:08 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23:XqESxK0iHk54qTkOCPbD5Spxkn2cJEfYwER7XKvMYLTBsI5bpzZTx 2EcX2mBaauPZjOkL992aovk8hwBusLSzd9jTVQ/qSg9HnlHgPSfOdnIdU2Y0wF+jiHgoOOLy +1HMrEs+ehtFhcwnj/0bv656yMUOZigHtIQMsadUsxKbVIiGXxJZS5LwbZj2NY52IPhWmthh PuryyHhEA/4s9JLGj5Pg06zgEsHUCPa5Vv0FnRnDRx6lAa2e0s9VfrzFonoR5fMebS4K8bgL wr1IB5VyUuDl/slIovNfr/TIxVSKlLYFVHmZnF+AsBOjjAT/nRaPg/W+5PwZG8O4whlkeydx /1L6pKJRSY4ZJTTxsoldEZyOB9QEbRvreqvzXiX6aR/zmXddmf0hvJzEE4xPIsXvON+AGUI7 /4ZLHYLYwzra+CenOP9FrEq35hldZmD0IA34hmMyRnCEO4+RorfBbnQ+NJT2zE2i8tSNfTfY IwSbj8HgBHoOEYUawdGU8th9AuuriLieDZ5umKzmakq3VCKnTUywuKzMeOAL7RmQu0OxBrA/ Tibl4jjOTkaOdiHxTee8Vq3j/PVlCzhX58KUry+nsOGm3WIw3ALUVgRSEe0pvi/hQi7UtNbb VYW+y5oq6UunKC2cjXjdxvnrkeInw9GYsUOPdUdtyum9IT4+i/MUwDoUQV9QNAhscY3Qxkj2 VmIg87lCFRTjVGFdZ6O3u3N/GLtZUD5OUddNHdcFFNtD8zL+dlr1nryosBf/Lmdr/udJN0d6 yuPsDBnwrIOkcEM1qO0u1XOgjbqvJrISkgz6xm/soOZAuFRO9HNi2+AswGzARN8wGCxFQfpU J8sx5L20Qz2JcvR/BFhuc1UdF1T296LMSfHnXlkFIQ7+jKm9haLJN4Ou2kmexsyap5cJFcFh XM/XysPvPe/21P0NsdKj36ZUazGMIC8TI68DqCLBjawSsMgKVLZlM2RWaJg9zu3zBB3y/xX1 Wazc8erZUv2+ow5pAdas9w1iOdxrghnnT27bcmik3yPjOTCDFbIF+ZtGAXVNIgRsvjbyDg5B v4EaqNmPT0EDLahCsQWmKZPRW03wY8TXM2t85QOK7PffWKL2ggJUpfs/F/oQKQ894x9lObPu Hq6XydlJJDX1BUrhC3TApy/QNsDnKqTrE7X+QQ3OEqwnn8+fYmo7aEQMZ4+fL1h7u5iybhyQ uVtlwBsxBhQYmyvxtjfRcGVQE9emNCDhwOJeSGiZVDTurZ+EhfR9IaMkhTHrUEzM8Z8iSfyT 3BMGO8WrVrvijmO1PrrVc8=
IronPort-HdrOrdr: A9a23:OzUJnaH67B+k/d6bpLqEZceALOsnbusQ8zAXPhhKOGRomszxra CTdYcgpGTJYVcqKQYdcL+7Sc29qB/nm6KdpLNhRItKPzOWzldATrsSircKqgeIc0aVm4Iz6U 4jSdkZNDSaNykYsS+O2njcLz9W+qjkzEnHv4bjJjxWPHtXgulbnnpE49GgYwRLrSd9dOYE/M Dw3Ls5m9KCFE5nEPhSRhQ+Lpj+T5OnruOUXfZJbSRXnDVnP16Tmc/HOgndwxMXST8K2rs57W 3Z+jaJlJmLorWnzhfH2yvN449NmN3no+EzcfCxtg==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,312,1654540200";    d="scan'208";a="333989317"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp-outgoing.mail.rjil.net 017EBAC004C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jio.com; s=jiomail;	t=1663063982; bh=a0SDXGiM4b29rvfvdKeHvla1ppOZPMWWX1BF9n4ImGY=;	h=Date:From:To:Subject:From;	b=rIWpqrD2KhH6RYZBoUHdnAvgzqRQJnwv/cxVLEFVTnZObJyk4PEHdh6sV6FXAscjY	 7g09hbbdDX3mdtzfZAuvjVnEsiqKb5WAyNYG/EhaCHNGrx5TWAPqBnv5Gbtyta9THl	 UpKwRSnWFHAKXu9pgsMhnV3Nfsgx/eCtxmpoJdRI=
Received: from support.trueconnect@jio.com([192.168.1.1]) 	by PME Mail With Id 1663063992767.13052;Tue, 13 Sep 2022 15:43:12 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h41bra1oo384 for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 15:43:09 +0530 (envelope-from <support.trueconnect@jio.com>)
Received: (qmail 149261 invoked by uid 1012); 13 Sep 2022 10:13:09 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.8.22])          (envelope-sender <support.trueconnect@jio.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 13 Sep 2022 10:13:08 -0000
Received: from smtp1-outgoing.mail.rjil.net (HELO smtp-outgoing.mail.rjil.net) ([49.40.14.18])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Sep 2022 15:43:02 +0530
Received: from NVMBD2ANO130V15.bss.jio.com (unknown [10.140.84.156])	by smtp-outgoing.mail.rjil.net (Postfix) with ESMTP id 017EBAC004C	for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 15:43:02 +0530 (IST)
Received: from jiouccwsonode-1 (unknown [10.160.216.144])	by NVMBD2ANO130V15.bss.jio.com (Postfix) with ESMTP id EE719440038;	Tue, 13 Sep 2022 15:43:01 +0530 (IST)
MIME-Version: 1.0
Subject: Jio Trueconnect - Confirmation of Registration request for Content Template (<SMS/VOICE>) for PE ID 1201162072903097949
Date: Tue, 13 Sep 2022 15:43:01 +0530 (IST)
Message-ID: <893315653.518898.1663063981968@jiouccwsonode-1>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: support.trueconnect@jio.com
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <support.trueconnect@jio.com>
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit
X-PMAttribute: 1663063992767.13052; mb_id=QSM1413892035136; imapid=30923; del_to=helpdesk

Dear User, 

We have received your registration request for Content Template (<SMS/VOICE>) and it has been submitted to Jio's Managed Commercial Communication (MCC) portal.

Request Number : SR1663063979398
Content Template ID : 1207166306397939838

A confirmation message will be sent on completion of the registration process.

Thank you, 
Jio Trueconnect Team


Disclaimer: This is a system generated email, please do not reply
