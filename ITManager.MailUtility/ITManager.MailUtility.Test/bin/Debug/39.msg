X-Qmail-Scanner-Diagnostics: from 192.168.8.22 by vdvm33.logix.local (envelope-from <no-reply@mailer1.actcorp.in>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.8.22):SA:0(IronPort):.  Processed in 0.041827 secs); 10 Sep 2022 06:22:40 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  no-reply@mailer1.actcorp.in designates 123.176.40.133 as  permitted sender) identity=mailfrom;  client-ip=123.176.40.133; receiver=tblr2.logix.in;  envelope-from="no-reply@mailer1.actcorp.in";  x-sender="no-reply@mailer1.actcorp.in";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:123.176.40.133/32  mx:mailer1.actcorp.in a:mail.mailer1.actcorp.in  include:spf.firstcloudsecurity.net -all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@mail.mailer1.actcorp.in) identity=helo;  client-ip=123.176.40.133; receiver=tblr2.logix.in;  envelope-from="no-reply@mailer1.actcorp.in";  x-sender="postmaster@mail.mailer1.actcorp.in";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=no-reply@mailer1.actcorp.in; spf=None smtp.helo=postmaster@mail.mailer1.actcorp.in; dkim=pass (signature verified) header.i=@mailer1.actcorp.in; dmarc=pass (p=reject dis=none) d=actcorp.in
IronPort-SDR: rIWGG4hl2H3YUHygz9ZXyhd/HaGakOpeByIYAIYW9hQdVtqoPpOVjrlbpP73IdMZB0lsWB7Glv OtisghqFmSz7x985uoflrT1k8UeMVu9D4=
X-ORIGINAL-IP: 123.176.40.133
X-ORIGINAL-TIME: 10 Sep 2022 11:52:39 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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 kjtm/5u34Beaba4W4MAkSWcBleFXA==
IronPort-HdrOrdr: A9a23:kwRi96qYdw53WH6ciD3IOOQaV5pFeYIsimQD101hICG9Ffb4qy nOppomPHDP5Ar5NEtLpTniAsK9qBrnnPZICOIqUotKMjOKhFeV
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,305,1654540200";    d="scan'208";a="332902149"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.mailer1.actcorp.in D2590906C6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailer1.actcorp.in;	s=A0694042-EB95-11EB-A20F-DD2D28BA3C95; t=1662790546;	bh=Gkxh/hjjKTMNG0ynPmTQE2wZV1YRuSYueZWdusuK7m4=;	h=Date:To:From:Message-ID:MIME-Version;	b=GhODx3erH+z502rf178Y4YtHgX1UUi2UgmIfrJ6RDUVoFlym9Gntg1vAHF1Q0Alq1	 KBtMZGq5WAfcztd54b9ufFzQD5FHuK78TP6In/3obtwEdabPnZ3PQeIoYVsjdpjQ0I	 aWS5lQ5yGYuTi8G2sgtsQAY0pkCp74HIe0KFWWdlZA95ZHxGQnrSGpepqZB1Mwv5T5	 mc+zeiyknPaJDy+8MDSVRwWzYany6sF0AhHR9Zt9lBMbCSHlZWHMez/LXZZMUYGh4E	 pKWqIeVA8YtZDQItWYYzZzYIwD//BmGxg+6jDevtrDCMXyNj7ZqlsqfB5WZ+szi/sa	 zdXtj8J2YpkUg==
X-Virus-Scanned: amavisd-new at mail.mailer1.actcorp.in
Received: from no-reply@mailer1.actcorp.in([192.168.1.1]) 	by PME Mail With Id 1662789118030.10655;Sat, 10 Sep 2022 11:21:58 +0530 (IST)
Received: from vdvm33.logix.local (127.0.0.1) by tblr42.logix.in id h3gmj01oo38d for <helpdesk@satragroup.in>; Sat, 10 Sep 2022 11:52:40 +0530 (envelope-from <no-reply@mailer1.actcorp.in>)
Received: (qmail 120189 invoked by uid 1012); 10 Sep 2022 06:22:40 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.8.22])          (envelope-sender <no-reply@mailer1.actcorp.in>)          by vdvm33.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 10 Sep 2022 06:22:40 -0000
Received: from mail.mailer1.actcorp.in ([123.176.40.133])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2022 11:52:39 +0530
Received: from localhost (localhost [127.0.0.1])	by mail.mailer1.actcorp.in (Postfix) with ESMTP id BB4939074EC	for <helpdesk@satragroup.in>; Sat, 10 Sep 2022 11:52:38 +0530 (IST)
Received: from mail.mailer1.actcorp.in ([127.0.0.1])	by localhost (mail.mailer1.actcorp.in [127.0.0.1]) (amavisd-new, port 10032)	with ESMTP id 5PJDzy30VtY5 for <helpdesk@satragroup.in>;	Sat, 10 Sep 2022 11:52:36 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])	by mail.mailer1.actcorp.in (Postfix) with ESMTP id D2590906C6B	for <helpdesk@satragroup.in>; Sat, 10 Sep 2022 11:45:46 +0530 (IST)
Received: from mail.mailer1.actcorp.in ([127.0.0.1])	by localhost (mail.mailer1.actcorp.in [127.0.0.1]) (amavisd-new, port 10026)	with ESMTP id LZxMyCS_6RCf for <helpdesk@satragroup.in>;	Sat, 10 Sep 2022 11:45:46 +0530 (IST)
Received: from smsgateway112-99 (unknown [10.100.112.99])	by mail.mailer1.actcorp.in (Postfix) with ESMTPA id 5EC52906AE6	for <helpdesk@satragroup.in>; Sat, 10 Sep 2022 11:39:59 +0530 (IST)
X-Priority: 1
X-Mailer: php 5.4.16
MIME-Version: 1.0
X-UNKNOWN-HEADER: 
This: is a multi-part message in MIME format.
Subject: [Important:Critical:Urgent] - Secure DNS transformation
Date: Sat, 10 Sep 2022 06:09:58 +0000
Message-ID: <a6863bdcd21ac4f133cf747959fb4041@smsgateway112-99>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: ACT Fibernet <no-reply@mailer1.actcorp.in>
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <no-reply@mailer1.actcorp.in>
content-type: multipart/alternative; boundary=b1_a6863bdcd21ac4f133cf747959fb4041
X-PMAttribute: 1662789118030.10655; mb_id=QSM1413892035136; imapid=30889; del_to=helpdesk

