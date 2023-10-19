X-Qmail-Scanner-Diagnostics: from 192.168.9.81 by vdvm34.logix.local (envelope-from <no-reply@mailer4.actcorp.in>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.81):SA:0(IronPort):.  Processed in 0.02636 secs); 13 Sep 2022 05:13:43 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  no-reply@mailer4.actcorp.in designates 202.53.8.6 as  permitted sender) identity=mailfrom; client-ip=202.53.8.6;  receiver=tblr2.logix.in;  envelope-from="no-reply@mailer4.actcorp.in";  x-sender="no-reply@mailer4.actcorp.in";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:202.53.8.6/32 mx:mailer4.actcorp.in  a:mail.mailer4.actcorp.in include:spf.firstcloudsecurity.net  -all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@mail.mailer4.actcorp.in) identity=helo;  client-ip=202.53.8.6; receiver=tblr2.logix.in;  envelope-from="no-reply@mailer4.actcorp.in";  x-sender="postmaster@mail.mailer4.actcorp.in";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=no-reply@mailer4.actcorp.in; spf=None smtp.helo=postmaster@mail.mailer4.actcorp.in; dkim=pass (signature verified) header.i=@mailer4.actcorp.in; dmarc=pass (p=reject dis=none) d=actcorp.in
IronPort-SDR: fS1vyJdsjRXC8W4w+ApEip8Qp19I4RJG+2DT9tr2yPWOGB+dj77PFJ4SGyg/78gEYZ06evV+jd jKKqJ4DtaWOT38KhtntfTb4Z5HwHcRi3SWwL+iGQ8VRw/tHEpR7nAoxZNhwc7+a+R2fh+k5U3L jHgDlMr5wZAD+PIWwVI6ravOT2usDLr0Kx5sS1/41ApLlW2IecisiNuZZIaY6HraAeZeKM4hof PtJazNlYg0Jp66aZnBOL0Phr+kgyhIqRH5BDM9f2UR1f8bwTI1zr2tfH4iTm+iRVI8KhRidBW0 0w7yqsB59+rSM2zhoIYS+P65
X-ORIGINAL-IP: 202.53.8.6
X-ORIGINAL-TIME: 13 Sep 2022 10:43:41 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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 28fm/9u0oBduJeMp1LwkQ==
IronPort-HdrOrdr: A9a23:gjPwm6xrFtbs8haj34YdKrPwN71zdoMgy1knxilNoEpuHPBw8P re/8jztCWVtN9/YhsdcLy7VZVoIkm8yXcK2/hyAV7KZmCP01dAR7sP0WKN+VLdJxE=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,311,1654540200";    d="scan'208";a="87088149"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.mailer4.actcorp.in DFF4724DE6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailer4.actcorp.in;	s=mailer4dkimselector; t=1663045667;	bh=QdHZQMxMzU8wACLOmiSxNvja5MRSBPqJC92DHYJLw1s=;	h=Date:To:From:Message-ID:MIME-Version;	b=oIn2ppkiY03nMX+9jZX7PvPeWhcPMhNFyO5tyMIJqQqXBvNPFFsYIVNWCYhTz6gzW	 YSOZNZeo5kSaQYM2ea0xwx8/uhb4UI0BS1+FNRlu/+nSWHDIsZvuDlOrwSYB2qXEEr	 TGutsg1Br8qFEqa7bvPlirYCcj6wURyBAJz6E0K+zIV4ikTyjP78YzKnZJ6y2cZFvz	 j9twaQXEmwloHbcS6C7SjgheMQrV0+biN2CPyLS38hYnDWrbTguWxnNz/arP31cMbR	 +Z3/Vm0acy/BP1gTRC5SBjfR1aPprOUGMkjc5gYFBKqU76Of0IkrEfRNWBjvNLQuUm	 OJn2BiqOuy0gg==
X-Virus-Scanned: amavisd-new at mail.mailer4.actcorp.in
Received: from no-reply@mailer4.actcorp.in([192.168.1.1]) 	by PME Mail With Id 1663046027975.12689;Tue, 13 Sep 2022 10:43:47 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h408og1oo38v for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 10:43:43 +0530 (envelope-from <no-reply@mailer4.actcorp.in>)
Received: (qmail 157959 invoked by uid 1012); 13 Sep 2022 05:13:43 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.81])          (envelope-sender <no-reply@mailer4.actcorp.in>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 13 Sep 2022 05:13:43 -0000
Received: from mail.mailer4.actcorp.in ([202.53.8.6])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Sep 2022 10:43:40 +0530
Received: from localhost (localhost [127.0.0.1])	by mail.mailer4.actcorp.in (Postfix) with ESMTP id 180B324BB15	for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 10:43:40 +0530 (IST)
Received: from mail.mailer4.actcorp.in ([127.0.0.1])	by localhost (mail.mailer4.actcorp.in [127.0.0.1]) (amavisd-new, port 10032)	with ESMTP id X8_jkkcBU6bB for <helpdesk@satragroup.in>;	Tue, 13 Sep 2022 10:43:37 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])	by mail.mailer4.actcorp.in (Postfix) with ESMTP id DFF4724DE6E	for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 10:37:47 +0530 (IST)
Received: from mail.mailer4.actcorp.in ([127.0.0.1])	by localhost (mail.mailer4.actcorp.in [127.0.0.1]) (amavisd-new, port 10026)	with ESMTP id RYfV4w1pQ3HX for <helpdesk@satragroup.in>;	Tue, 13 Sep 2022 10:37:47 +0530 (IST)
Received: from smsgateway112-99 (unknown [10.100.112.99])	by mail.mailer4.actcorp.in (Postfix) with ESMTPA id 6D9A624DE73	for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 10:36:24 +0530 (IST)
X-Priority: 1
X-Mailer: php 5.4.16
MIME-Version: 1.0
X-UNKNOWN-HEADER: 
This: is a multi-part message in MIME format.
Subject: [Important:Critical:Urgent] - Secure DNS transformation
Date: Tue, 13 Sep 2022 05:06:24 +0000
Message-ID: <dafa72d8247b4f5786e1498ab37bfa32@smsgateway112-99>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: ACT Fibernet <no-reply@mailer4.actcorp.in>
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <no-reply@mailer4.actcorp.in>
content-type: multipart/alternative; boundary=b1_dafa72d8247b4f5786e1498ab37bfa32
X-PMAttribute: 1663046027975.12689; mb_id=QSM1413892035136; imapid=30913; del_to=helpdesk

