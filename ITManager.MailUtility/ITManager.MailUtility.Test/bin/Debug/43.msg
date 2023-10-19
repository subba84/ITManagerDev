X-Qmail-Scanner-Diagnostics: from 192.168.8.22 by vdvm33.logix.local (envelope-from <noreply@forticloud.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.8.22):SA:0(IronPort):.  Processed in 0.029481 secs); 11 Sep 2022 00:53:34 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  noreply@forticloud.com designates 208.91.113.148 as permitted  sender) identity=mailfrom; client-ip=208.91.113.148;  receiver=tblr2.logix.in;  envelope-from="noreply@forticloud.com";  x-sender="noreply@forticloud.com"; x-conformance=spf_only;  x-record-type="v=spf1"; x-record-text="v=spf1  ip4:209.91.113.148/32 mx ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@mail.forticloud.com) identity=helo;  client-ip=208.91.113.148; receiver=tblr2.logix.in;  envelope-from="noreply@forticloud.com";  x-sender="postmaster@mail.forticloud.com";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=noreply@forticloud.com; spf=None smtp.helo=postmaster@mail.forticloud.com; dmarc=pass (p=none dis=none) d=forticloud.com
IronPort-SDR: JAk19e6T7qJ5CMpfeT1jeOyP3vxLTd/Awy9lWrxOLb/0EfSRefMx5GZYyl9CAPbnh5ENt5VaYu TYCO7CeqQyREL8zkIapiQ38ud4XrIMhUE=
X-ORIGINAL-IP: 208.91.113.148
X-ORIGINAL-TIME: 11 Sep 2022 06:23:32 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:X+eWIKygnobGtuGZuQwYKrPwDb1zdoMgy1knxilNoH1uE/Bw+P rEoB1273XJYVUqNk3I++rtBEDoexq1yXcf2+Ys1NmZMTXOiS+GAMVL8JbryTzlFyrisslU0a sISchDIey1InQ/tMD+4AOpV/YMqeP3kpyAtKPw419WCStua61m8kNYM2+gYy5LeDU=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,307,1654540200";    d="pdf'?scan'208,217";a="333100923"
X-Amp-Result: LOWRISK
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
Received: from noreply@forticloud.com([121.240.11.42]) 	by PME Mail With Id 1662855815818.10939;Sun, 11 Sep 2022 05:53:35 +0530 (IST)
Received: from vdvm33.logix.local (127.0.0.1) by tblr42.logix.in id h3kork1oo38r for <helpdesk@satragroup.in>; Sun, 11 Sep 2022 06:23:34 +0530 (envelope-from <noreply@forticloud.com>)
Received: (qmail 123390 invoked by uid 1012); 11 Sep 2022 00:53:34 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.8.22])          (envelope-sender <noreply@forticloud.com>)          by vdvm33.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 11 Sep 2022 00:53:33 -0000
Received: from mail.forticloud.com ([208.91.113.148])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Sep 2022 06:23:30 +0530
MIME-Version: 1.0
X-FE-Attachment-Name: 360 Degree Activities Report_weekly_2022-09-04_2022-09-11_root_1662854743113_3231.pdf
X-FEAS-Client-IP: 192.168.223.179
X-FE-Policy-ID: 1:3:0:SYSTEM
Subject: FGT30D3X15017765_360 Degree Activities Report_weekly_2022-09-04_2022-09-11_root_1662854743113
Date: Sat, 10 Sep 2022 17:53:27 -0700
Message-ID: <102880229.27181662857607957.JavaMail.root@mail.forticloud.com>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: noreply@forticloud.com
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <noreply@forticloud.com>
content-type: multipart/related; boundary="----=_Part_2731_176498886.1662857607951"
X-PMAttribute: 1662855815818.10939; mb_id=QSM1413892035136; imapid=30893; del_to=helpdesk

------=_Part_2731_176498886.1662857607951
content-type: text/html; charset=utf-8
content-transfer-encoding: 7bit