--b1_a6863bdcd21ac4f133cf747959fb4041
content-type: text/plain; charset=iso-8859-1
content-transfer-encoding: base64

PHByZT5EZWFyIEN1c3RvbWVyLAoKSW4gb3JkZXIgdG8gc2VydmUgeW91IGJldHRlciwgd2UgYXQg
QUNULCBhbHdheXMgc3RyaXZlIHRvd2FyZHMgcHJvdmlkaW5nIGJlc3QtaW4tY2xhc3Mgc2Vydmlj
ZXMgdGhyb3VnaCBzdGF0ZS1vZi10aGUtYXJ0IHRlY2hub2xvZ3kuCkFzIHdlIGNvbnRpbnVhbGx5
IHdvcmsgdG93YXJkcyB0aGlzLCB3ZSBhcmUgbm93IHVwZ3JhZGluZyBvdXIgRE5TIGluZnJhc3Ry
dWN0dXJlIHRvIGEgbW9yZSByb2J1c3QgYW5kIGhpZ2hseSBzZWN1cmUgc3lzdGVtLgo8Yj5UaGUg
bmV3IEROUyB3aWxsIHByb3ZpZGUgYWRkaXRpb25hbCBmZWF0dXJlcyBvZiBwcmV2ZW50aW9uICYg
bW9uaXRvcmluZyBvZiBtYWxpY2lvdXMgYXR0YWNrcyB0byBlbmQgc3lzdGVtIGNvbXBhcmVkIHRv
IGNvbnZlbnRpb25hbCBETlMuCjxwIHN0eWxlPSJjb2xvcjpyZWQ7Ij5UaGlzIGFjdGl2aXR5IGlz
IHBsYW5uZWQgdG8gYmUgZXhlY3V0ZWQgYnkgU2VwdGVtYmVyIDE0dGggYXQgMjozMFBNLiBJbiBv
cmRlciB0byBhdm9pZCBhbnkgZGlzcnVwdGlvbiBpbiBzZXJ2aWNlLCB3ZSByZXF1ZXN0IHlvdSB0
byBjaGFuZ2UgdGhlIEROUyBjb25maWd1cmVkIG9uIHlvdXIgZGV2aWNlIHRvIHRoZSBiZWxvdyBJ
UCBhZGRyZXNzZXMgaW1tZWRpYXRlbHkuClByaW1hcnkgRE5TIDogNDkuMjA1LjE3MS4xOTQKU2Vj
b25kYXJ5IEROUyA6IDQ5LjIwNy4zNC4yMTA8L2I+PC9wPgpJZiB5b3UgYXJlIHVuYWJsZSB0byBh
dmFpbCBpbnRlcm5ldCBzZXJ2aWNlcyBwb3N0IGFwcGx5aW5nIHRoZSBuZXcgRE5TIElQIGNvbmZp
Z3VyYXRpb24sIGtpbmRseSB0cnkgc3dpdGNoaW5nIE9GRiBhbmQgT04gLyByZWJvb3RpbmcgeW91
ciBkZXZpY2UuCllvdSBtYXkgcmVhY2ggdXMgaW4gY2FzZSBvZiBhbnkgZnVydGhlciBjbGFyaWZp
Y2F0aW9ucy4gV2UgYXBvbG9naXplIGZvciBhbnkgaW5jb252ZW5pZW5jZSBjYXVzZWQuCktpbmRs
eSBpZ25vcmUgdGhpcyBtYWlsIGlmIHlvdSBoYXZlIGFscmVhZHkgdXBkYXRlZCB0aGUgRE5TLgoK
V2FybSBSZWdhcmRzLApBQ1QgRmliZXJuZXQ8YnI+PGJyPgpUbyBhZGQgQUNUIEZpYmVybmV0IHRv
IHlvdXIgc2FmZSBzZW5kZXIgbGlzdCwgUGxlYXNlIDxhIGhyZWY9Imh0dHA6Ly9zZWN1cmUtd2Vi
LmNpc2NvLmNvbS8xS0ZqSzkxUlZXdGhGb0RqQXNpWGpKMUNUVVNlOU1VVzF1WTQ5MklaZjYzUzJw
QlM3SnRVT09QdHplYTFpa0xXNFVkUjdIcUtwS2lZSUdpVjdqajVDOVd2ckJaZUh4RmxJelBzTFJo
VXJiZWVuMUZycmMwUVl0RDB3dFVPWE5WTlNuR1hNbjNVWXFHTkl1U3QwS0hoZXh2ekUyYTFMVTBD
T1R4SVA1UUJFLWVmLUdnNlVPYjBaTVVzMnp3WnBITHRnZi1FNkMxamxrNk1jSm5fRFF3cmM1b090
OVpGS0xqYldtSDdIZzl6cnMyeWdvTjZOc2o1dTlIOUdHZVFneW85WHJPbHhCTjA4Vm5nanBZbU5y
RHV0Y2MzZC1vbnhfclpWaXdhcndLV2lSU2trR09uRElpbnlsSXZSa0VRbS1tdEVFdGR1MnNLNFhu
Tm5ZSTdwbVZ0ZUJldUJRaTZ3Q1k3a1FENFR0cm5qSkVMSHZyenZ2VDZGR1I3R0FXSWZ2bG1nUWpT
YU1WWUdWTTVIZ2lMWnhjXy1vM1RLSTNfdHBZc21VMU1rdm1aU2l6RS9odHRwJTNBJTJGJTJGaW1n
LmFjdGNvcnAuaW4lMkZtYWlsZXJzJTJGbWFpbGVyOS5odG0iIHRhcmdldD0iX2JsYW5rIj5DbGlj
ayBoZXJlPC9hPg==