--b1_dafa72d8247b4f5786e1498ab37bfa32
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
LmNpc2NvLmNvbS8xNC1KeEZtRGZWREhhUkEyUWREajZYd3p2cVBaRTNVTmpXMU5iMlA4LWFtZEdu
bGplWERYdmRqeHFKdmgyTVpkZWltbmZsMHdnMHBfN0pwVEdYT0p5RVBrQ1FLaTJYWVVGU0Q2QjVq
NlVGaWNuZW1CbEZQd3dwYVhJcWo2QlEyRDdiM3gzcEY3U2gtcU9Kd0ZxRVB1ZzJSelN2MXlMZGoz
ZjFvdC1qOEdCbWEzdnJueU9MVTREZVpSWTlwN1F0MG1oUFRGZEhWMU1EMm5zeHpfQThfRGU2b0ZX
eFpDTGJnY0hoWkVzV2V6LUxtR1V2bDBEZEhlYXVOTDFKd3E0SEtEakU5d2owVFFzNzRucklibDJz
OWRBazVGRGgwakFmUS1fTmtfLVVlZUY5Y0cxdW9QSnRJanpJajFRMEVZNnU0azJnSV9tOV9POENl
VTZkVDlmUnZuOThvR0ZsLVVPUTdpdzlfZWxoS0xXOGZWMElWbGFJSUZUREZPV1dBVnFUcTh0ZDht
VUNxMS1lcWhYaWc1aUJxeHliX0ZrWkNFaV9uT3UyaHV0ZHRvcFBPQUtQVUxVRWNUbzhCNThRMnJm
WThRc1dOVHJZc2I2NTJxSnhRb0NCdmtjLXcvaHR0cCUzQSUyRiUyRmltZy5hY3Rjb3JwLmluJTJG
bWFpbGVycyUyRm1haWxlcjkuaHRtIiB0YXJnZXQ9Il9ibGFuayI+Q2xpY2sgaGVyZTwvYT4=

--b1_dafa72d8247b4f5786e1498ab37bfa32
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
LmNpc2NvLmNvbS8xNC1KeEZtRGZWREhhUkEyUWREajZYd3p2cVBaRTNVTmpXMU5iMlA4LWFtZEdu
bGplWERYdmRqeHFKdmgyTVpkZWltbmZsMHdnMHBfN0pwVEdYT0p5RVBrQ1FLaTJYWVVGU0Q2QjVq
NlVGaWNuZW1CbEZQd3dwYVhJcWo2QlEyRDdiM3gzcEY3U2gtcU9Kd0ZxRVB1ZzJSelN2MXlMZGoz
ZjFvdC1qOEdCbWEzdnJueU9MVTREZVpSWTlwN1F0MG1oUFRGZEhWMU1EMm5zeHpfQThfRGU2b0ZX
eFpDTGJnY0hoWkVzV2V6LUxtR1V2bDBEZEhlYXVOTDFKd3E0SEtEakU5d2owVFFzNzRucklibDJz
OWRBazVGRGgwakFmUS1fTmtfLVVlZUY5Y0cxdW9QSnRJanpJajFRMEVZNnU0azJnSV9tOV9POENl
VTZkVDlmUnZuOThvR0ZsLVVPUTdpdzlfZWxoS0xXOGZWMElWbGFJSUZUREZPV1dBVnFUcTh0ZDht
VUNxMS1lcWhYaWc1aUJxeHliX0ZrWkNFaV9uT3UyaHV0ZHRvcFBPQUtQVUxVRWNUbzhCNThRMnJm
WThRc1dOVHJZc2I2NTJxSnhRb0NCdmtjLXcvaHR0cCUzQSUyRiUyRmltZy5hY3Rjb3JwLmluJTJG
bWFpbGVycyUyRm1haWxlcjkuaHRtIiB0YXJnZXQ9Il9ibGFuayI+Q2xpY2sgaGVyZTwvYT4=

--b1_dafa72d8247b4f5786e1498ab37bfa32--
