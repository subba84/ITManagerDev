X-Qmail-Scanner-Diagnostics: from 192.168.9.71 by vdvm33.logix.local (envelope-from <noreply@forticloud.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.71):SA:0(IronPort):.  Processed in 0.036012 secs); 07 Sep 2022 00:57:41 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  noreply@forticloud.com designates 208.91.113.148 as permitted  sender) identity=mailfrom; client-ip=208.91.113.148;  receiver=tblr2.logix.in;  envelope-from="noreply@forticloud.com";  x-sender="noreply@forticloud.com"; x-conformance=spf_only;  x-record-type="v=spf1"; x-record-text="v=spf1  ip4:209.91.113.148/32 mx ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@mail.forticloud.com) identity=helo;  client-ip=208.91.113.148; receiver=tblr2.logix.in;  envelope-from="noreply@forticloud.com";  x-sender="postmaster@mail.forticloud.com";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=noreply@forticloud.com; spf=None smtp.helo=postmaster@mail.forticloud.com; dmarc=pass (p=none dis=none) d=forticloud.com
IronPort-SDR: mx+LfYwXDVpFpUDjKfDr9VDqKNAp3XH+Q1vGbyOcXkenRil6PbKzqae1Kqkqw2cnDvJH+5XYhw uIlVnOYr8sMuJmz5WpXDYNyYyBgtygJeVVGPISbmV1fE1KPs7hJE41QfEK5uUCplxpkd4QVAyZ rV+xoNCl/oYnJYNBUuA70yYobpubtxZY1XWDYvLTUCZVIRhyeTsH8MrrXCTwZuWraYr8WxTC80 h1p20jLUyRAAM8P3yWQFjzQUYVc30X6wbDoNXfieaTgAKb5fDxBTi1J2k3IrO3b7mBG1wd9xZ5 nKSG8aThAC/cMyJBq+eefisQ
X-ORIGINAL-IP: 208.91.113.148
X-ORIGINAL-TIME: 07 Sep 2022 06:27:40 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:UwjueaNn+PS7PsBcTvqjsMiBIKoaSvp037BL7SFMoHNuGfBw+/ rFoB1573HJYVQqNE3I8OroUJVoKkmyyXca2+QsFIbncyWjkHa0JIti6Yfk3nnGEynzn9Q86Y 5QN4dTTOT3CFhxnYLbzWCDYrUd/OU=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,295,1654540200";    d="pdf'?scan'208,217";a="216109716"
X-Amp-Result: LOWRISK
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
Received: from noreply@forticloud.com([192.168.1.1]) 	by PME Mail With Id 1662510418569.17896;Wed, 7 Sep 2022 05:56:58 +0530 (IST)
Received: from vdvm33.logix.local (127.0.0.1) by tblr42.logix.in id h2vm8a1oo38i for <helpdesk@satragroup.in>; Wed, 7 Sep 2022 06:27:41 +0530 (envelope-from <noreply@forticloud.com>)
Received: (qmail 2378 invoked by uid 1012); 7 Sep 2022 00:57:41 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.71])          (envelope-sender <noreply@forticloud.com>)          by vdvm33.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 7 Sep 2022 00:57:41 -0000
Received: from mail.forticloud.com ([208.91.113.148])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2022 06:27:38 +0530
MIME-Version: 1.0
X-FE-Attachment-Name: Summary Report_daily_2022-09-06_2022-09-07_root_1662509272029_3229.pdf
X-FE-Policy-ID: 1:3:0:SYSTEM
Subject: FGT30D3X15017765_Summary Report_daily_2022-09-06_2022-09-07_root_1662509272029
Date: Tue, 6 Sep 2022 17:57:36 -0700
Message-ID: <1614313819.1249621662512256478.JavaMail.root@mail.forticloud.com>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: noreply@forticloud.com
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <noreply@forticloud.com>
content-type: multipart/related; boundary="----=_Part_124965_1167526808.1662512256466"
X-PMAttribute: 1662510418569.17896; mb_id=QSM1413892035136; imapid=30851; del_to=helpdesk

------=_Part_124965_1167526808.1662512256466
content-type: text/html; charset=utf-8
content-transfer-encoding: 7bit