<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>
<html><head><title>Report from FortiGate Cloud</title><style>/*** * Text level control ***/.fc-rpt-cover-letter {    font-size: 100%;}.fc-rpt-title {	font-size: 160%;	font-weight:bolder;}.fc-rpt-section {	font-size: 120%;	font-weight:bold;	word-break: hyphenate;}.fc-rpt-section-desc {	font-size: 100%;	word-break: hyphenate;}/*** * Chart leve control ***//*** * Table level control ***/th {    border-bottom: 1px solid;}/*** * Utils ***/.word-break-all {    word-break: break-all;}</style></head><body><div class='fc-rpt-cover-letter' style='font-size: 100%;'>This report is generated by FortiGate Cloud. If it is not shown correctly, please use the attached PDF report.<br/>
If you no longer want to receive this report via e-mail, please <a href="https://secure-web.cisco.com/1wiedn6nUABhhaLpqAgJxdF67cbGQz7xWQuyT3VAZfT1dVls9GUypgP-P4UwZI0Y1Vj-2RApuoXPEOoT4OfHIjNxHMenNxWhahLXKVFnjIRX7_Wrhrsad0t07keWqihyKgXwwUqx_GohyI7Iks3BwTx7ylFZEfQ0FsJjZLt4ul4NFcU_pdmRoFmHfW15_NqTuqFXbtARvElkd7z60pdag6ucFyEb7rwjhQBrbjOs_ciYn63jAI3iMDUJuEZRE3tyrqi0EG8cSaUOmtWPw2GlXl6HBqnZux2UcRydXT2jJ0owTHtUiLz0CXNyJnHwnPogca7TQXRvz39wvswNnXLXu3bxb0oXkbITEPm7ndvXzRux6JKaONrJrwaejC_Nvw2HSszyKbHb3Wvt_TdF7Qr5CklMPyHzL5MV6lKO1UmxnBy4/https%3A%2F%2Fwww.forticloud.com%2Fcom.fortinet.gwt.Main%2Funregrpt_confirm_hint.jsp%3Fid%3DqkvNR9pFPCGG3Jl9XzA5e1iZYM%25252B6zRFTRy%25252FqJ1saikTothpO85OXBAi3L9psLclB%26local%3Den_US%26end%3D1">unsubscribe</a> here<br/>
<br/></div><div><hr/></div><div><table border='0' style='min-width:800px;'><thead  width='100%' cellspacing='0' cellpadding='3' align='center'><tr><td class='fc-rpt-title' style='font-size: 160%; font-weight:bolder;'>360 Degree Activities Report</td></tr><tr><td>Device: FGT30D3X15017765(root) </td></tr><tr><td>2022-09-04 00:00 - 2022-09-11 00:00 Asia/Calcutta</td></tr><tr><td>&nbsp;</td></tr></thead><tbody><tr><td>There is no analysis log data uploaded during the reporting period</tr></td></tbody></table></div></body></html>
------=_Part_2731_176498886.1662857607951
content-type: application/octet-stream; name="360 Degree Activities Report_weekly_2022-09-04_2022-09-11_root_1662854743113_3231.pdf"
content-transfer-encoding: base64
content-disposition: attachment; filename="360 Degree Activities Report_weekly_2022-09-04_2022-09-11_root_1662854743113_3231.pdf"

