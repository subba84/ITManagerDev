X-Qmail-Scanner-Diagnostics: from 192.168.9.66 by vdvm34.logix.local (envelope-from <no-reply@mailer1.actcorp.in>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.66):SA:0(IronPort):.  Processed in 0.044658 secs); 13 Sep 2022 05:30:01 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  no-reply@mailer1.actcorp.in designates 123.176.40.133 as  permitted sender) identity=mailfrom;  client-ip=123.176.40.133; receiver=tblr2.logix.in;  envelope-from="no-reply@mailer1.actcorp.in";  x-sender="no-reply@mailer1.actcorp.in";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:123.176.40.133/32  mx:mailer1.actcorp.in a:mail.mailer1.actcorp.in  include:spf.firstcloudsecurity.net -all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@mail.mailer1.actcorp.in) identity=helo;  client-ip=123.176.40.133; receiver=tblr2.logix.in;  envelope-from="no-reply@mailer1.actcorp.in";  x-sender="postmaster@mail.mailer1.actcorp.in";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=no-reply@mailer1.actcorp.in; spf=None smtp.helo=postmaster@mail.mailer1.actcorp.in; dkim=pass (signature verified) header.i=@mailer1.actcorp.in; dmarc=pass (p=reject dis=none) d=actcorp.in
IronPort-SDR: /T+EJap96VDg3tXoHNgEpbabHtjilI0sSLM2fv+QAh1gFQL3v8NEDFpedk4dh0yKU4DSQ/dl3Y SRzwRiuX2bf9Al0kbJkGPWE7RuagvkME21TRcFSj9pxn0Nads27gyCxEkQMLbOE0RF0sN0SEt4 iMDRFLGBV8u2MxfL3MsLEY9/Y5JUUTb2bVatKk9CXJyJ0uTjrNK8YzX9Er+yWOK1E+nLqzYx/U twheLFKjrZrJLf2pmmBIescWat9uCbEhu+pdGFW+kes4q3WCfKXDhIghxcCm/LqDgefKTIvwKi ix/AYEGNlg46AF/cTh27fm7P
X-ORIGINAL-IP: 123.176.40.133
X-ORIGINAL-TIME: 13 Sep 2022 11:00:00 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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 k7sm+q+L1Gt
IronPort-HdrOrdr: A9a23:TenD/KONc9tJKcBcTsejsMiBIKoaSvp037BL7TELdfQ2Gvb1qy nKppsmPHDP+VUssR0b6LW90cq7MAvhHPxOkO4s1N6ZNWGM0gbITL2KhrGSpwEIdReOlNK1rZ 0QCpSWc+eAa2SSUvyV3DWF
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,311,1654540200";    d="scan'208";a="84684360"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.mailer1.actcorp.in 69E4F906BA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailer1.actcorp.in;	s=A0694042-EB95-11EB-A20F-DD2D28BA3C95; t=1663046275;	bh=t5ZpCvVrGFq/x97JNuCjVihjNAkPnn+Y7mYEB88GpMI=;	h=Date:To:From:Message-ID:MIME-Version;	b=MMBWcOYdhVYC3RmLnCMe9bI6ezuO/eOU8piXSXzsg8R8YKG6++d6qXsXbZ7zUflkv	 tNTaO1F7/BAtGtXjsWwJuoknq3nLU8UkASisFWqiwjt1sFfWww1IGU3SS1lvftqBvc	 ibsFdK2uGzv0V6xTCvAw6oW3w3sJtFIkIR91vtEIhDnc01U5Se6yCXfdmClqVx2Ho0	 dNZ8SyVNb7qwPcD5njUKyFgaje+qrp6GpcvMlPGje7YCk0dwvZlQHHoNnEni8vjBN5	 5KjsPtLb63jL9+LR0YQwgv8LhWjVpEJsP/WFQDCrD4BWk5pOlYHKDY4x1sqNuDSbUN	 HGEQTzxz+1/1g==
X-Virus-Scanned: amavisd-new at mail.mailer1.actcorp.in
Received: from no-reply@mailer1.actcorp.in([192.168.1.1]) 	by PME Mail With Id 1663047005220.12709;Tue, 13 Sep 2022 11:00:05 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h40ali1oo38i for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 11:00:01 +0530 (envelope-from <no-reply@mailer1.actcorp.in>)
Received: (qmail 5958 invoked by uid 1012); 13 Sep 2022 05:30:01 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.66])          (envelope-sender <no-reply@mailer1.actcorp.in>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 13 Sep 2022 05:30:01 -0000
Received: from mail.mailer1.actcorp.in ([123.176.40.133])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Sep 2022 11:00:00 +0530
Received: from localhost (localhost [127.0.0.1])	by mail.mailer1.actcorp.in (Postfix) with ESMTP id 9E89D90389F	for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 10:59:59 +0530 (IST)
Received: from mail.mailer1.actcorp.in ([127.0.0.1])	by localhost (mail.mailer1.actcorp.in [127.0.0.1]) (amavisd-new, port 10032)	with ESMTP id bT0QSkytAcgE for <helpdesk@satragroup.in>;	Tue, 13 Sep 2022 10:59:57 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])	by mail.mailer1.actcorp.in (Postfix) with ESMTP id 69E4F906BA6	for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 10:47:55 +0530 (IST)
Received: from mail.mailer1.actcorp.in ([127.0.0.1])	by localhost (mail.mailer1.actcorp.in [127.0.0.1]) (amavisd-new, port 10026)	with ESMTP id p3wre7yF2fEz for <helpdesk@satragroup.in>;	Tue, 13 Sep 2022 10:47:55 +0530 (IST)
Received: from smsgateway112-99 (unknown [10.100.112.99])	by mail.mailer1.actcorp.in (Postfix) with ESMTPA id C8CD8907439	for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 10:38:48 +0530 (IST)
X-Priority: 1
X-Mailer: php 5.4.16
MIME-Version: 1.0
X-UNKNOWN-HEADER: 
This: is a multi-part message in MIME format.
Subject: [Important:Critical:Urgent] - Secure DNS transformation
Date: Tue, 13 Sep 2022 05:08:48 +0000
Message-ID: <1fc9a59e704a1f4d23b6ff0eb32b86bd@smsgateway112-99>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: ACT Fibernet <no-reply@mailer1.actcorp.in>
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <no-reply@mailer1.actcorp.in>
content-type: multipart/alternative; boundary=b1_1fc9a59e704a1f4d23b6ff0eb32b86bd
X-PMAttribute: 1663047005220.12709; mb_id=QSM1413892035136; imapid=30914; del_to=helpdesk