<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>
<html><head><title>Report from FortiGate Cloud</title><style>/*** * Text level control ***/.fc-rpt-cover-letter {    font-size: 100%;}.fc-rpt-title {	font-size: 160%;	font-weight:bolder;}.fc-rpt-section {	font-size: 120%;	font-weight:bold;	word-break: hyphenate;}.fc-rpt-section-desc {	font-size: 100%;	word-break: hyphenate;}/*** * Chart leve control ***//*** * Table level control ***/th {    border-bottom: 1px solid;}/*** * Utils ***/.word-break-all {    word-break: break-all;}</style></head><body><div class='fc-rpt-cover-letter' style='font-size: 100%;'>This report is generated by FortiGate Cloud. If it is not shown correctly, please use the attached PDF report.<br/>
If you no longer want to receive this report via e-mail, please <a href="https://secure-web.cisco.com/1189q4c2TBpXPzEPsuARYUECjoflFZToPyszHVzRvIvY2hdamoTM1Nz8pFu2tvFN7g1GSAtHrmgnx-qrg66J0LDS5IyASYy7kv3WVpiOk9yJYd_gaR0-_8RDR0IR-ZzU_GOEdG_-rs6d9gfSvQQ8aefZYpwb6sPqm8rcHN5JvXu4jxyrFjODsHCv1Lx1NNxJ1EdAJIiNDcKU1AxmImW5PItQfwLqb2PW-O5xSKFO5KXE8cB_zNt6l4oatRAAKBEe2j3aECxfljABC4g3PVvbaKANE7cQhpyORlgMYhOLfNk0wPzJyDKTVGGDo3gadMluzP09XydgjpeYn6Qlnz9Mj1aYlWZpISkdjFh8K7RB6y4WI3v4mn6Y66OonHOmYti2UAqJuYUl6In_X1gfUrJk_NMYLP-vAGf2294kIh2zj8pEKnKwhV85Uy8yz5Bk7OTPW-PNic9cXbemJrYeMt9VUHA/https%3A%2F%2Fwww.forticloud.com%2Fcom.fortinet.gwt.Main%2Funregrpt_confirm_hint.jsp%3Fid%3DdCNzptREU2GovvUuPIE4QOXGSuOKCyo6mK6KqCdS0yuc4bLWc%25252FQBR9oElGL7L7Zy%26local%3Den_US%26end%3D1">unsubscribe</a> here<br/>
<br/></div><div><hr/></div><div><table border='0' style='min-width:800px;'><thead  width='100%' cellspacing='0' cellpadding='3' align='center'><tr><td class='fc-rpt-title' style='font-size: 160%; font-weight:bolder;'>Summary Report</td></tr><tr><td>Device: FGT30D3X15017765(root) </td></tr><tr><td>2022-09-06 00:00 - 2022-09-07 00:00 Asia/Calcutta</td></tr><tr><td><font color='blue'>This report type will cease to be available on Fortigate without FortigateCloud subscription starting from the coming September.For more information, please see appendix.</font></td></tr><tr><td>&nbsp;</td></tr></thead><tbody><tr><td>There is no analysis log data uploaded during the reporting period</tr></td></tbody></table></div></body></html>
------=_Part_124965_1167526808.1662512256466
content-type: application/octet-stream; name="Summary Report_daily_2022-09-06_2022-09-07_root_1662509272029_3229.pdf"
content-transfer-encoding: base64
content-disposition: attachment; filename="Summary Report_daily_2022-09-06_2022-09-07_root_1662509272029_3229.pdf"

