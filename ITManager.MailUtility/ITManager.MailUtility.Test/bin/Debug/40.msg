X-Qmail-Scanner-Diagnostics: from 192.168.9.76 by vdvm34.logix.local (envelope-from <no-reply@mailer4.actcorp.in>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.76):SA:0(IronPort):.  Processed in 0.034303 secs); 10 Sep 2022 06:52:47 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  no-reply@mailer4.actcorp.in designates 202.53.8.6 as  permitted sender) identity=mailfrom; client-ip=202.53.8.6;  receiver=tblr2.logix.in;  envelope-from="no-reply@mailer4.actcorp.in";  x-sender="no-reply@mailer4.actcorp.in";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:202.53.8.6/32 mx:mailer4.actcorp.in  a:mail.mailer4.actcorp.in include:spf.firstcloudsecurity.net  -all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@mail.mailer4.actcorp.in) identity=helo;  client-ip=202.53.8.6; receiver=tblr2.logix.in;  envelope-from="no-reply@mailer4.actcorp.in";  x-sender="postmaster@mail.mailer4.actcorp.in";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=no-reply@mailer4.actcorp.in; spf=None smtp.helo=postmaster@mail.mailer4.actcorp.in; dkim=pass (signature verified) header.i=@mailer4.actcorp.in; dmarc=pass (p=reject dis=none) d=actcorp.in
IronPort-SDR: Hq1+hcQCBTTT2dCBK+Rrjd3iTonVKHvLz3ZhQGz28PbkHv7pvIgx0VYk5wwyZFdVc2hMa9ZWrK q5jP4+rYRkjemfqT/2AcFyglvdCM790JwJEzPy7qvXls21/fp/W2AbCn2hvI7Wu81fDNlemil7 WPjFxQQCmlv+cebxBs+6PezPXwP9R7IwtTrXlGYbEV4nLgoGUNz04wrXngqS3E6hO14+DmO0K/ x8NwidR2yuqYMiOxfQA5OCcD426Gt92nXNM2WQSrGBzSKT6pF+8c39dH3GmniBERyaOu4XDDeq mbCiJxWlP+cDO4J8v0zV5D++
X-ORIGINAL-IP: 202.53.8.6
X-ORIGINAL-TIME: 10 Sep 2022 12:22:19 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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 28aS95O/qF8S5eZd68hYfSo4laFXOQ=
IronPort-HdrOrdr: A9a23:lF0Nha/Szv4BPLwegl1uk+DeI+orL9Y04lQ7vn2ZKCYlCfBx9a iV8MjzsCWatN9/YgBCpTntAtjkfZq+z+8M3WByB8bEYOCOggLBR+sOjOvfKlbbaknDH4BmpM VdmtBFeaTN5CNB/KDHCdaDfeod/A==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,305,1654540200";    d="scan'208";a="180946149"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.mailer4.actcorp.in 4AEB724CD8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailer4.actcorp.in;	s=mailer4dkimselector; t=1662792410;	bh=9lMOdm3j3pHWii4+iXqJcwbkvyH6znvvjAA5rXjJJpg=;	h=Date:To:From:Message-ID:MIME-Version;	b=JhjHKPixitCYTOf9Gj54Kkj1+ppBMrw99DBoF+vvCgsBOU1J60wT5eVXPw1KIHhVf	 8EcJD5MVczrlv6n2v5PyTQerYwyDeFRlbTcZSWb8PMx4oCFgLsV/mw7Hp2ABGn1u4i	 Yaz7ubx3EamgxhUv82Ott54YBio92wSN0a8zw1bi77FFRVK+fZob++zGlsy0XFGKiX	 hrgGmjgDo0UFN2VaUZXBe122Gs1W0ocIxoXH0wc/5La8ReC3Zhm95+wsvutj8xcRtz	 c72xZcoTZNpPN6eIxEyFLMOIqL20fD2w5C5RhuElESpdHb/HMAT0jS4wYZwhe1w3l3	 DkamR3VqON9lg==
X-Virus-Scanned: amavisd-new at mail.mailer4.actcorp.in
Received: from no-reply@mailer4.actcorp.in([192.168.1.1]) 	by PME Mail With Id 1662790925375.10667;Sat, 10 Sep 2022 11:52:05 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h3gq3u1oo38f for <helpdesk@satragroup.in>; Sat, 10 Sep 2022 12:22:47 +0530 (envelope-from <no-reply@mailer4.actcorp.in>)
Received: (qmail 91016 invoked by uid 1012); 10 Sep 2022 06:52:47 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.76])          (envelope-sender <no-reply@mailer4.actcorp.in>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 10 Sep 2022 06:52:47 -0000
Received: from mail.mailer4.actcorp.in ([202.53.8.6])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2022 12:22:19 +0530
Received: from localhost (localhost [127.0.0.1])	by mail.mailer4.actcorp.in (Postfix) with ESMTP id DE0DD24B4F6	for <helpdesk@satragroup.in>; Sat, 10 Sep 2022 12:22:18 +0530 (IST)
Received: from mail.mailer4.actcorp.in ([127.0.0.1])	by localhost (mail.mailer4.actcorp.in [127.0.0.1]) (amavisd-new, port 10032)	with ESMTP id bxH0C8lxd6iJ for <helpdesk@satragroup.in>;	Sat, 10 Sep 2022 12:22:17 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])	by mail.mailer4.actcorp.in (Postfix) with ESMTP id 4AEB724CD8C	for <helpdesk@satragroup.in>; Sat, 10 Sep 2022 12:16:50 +0530 (IST)
Received: from mail.mailer4.actcorp.in ([127.0.0.1])	by localhost (mail.mailer4.actcorp.in [127.0.0.1]) (amavisd-new, port 10026)	with ESMTP id 1bDSdPwLcvzQ for <helpdesk@satragroup.in>;	Sat, 10 Sep 2022 12:16:50 +0530 (IST)
Received: from smsgateway112-99 (unknown [10.100.112.99])	by mail.mailer4.actcorp.in (Postfix) with ESMTPA id DEFA224C753	for <helpdesk@satragroup.in>; Sat, 10 Sep 2022 12:10:59 +0530 (IST)
X-Priority: 1
X-Mailer: php 5.4.16
MIME-Version: 1.0
X-UNKNOWN-HEADER: 
This: is a multi-part message in MIME format.
Subject: [Important:Critical:Urgent] - Secure DNS transformation
Date: Sat, 10 Sep 2022 06:40:59 +0000
Message-ID: <96e40000d0fbbfbdd433939d53cfea91@smsgateway112-99>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: ACT Fibernet <no-reply@mailer4.actcorp.in>
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <no-reply@mailer4.actcorp.in>
content-type: multipart/alternative; boundary=b1_96e40000d0fbbfbdd433939d53cfea91
X-PMAttribute: 1662790925375.10667; mb_id=QSM1413892035136; imapid=30890; del_to=helpdesk