--b1_1fc9a59e704a1f4d23b6ff0eb32b86bd
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
LmNpc2NvLmNvbS8xUk5XdEpSZFF6ZFpWVVluWEdZQkJBSEY3UDd6bS1OZkphQ3FSaUx6c3JvVUh2
NTBRWVpBUzlQR004VTNGYXJyY0pEUllKb2JoMWxYdTZlZkhwX0RZdUJJcUJTLVl1Ym85dS1rY0xM
ZkFEZXRxbWJBMWliWkJuUVdoN0ZVaURPMzZyQnZKLTJqeVZGd3c3dDR3ZmhyRE5vRmc2THg4dVB3
MUpURTAzZnRaM2xyTHgxWWVWWGZLckE2bXVnZlc3VjZzdWhIcUJWMlgwdWNHYjFyd0JIR0dGWGNT
d0hDdzktUVpILVBhbzlPQlpad01hUHBjeUJNTGRtbEZSRF9uckpuS2ZfRlVxd0ZPMk11VTVycldL
akx5Z0lBNFowZEJCNFYySzVrQkNqNzZhZUI3aWRqX1RPS0RqN2hwV0FLTmJCNDhRS1NGaGF6SDRO
WFZUT2FuTGozX0ZMTWRfdC10WkVyRXdkY3FqUjdLS0NWekNDTlBWUERSczhaSzhNdVNPQnlUTVA2
ZmhNWnFtLV94OXdyWXVuUndPZExRX1lYbzZiTE9IYkNLWU5Cb2h4UUlKNXJlbE56UkJ5al90Mjg0
aHpZQzhBNlNCZHRVZnJ0SGVvOGFrSHVZTWcvaHR0cCUzQSUyRiUyRmltZy5hY3Rjb3JwLmluJTJG
bWFpbGVycyUyRm1haWxlcjkuaHRtIiB0YXJnZXQ9Il9ibGFuayI+Q2xpY2sgaGVyZTwvYT4=

--b1_1fc9a59e704a1f4d23b6ff0eb32b86bd
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
LmNpc2NvLmNvbS8xUk5XdEpSZFF6ZFpWVVluWEdZQkJBSEY3UDd6bS1OZkphQ3FSaUx6c3JvVUh2
NTBRWVpBUzlQR004VTNGYXJyY0pEUllKb2JoMWxYdTZlZkhwX0RZdUJJcUJTLVl1Ym85dS1rY0xM
ZkFEZXRxbWJBMWliWkJuUVdoN0ZVaURPMzZyQnZKLTJqeVZGd3c3dDR3ZmhyRE5vRmc2THg4dVB3
MUpURTAzZnRaM2xyTHgxWWVWWGZLckE2bXVnZlc3VjZzdWhIcUJWMlgwdWNHYjFyd0JIR0dGWGNT
d0hDdzktUVpILVBhbzlPQlpad01hUHBjeUJNTGRtbEZSRF9uckpuS2ZfRlVxd0ZPMk11VTVycldL
akx5Z0lBNFowZEJCNFYySzVrQkNqNzZhZUI3aWRqX1RPS0RqN2hwV0FLTmJCNDhRS1NGaGF6SDRO
WFZUT2FuTGozX0ZMTWRfdC10WkVyRXdkY3FqUjdLS0NWekNDTlBWUERSczhaSzhNdVNPQnlUTVA2
ZmhNWnFtLV94OXdyWXVuUndPZExRX1lYbzZiTE9IYkNLWU5Cb2h4UUlKNXJlbE56UkJ5al90Mjg0
aHpZQzhBNlNCZHRVZnJ0SGVvOGFrSHVZTWcvaHR0cCUzQSUyRiUyRmltZy5hY3Rjb3JwLmluJTJG
bWFpbGVycyUyRm1haWxlcjkuaHRtIiB0YXJnZXQ9Il9ibGFuayI+Q2xpY2sgaGVyZTwvYT4=

--b1_1fc9a59e704a1f4d23b6ff0eb32b86bd--