JVBERi0xLjQKJeLjz9MKMyAwIG9iago8PC9GaWx0ZXIvRmxhdGVEZWNvZGUvTGVuZ3RoIDMzMj4+
c3RyZWFtCnicjVHLTsMwELz7K/aYHpruJrGd9AaUVuLEwwcOvViNSYPSpnVTEH/POiFIlUDghzJ2
7JnZ8VFcG5Eq0ERgSoEwzTGAWyMexDH8nC0JcjAvggC5E2QZn1ZgdiJKMEmmWEwxA8Q58m0Yt5hv
2Lo61XZ2Y5vNuevsxLxe8KQYeIIEJUEjWri3euPmsFyZFBfpM0kkrZVcR75tu/UEAsOXOYxlRpQD
xkpi0X+pUASPK5HA+1jVTkg9oEY89ffCTOCOi10x5hJHR4WOMwmqkN+mVDDFznwQS7kxL/anWWQA
vhKR2TrvoD7BvgW7t83HiXHTVlDazsL50LS2dCWUZ1/vK+i2Drw7tL7jVagHoeIZRNgRscRoKMnT
WGtQugiO/vZxcL5uyx8pObPL5/wtPeYZ5WWGccousv6x723lgP6XPw358xjiZzCk/wnUXov1CmVu
ZHN0cmVhbQplbmRvYmoKMiAwIG9iago8PC9Db250ZW50cyAzIDAgUi9UeXBlL1BhZ2UvUmVzb3Vy
Y2VzPDwvUHJvY1NldCBbL1BERiAvVGV4dCAvSW1hZ2VCIC9JbWFnZUMgL0ltYWdlSV0vRm9udDw8
L0YxIDEgMCBSPj4+Pi9QYXJlbnQgNCAwIFIvTWVkaWFCb3hbMCAwIDYxMiA3OTJdPj4KZW5kb2Jq
CjUgMCBvYmoKWzIgMCBSL1hZWiA5Ny40NSA3MTEgMF0KZW5kb2JqCjEgMCBvYmoKPDwvU3VidHlw
ZS9UeXBlMS9UeXBlL0ZvbnQvQmFzZUZvbnQvSGVsdmV0aWNhL0VuY29kaW5nL1dpbkFuc2lFbmNv
ZGluZz4+CmVuZG9iago0IDAgb2JqCjw8L0tpZHNbMiAwIFJdL1R5cGUvUGFnZXMvQ291bnQgMT4+
CmVuZG9iago2IDAgb2JqCjw8L05hbWVzWyhuYXIpIDUgMCBSXT4+CmVuZG9iago3IDAgb2JqCjw8
L0Rlc3RzIDYgMCBSPj4KZW5kb2JqCjggMCBvYmoKPDwvUGFnZU1vZGUvVXNlT3V0bGluZXMvTmFt
ZXMgNyAwIFIvVHlwZS9DYXRhbG9nL1BhZ2VzIDQgMCBSPj4KZW5kb2JqCjkgMCBvYmoKPDwvTW9k
RGF0ZShEOjIwMjIwOTEwMTcwNTQzLTA3JzAwJykvQ3JlYXRpb25EYXRlKEQ6MjAyMjA5MTAxNzA1
NDMtMDcnMDAnKS9Qcm9kdWNlcihpVGV4dCAyLjEuNCBcKGJ5IGxvd2FnaWUuY29tXCkpL1RpdGxl
KDM2MCBEZWdyZWUgQWN0aXZpdGllcyBSZXBvcnQpPj4KZW5kb2JqCnhyZWYKMCAxMAowMDAwMDAw
MDAwIDY1NTM1IGYgCjAwMDAwMDA2MTAgMDAwMDAgbiAKMDAwMDAwMDQxNCAwMDAwMCBuIAowMDAw
MDAwMDE1IDAwMDAwIG4gCjAwMDAwMDA2OTggMDAwMDAgbiAKMDAwMDAwMDU3MSAwMDAwMCBuIAow
MDAwMDAwNzQ5IDAwMDAwIG4gCjAwMDAwMDA3ODggMDAwMDAgbiAKMDAwMDAwMDgyMCAwMDAwMCBu
IAowMDAwMDAwODk4IDAwMDAwIG4gCnRyYWlsZXIKPDwvSW5mbyA5IDAgUi9JRCBbPDM0ZDQwYTYw
MTU5YmNhZDEyY2FiY2IyMWQ4MDRhNjg0Pjw4OWNmZDI1MTdiOTQwMjkxMjM3YzYzNTIwOGQwMTc1
Nj5dL1Jvb3QgOCAwIFIvU2l6ZSAxMD4+CnN0YXJ0eHJlZgoxMDY2CiUlRU9GCg==
------=_Part_2731_176498886.1662857607951--