JVBERi0xLjQKJeLjz9MKMyAwIG9iago8PC9GaWx0ZXIvRmxhdGVEZWNvZGUvTGVuZ3RoIDQ1ND4+
c3RyZWFtCnicjZJPc5swEMXv+hTv6MzUROKvya1Nas/01DYceshFBhmrIxARImm+fVcQO/VMOymg
YSVW+356yyP7VLEkRyEEqoZxrDc8BJ8r9o09ho/XW4ENqgMT4HQLpCll56g6top5HK95ueY5OL/h
tBvnpeJ16eOo5fWtNPXkvbyqfl7USXioEyREHDRWd+pJ1+oG212V8Lvkh8i4KIo8e1g5a/3DFUKF
M9JSyLUXNbNkZquOeoRTg3Ue/mVQeNbGoFZyVPAWewX5JLWRe6Nge2wpT7fShzx/tJN/W7k1dmow
TvuxdnrwmrJHL+lj3+LgbAd/VKhtF+b3avCq2ysXvQ+axjMo6aCzTkH3B+s6GQQ+YDAz6aiIcxhU
3+hfc8nXxvAoS4XYgEd5xsv5Lcpc4PuOxXg+dbRjWbFEht3P+8KI8YWAdhRTe09AZRGlGfIyOzck
D+CE6IJYQhfV5XM2iSwBHYh8VoF9RG8he2leRoqNbdFILzENxspGNWgmF/wJVi1NoVk4D0dLI4gQ
kSCJE1C8SaKiQF6Ugeh9jkE5bZu/liTPLn/lf7n3R4OylEcJUaRzj77KVkH8n/9i8Z+exX4KFvd/
A+OU2+4KZW5kc3RyZWFtCmVuZG9iagoyIDAgb2JqCjw8L0NvbnRlbnRzIDMgMCBSL1R5cGUvUGFn
ZS9SZXNvdXJjZXM8PC9Qcm9jU2V0IFsvUERGIC9UZXh0IC9JbWFnZUIgL0ltYWdlQyAvSW1hZ2VJ
XS9Gb250PDwvRjEgMSAwIFI+Pj4+L1BhcmVudCA0IDAgUi9NZWRpYUJveFswIDAgNjEyIDc5Ml0+
PgplbmRvYmoKNSAwIG9iagpbMiAwIFIvWFlaIDk3LjQ1IDcxMSAwXQplbmRvYmoKMSAwIG9iago8
PC9TdWJ0eXBlL1R5cGUxL1R5cGUvRm9udC9CYXNlRm9udC9IZWx2ZXRpY2EvRW5jb2RpbmcvV2lu
QW5zaUVuY29kaW5nPj4KZW5kb2JqCjQgMCBvYmoKPDwvS2lkc1syIDAgUl0vVHlwZS9QYWdlcy9D
b3VudCAxPj4KZW5kb2JqCjYgMCBvYmoKPDwvTmFtZXNbKG5hcikgNSAwIFJdPj4KZW5kb2JqCjcg
MCBvYmoKPDwvRGVzdHMgNiAwIFI+PgplbmRvYmoKOCAwIG9iago8PC9QYWdlTW9kZS9Vc2VPdXRs
aW5lcy9OYW1lcyA3IDAgUi9UeXBlL0NhdGFsb2cvUGFnZXMgNCAwIFI+PgplbmRvYmoKOSAwIG9i
ago8PC9Nb2REYXRlKEQ6MjAyMjA5MDYxNzA3NTItMDcnMDAnKS9DcmVhdGlvbkRhdGUoRDoyMDIy
MDkwNjE3MDc1Mi0wNycwMCcpL1Byb2R1Y2VyKGlUZXh0IDIuMS40IFwoYnkgbG93YWdpZS5jb21c
KSkvVGl0bGUoU3VtbWFyeSBSZXBvcnQpPj4KZW5kb2JqCnhyZWYKMCAxMAowMDAwMDAwMDAwIDY1
NTM1IGYgCjAwMDAwMDA3MzIgMDAwMDAgbiAKMDAwMDAwMDUzNiAwMDAwMCBuIAowMDAwMDAwMDE1
IDAwMDAwIG4gCjAwMDAwMDA4MjAgMDAwMDAgbiAKMDAwMDAwMDY5MyAwMDAwMCBuIAowMDAwMDAw
ODcxIDAwMDAwIG4gCjAwMDAwMDA5MTAgMDAwMDAgbiAKMDAwMDAwMDk0MiAwMDAwMCBuIAowMDAw
MDAxMDIwIDAwMDAwIG4gCnRyYWlsZXIKPDwvSW5mbyA5IDAgUi9JRCBbPDM0MmM2YTUxOGFmNzNh
ZGRkZGUyZTI3N2VlZTFmNjA2PjwzMGU4Mzk5ZGI2MTcwZWI2MjUyNzQ3Njk3ZWNmMmI4Yz5dL1Jv
b3QgOCAwIFIvU2l6ZSAxMD4+CnN0YXJ0eHJlZgoxMTc0CiUlRU9GCg==
------=_Part_124965_1167526808.1662512256466--