--b1_a6863bdcd21ac4f133cf747959fb4041
content-type: text/html; charset=iso-8859-1
content-transfer-encoding: base64

PHByZT5EZWFyIEN1c3RvbWVyLAoKSW4gb3JkZXIgdG8gc2VydmUgeW91IGJldHRlciwgd2UgYXQg
QUNULCBhbHdheXMgc3RyaXZlIHRvd2FyZHMgcHJvdmlkaW5nIGJlc3QtaW4tY2xhc3Mgc2Vydmlj
ZXMgdGhyb3VnaCBzdGF0ZS1vZi10aGUtYXJ0IHRlY2hub2xvZ3kuCkFzIHdlIGNvbnRpbnVhbGx5
IHdvcmsgdG93YXJkcyB0aGlzLCB3ZSBhcmUgbm93IHVwZ3JhZGluZyBvdXIgRE5TIGluZnJhc3Ry
dWN0dXJlIHRvIGEgbW9yZSByb2J1c3QgYW5kIGhpZ2hseSBzZWN1cmUgc3lzdGVtLgo8Yj5UaGUg
bmV3IEROUyB3aWxsIHByb3ZpZGUgYWRkaXRpb25hbCBmZWF0dXJlcyBvZiBwcmV2ZW50aW9uICYg
bW9uaXRvcmluZyBvZiBtYWxpY2lvdXMgYXR0YWNrcyB0byBlbmQgc3lzdGVtIGNvbXBhcmVkIHRv
IGNvbnZlbnRpb25hbCBETlMuCjxwIHN0eWxlPSJjb2xvcjpyZWQ7Ij5UaGlzIGFjdGl2aXR5IGlz
IHBsYW5uZWQgdG8gYmUgZXhlY3V0ZWQgYnkgU2VwdGVtYmVyIDE0dGggYXQgMjozMFBNLiBJbiBv
cmRlciB0byBhdm9pZCBhbnkgZGlzcnVwdGlvbiBpbiBzZXJ2aWNlLCB3ZSByZXF1ZXN0IHlvdSB0
byBjaGFuZ2UgdGhlIEROUyBjb25maWd1cmVkIG9uIHlvdXIgZGV2aWNlIHRvIHRoZSBiZWxvdyBJ
UCBhZGRyZXNzZXMgaW1tZWRpYXRlbHkuClByaW1hcnkgRE5TIDogNDkuMjA1LjE3MS4xOTQKU2Vj
b25kYXJ5IEROUyA6IDQ5LjIwNy4zNC4yMTA8L2I+PC9wPgpJZiB5b3UgYXJlIHVuYWJsZSB0byBh
dmFpbCBpbnRlcm5ldCBzZXJ2aWNlcyBwb3N0IGFwcGx5aW5nIHRoZSBuZXcgRE5TIElQIGNvbmZp
Z3VyYXRpb24sIGtpbmRseSB0cnkgc3dpdGNoaW5nIE9GRiBhbmQgT04gLyByZWJvb3RpbmcgeW91
ciBkZXZpY2UuCllvdSBtYXkgcmVhY2ggdXMgaW4gY2FzZSBvZiBhbnkgZnVydGhlciBjbGFyaWZp
Y2F0aW9ucy4gV2UgYXBvbG9naXplIGZvciBhbnkgaW5jb252ZW5pZW5jZSBjYXVzZWQuCktpbmRs
eSBpZ25vcmUgdGhpcyBtYWlsIGlmIHlvdSBoYXZlIGFscmVhZHkgdXBkYXRlZCB0aGUgRE5TLgoK
V2FybSBSZWdhcmRzLApBQ1QgRmliZXJuZXQ8YnI+PGJyPgpUbyBhZGQgQUNUIEZpYmVybmV0IHRv
IHlvdXIgc2FmZSBzZW5kZXIgbGlzdCwgUGxlYXNlIDxhIGhyZWY9Imh0dHA6Ly9zZWN1cmUtd2Vi
LmNpc2NvLmNvbS8xS0ZqSzkxUlZXdGhGb0RqQXNpWGpKMUNUVVNlOU1VVzF1WTQ5MklaZjYzUzJw
QlM3SnRVT09QdHplYTFpa0xXNFVkUjdIcUtwS2lZSUdpVjdqajVDOVd2ckJaZUh4RmxJelBzTFJo
VXJiZWVuMUZycmMwUVl0RDB3dFVPWE5WTlNuR1hNbjNVWXFHTkl1U3QwS0hoZXh2ekUyYTFMVTBD
T1R4SVA1UUJFLWVmLUdnNlVPYjBaTVVzMnp3WnBITHRnZi1FNkMxamxrNk1jSm5fRFF3cmM1b090
OVpGS0xqYldtSDdIZzl6cnMyeWdvTjZOc2o1dTlIOUdHZVFneW85WHJPbHhCTjA4Vm5nanBZbU5y
RHV0Y2MzZC1vbnhfclpWaXdhcndLV2lSU2trR09uRElpbnlsSXZSa0VRbS1tdEVFdGR1MnNLNFhu
Tm5ZSTdwbVZ0ZUJldUJRaTZ3Q1k3a1FENFR0cm5qSkVMSHZyenZ2VDZGR1I3R0FXSWZ2bG1nUWpT
YU1WWUdWTTVIZ2lMWnhjXy1vM1RLSTNfdHBZc21VMU1rdm1aU2l6RS9odHRwJTNBJTJGJTJGaW1n
LmFjdGNvcnAuaW4lMkZtYWlsZXJzJTJGbWFpbGVyOS5odG0iIHRhcmdldD0iX2JsYW5rIj5DbGlj
ayBoZXJlPC9hPg==

--b1_a6863bdcd21ac4f133cf747959fb4041--
