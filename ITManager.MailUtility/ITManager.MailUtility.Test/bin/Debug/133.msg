X-Qmail-Scanner-Diagnostics: from 192.168.9.81 by vdvm34.logix.local (envelope-from <noreply@forticloud.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.81):SA:0(IronPort):.  Processed in 0.030348 secs); 18 Sep 2022 00:53:35 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  noreply@forticloud.com designates 208.91.113.148 as permitted  sender) identity=mailfrom; client-ip=208.91.113.148;  receiver=tblr2.logix.in;  envelope-from="noreply@forticloud.com";  x-sender="noreply@forticloud.com"; x-conformance=spf_only;  x-record-type="v=spf1"; x-record-text="v=spf1  ip4:209.91.113.148/32 mx ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@mail.forticloud.com) identity=helo;  client-ip=208.91.113.148; receiver=tblr2.logix.in;  envelope-from="noreply@forticloud.com";  x-sender="postmaster@mail.forticloud.com";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=noreply@forticloud.com; spf=None smtp.helo=postmaster@mail.forticloud.com; dmarc=pass (p=none dis=none) d=forticloud.com
IronPort-SDR: k7yR1zsnqeFbqfeNoxvDUuboCg6N37w3KNic4nOMGUdMnc5Sqr/PnBYYcAQrZlr14hQs2lvTF8 db8AjhYfnvdGB4A+1nNkxRS4KEm++Tt8u71DKTixfvXLh1jin3xYcU6IhePmE55rSjQ0j6YbtN YtDizarD9E1LdoSH5vPnsJdaVoCBZreTmogEcmallsdpkADj9iQn/6Q/LnvPvvREcq9JNkBFdh oPkxOwXvp59YP8tlC523eN2rOstY++stXjuo31aAJfiDvnUckMfpdp4OOIQDr0BVuCC7Xk4Mk/ GBXRYJyzs83woZUaN8bOi2Nn
X-ORIGINAL-IP: 208.91.113.148
X-ORIGINAL-TIME: 18 Sep 2022 06:23:33 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:D1gjsqN5CizfzMBcTuCjsMiBIKoaSvp037BL7SFMoHNuGfBw+/ rFoB1573HJYVQqNE3I8OroUJVoKkmyyXca2+QsFIbncyWjkHa0JIti6Yfk3nnGEynzn9Q86Y 5QN4dTTOT3CFhxnYLbzWCDYrQd6ejC34yBv6P1yndgShwvS5gI1XYbNjqm
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,323,1654540200";    d="pdf'?scan'208,217";a="88453394"
X-Amp-Result: LOWRISK
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
Received: from noreply@forticloud.com([192.168.1.1]) 	by PME Mail With Id 1663462419319.16868;Sun, 18 Sep 2022 06:23:39 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h4pm0u1oo38e for <helpdesk@satragroup.in>; Sun, 18 Sep 2022 06:23:35 +0530 (envelope-from <noreply@forticloud.com>)
Received: (qmail 168584 invoked by uid 1012); 18 Sep 2022 00:53:35 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.81])          (envelope-sender <noreply@forticloud.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 18 Sep 2022 00:53:34 -0000
Received: from mail.forticloud.com ([208.91.113.148])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Sep 2022 06:23:31 +0530
MIME-Version: 1.0
X-FE-Attachment-Name: 360 Degree Activities Report_weekly_2022-09-11_2022-09-18_root_1663459454365_3232.pdf
X-FEAS-Client-IP: 192.168.223.179
X-FE-Policy-ID: 1:3:0:SYSTEM
Subject: FGT30D3X15017765_360 Degree Activities Report_weekly_2022-09-11_2022-09-18_root_1663459454365
Date: Sat, 17 Sep 2022 17:53:28 -0700
Message-ID: <543240245.153991663462408331.JavaMail.root@mail.forticloud.com>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: noreply@forticloud.com
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <noreply@forticloud.com>
content-type: multipart/related; boundary="----=_Part_15413_1146484913.1663462408324"
X-PMAttribute: 1663462419319.16868; mb_id=QSM1413892035136; imapid=30988; del_to=helpdesk

------=_Part_15413_1146484913.1663462408324
content-type: text/html; charset=utf-8
content-transfer-encoding: 7bit

<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>
<html><head><title>Report from FortiGate Cloud</title><style>/*** * Text level control ***/.fc-rpt-cover-letter {    font-size: 100%;}.fc-rpt-title {	font-size: 160%;	font-weight:bolder;}.fc-rpt-section {	font-size: 120%;	font-weight:bold;	word-break: hyphenate;}.fc-rpt-section-desc {	font-size: 100%;	word-break: hyphenate;}/*** * Chart leve control ***//*** * Table level control ***/th {    border-bottom: 1px solid;}/*** * Utils ***/.word-break-all {    word-break: break-all;}</style></head><body><div class='fc-rpt-cover-letter' style='font-size: 100%;'>This report is generated by FortiGate Cloud. If it is not shown correctly, please use the attached PDF report.<br/>
If you no longer want to receive this report via e-mail, please <a href="https://secure-web.cisco.com/1BIg2ZRl3xGf48D7nxVlEiM7_-IEYusNd1gWcoeZ1Oow40J_iI6nikWE9jmSAwk-BJC8XAS-2xnJ9b2tOJ_v8Oy-lWiZ41lPH9Ng8PcS8gsAc4FxDaxH1ULQsgI1nF4UHUWBQHJXJuv_sQp3ZYmSrsutTFiWfUZ8W0AO2ctIPJ0oSR_qOMl4fj5R5jP5ayPDNQ-pAqqGXDiGMOvYYSuS8C77wqeixHvDtdolTjgLpA5pdhsUiF-sgvgSFCny_kG5LDKyaaZdiWbAM6iCp4-i3HU7AP72ln2q5P5olMj6JI0_RGh1xbn5KYi6FNDFa0FAm7_FJZUGzPiKbJnUbwVk7xljqcB_G9He51Y2VJD5L8iD6X6DapOC8gGZKt6Fb7W4jvK0F1KwFiuMhkF-vRmCXiIl5OtGpuF5XAMilfQBQS3sLO6fnwnZA1yMq2yL-WXX2nd-biXAuwK5W1aaN83KQ4A/https%3A%2F%2Fwww.forticloud.com%2Fcom.fortinet.gwt.Main%2Funregrpt_confirm_hint.jsp%3Fid%3DqkvNR9pFPCH%25252BUG6GdhhLkxhTv0du4KqpJPJbJFu7%25252FbbNIDlqwnyYRttXi%25252BdIoBmM%26local%3Den_US%26end%3D1">unsubscribe</a> here<br/>
<br/></div><div><hr/></div><div><table border='0' style='min-width:800px;'><thead  width='100%' cellspacing='0' cellpadding='3' align='center'><tr><td class='fc-rpt-title' style='font-size: 160%; font-weight:bolder;'>360 Degree Activities Report</td></tr><tr><td>Device: FGT30D3X15017765(root) </td></tr><tr><td>2022-09-11 00:00 - 2022-09-18 00:00 Asia/Calcutta</td></tr><tr><td>&nbsp;</td></tr></thead><tbody><tr><td>There is no analysis log data uploaded during the reporting period</tr></td></tbody></table></div></body></html>
------=_Part_15413_1146484913.1663462408324
content-type: application/octet-stream; name="360 Degree Activities Report_weekly_2022-09-11_2022-09-18_root_1663459454365_3232.pdf"
content-transfer-encoding: base64
content-disposition: attachment; filename="360 Degree Activities Report_weekly_2022-09-11_2022-09-18_root_1663459454365_3232.pdf"

JVBERi0xLjQKJeLjz9MKMyAwIG9iago8PC9GaWx0ZXIvRmxhdGVEZWNvZGUvTGVuZ3RoIDMzMT4+
c3RyZWFtCnicjVHLboMwELz7K/ZIDpC1wTbk1jZNpJ768KGHXKzgEioSEoe06t93DSFSpFYtxmJs
vDOz4wO7NSxVoDkHUzKEOMcA7g17Yofwc7rgkIN5YxyQBocso9MKzJZFAoWIsYipGHGGVA2Xrfy8
dXOs7fTONutT19mJeb/iSTHwBAkugkY0dx/12s1gsTQpztNXLpFrreQq8m3brSYQGM7mMJEZDzqJ
klj0X14oDs9LJuBz7GrLpB5Qw176ujAFPFCzS8LU4uio0EkmQRXyYkoFU+TMB7GUHuLF/jSJDMBX
LDIb5x3UR9i1YHe2+ToSbtoKSttZOO2b1pauhPLk610F3caBd/vWd7QK/SBUNIMIOeIkMRoSeZpo
DUoXwdHfPvbO1235IyVldn2dv6VHPKO8zDBJyUXWX/ajrRzw/+XPh/zpHeInMKT/Dd6ni/oKZW5k
c3RyZWFtCmVuZG9iagoyIDAgb2JqCjw8L0NvbnRlbnRzIDMgMCBSL1R5cGUvUGFnZS9SZXNvdXJj
ZXM8PC9Qcm9jU2V0IFsvUERGIC9UZXh0IC9JbWFnZUIgL0ltYWdlQyAvSW1hZ2VJXS9Gb250PDwv
RjEgMSAwIFI+Pj4+L1BhcmVudCA0IDAgUi9NZWRpYUJveFswIDAgNjEyIDc5Ml0+PgplbmRvYmoK
NSAwIG9iagpbMiAwIFIvWFlaIDk3LjQ1IDcxMSAwXQplbmRvYmoKMSAwIG9iago8PC9TdWJ0eXBl
L1R5cGUxL1R5cGUvRm9udC9CYXNlRm9udC9IZWx2ZXRpY2EvRW5jb2RpbmcvV2luQW5zaUVuY29k
aW5nPj4KZW5kb2JqCjQgMCBvYmoKPDwvS2lkc1syIDAgUl0vVHlwZS9QYWdlcy9Db3VudCAxPj4K
ZW5kb2JqCjYgMCBvYmoKPDwvTmFtZXNbKG5hcikgNSAwIFJdPj4KZW5kb2JqCjcgMCBvYmoKPDwv
RGVzdHMgNiAwIFI+PgplbmRvYmoKOCAwIG9iago8PC9QYWdlTW9kZS9Vc2VPdXRsaW5lcy9OYW1l
cyA3IDAgUi9UeXBlL0NhdGFsb2cvUGFnZXMgNCAwIFI+PgplbmRvYmoKOSAwIG9iago8PC9Nb2RE
YXRlKEQ6MjAyMjA5MTcxNzA0MTQtMDcnMDAnKS9DcmVhdGlvbkRhdGUoRDoyMDIyMDkxNzE3MDQx
NC0wNycwMCcpL1Byb2R1Y2VyKGlUZXh0IDIuMS40IFwoYnkgbG93YWdpZS5jb21cKSkvVGl0bGUo
MzYwIERlZ3JlZSBBY3Rpdml0aWVzIFJlcG9ydCk+PgplbmRvYmoKeHJlZgowIDEwCjAwMDAwMDAw
MDAgNjU1MzUgZiAKMDAwMDAwMDYwOSAwMDAwMCBuIAowMDAwMDAwNDEzIDAwMDAwIG4gCjAwMDAw
MDAwMTUgMDAwMDAgbiAKMDAwMDAwMDY5NyAwMDAwMCBuIAowMDAwMDAwNTcwIDAwMDAwIG4gCjAw
MDAwMDA3NDggMDAwMDAgbiAKMDAwMDAwMDc4NyAwMDAwMCBuIAowMDAwMDAwODE5IDAwMDAwIG4g
CjAwMDAwMDA4OTcgMDAwMDAgbiAKdHJhaWxlcgo8PC9JbmZvIDkgMCBSL0lEIFs8N2U2OGMwM2Ix
OTk5MTNlMTI5ZDA2YmYyODE5NWVlMmM+PGI1ZGRkMTI0NDRjMzNhOWZlMDcwNDBhYTQ3ZGYwMWE5
Pl0vUm9vdCA4IDAgUi9TaXplIDEwPj4Kc3RhcnR4cmVmCjEwNjUKJSVFT0YK
------=_Part_15413_1146484913.1663462408324--