--b1_96e40000d0fbbfbdd433939d53cfea91
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
LmNpc2NvLmNvbS8xNUtQem5wOGdLclIwSmdIVkZqbDI1dHdpOUFSb0QtODlMajRsbWRsWVlsS0RP
dkFMTjBFUzdGT195a2hNYXl6VFdnTGhnb3NPcFpmaUxGTk82bzRZalVWOTZ1dE1iZURGY1VyX3Ix
UmJabEhGWlhnRGFHamJGN1ZTUDlWVnVmMEcwYzVPZHVMR29zeEtSMzlkcVo0N0lwbzVZTFprLXFL
OXE4dU9fYmx1ZGE2alFKcy1nbUc0YkI3Vmtia0tYNDRyUnVrWmdocVpkRjNmb3hXS2VHREVvYTRa
T21pcURQcW5lS1hUbHVfbUJmdzdWcTVneGZ4ck1rZ0k2d2RteUhQMW5ES1NadUFZb3BtYTllNFVB
WW9BbUNvN2RUbUR6RkkxWG0zdFh4cWtsS3FZSDgtRTJ4ZlBJeW5ZeU4xaFAtU0hUNzZhY2JLeVJv
ZUVoWTdNTjNyZFdYUUp0WkJsUHY5QkhHaFVQUWVFU0NpbmlJdEt6MkJaeGZlYWlJVGNQZVp6UEhx
cDZOS0dDT19Rc2VLaUxjLWxkal9lT1hHQ0ZQY1JQQkRpX3ZQakJLMlhnRUU1UDFTYk9abWw5QlBF
Mm9GNkJaMW1wdS1qN2tYNkVFd29EcGI0LWcvaHR0cCUzQSUyRiUyRmltZy5hY3Rjb3JwLmluJTJG
bWFpbGVycyUyRm1haWxlcjkuaHRtIiB0YXJnZXQ9Il9ibGFuayI+Q2xpY2sgaGVyZTwvYT4=

--b1_96e40000d0fbbfbdd433939d53cfea91
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
LmNpc2NvLmNvbS8xNUtQem5wOGdLclIwSmdIVkZqbDI1dHdpOUFSb0QtODlMajRsbWRsWVlsS0RP
dkFMTjBFUzdGT195a2hNYXl6VFdnTGhnb3NPcFpmaUxGTk82bzRZalVWOTZ1dE1iZURGY1VyX3Ix
UmJabEhGWlhnRGFHamJGN1ZTUDlWVnVmMEcwYzVPZHVMR29zeEtSMzlkcVo0N0lwbzVZTFprLXFL
OXE4dU9fYmx1ZGE2alFKcy1nbUc0YkI3Vmtia0tYNDRyUnVrWmdocVpkRjNmb3hXS2VHREVvYTRa
T21pcURQcW5lS1hUbHVfbUJmdzdWcTVneGZ4ck1rZ0k2d2RteUhQMW5ES1NadUFZb3BtYTllNFVB
WW9BbUNvN2RUbUR6RkkxWG0zdFh4cWtsS3FZSDgtRTJ4ZlBJeW5ZeU4xaFAtU0hUNzZhY2JLeVJv
ZUVoWTdNTjNyZFdYUUp0WkJsUHY5QkhHaFVQUWVFU0NpbmlJdEt6MkJaeGZlYWlJVGNQZVp6UEhx
cDZOS0dDT19Rc2VLaUxjLWxkal9lT1hHQ0ZQY1JQQkRpX3ZQakJLMlhnRUU1UDFTYk9abWw5QlBF
Mm9GNkJaMW1wdS1qN2tYNkVFd29EcGI0LWcvaHR0cCUzQSUyRiUyRmltZy5hY3Rjb3JwLmluJTJG
bWFpbGVycyUyRm1haWxlcjkuaHRtIiB0YXJnZXQ9Il9ibGFuayI+Q2xpY2sgaGVyZTwvYT4=

--b1_96e40000d0fbbfbdd433939d53cfea91--
