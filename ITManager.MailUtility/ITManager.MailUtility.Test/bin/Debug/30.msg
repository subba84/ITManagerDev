X-Qmail-Scanner-Diagnostics: from 192.168.8.22 by vdvm34.logix.local (envelope-from <sachinjha@sharp-oa.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.8.22):SA:0(IronPort):.  Processed in 0.025652 secs); 08 Sep 2022 09:48:49 -0000
Authentication-Results: tblr2.logix.in; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=sachinjha@sharp-oa.com
Received-SPF: Pass (tblr2.logix.in: domain of  sachinjha@sharp-oa.com designates 40.107.239.47 as permitted  sender) identity=mailfrom; client-ip=40.107.239.47;  receiver=tblr2.logix.in;  envelope-from="sachinjha@sharp-oa.com";  x-sender="sachinjha@sharp-oa.com"; x-conformance=spf_only;  x-record-type="v=spf1"; x-record-text="v=spf1  ip4:40.92.0.0/15 ip4:40.107.0.0/16 ip4:52.100.0.0/14  ip4:104.47.0.0/17 ip6:2a01:111:f400::/48  ip6:2a01:111:f403::/49 ip6:2a01:111:f403:8000::/50  ip6:2a01:111:f403:c000::/51 ip6:2a01:111:f403:f000::/52  include:spfd.protection.outlook.com -all"
X-Ironport-Dmarc-Check-Result: validskip
IronPort-SDR: LfYb/pw1dAk0qXmCeCkT44PbCCJlDNnMUlHENakyU5JC3TBR+7oUaQhgpdgMtbSgn9MbSusC87 ZOll8kO9Lqai9RdMhMieBGMfUkWh87U8A=
X-ORIGINAL-IP: 40.107.239.47
X-ORIGINAL-TIME: 08 Sep 2022 15:18:47 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:/PrUr6DTUw6AqQ7lHehNsceALOsnbusQ8zAXPh9KJCC9I/bzqy nxpp8mPEfP+VEssQIb6La90ci7MAfhHPFOkOws1NuZMjUO21HYW72Kj7GSpwEIcheWnoIz6U 4KSchD4ajLfDpHZLHBkWqF+rgboeWvweSNv6Pz3n1tRQZlZ+VL9AFiEDuWFUVwWU1vGYc5PI D03LsPmxOQPVAsKuirDHgMWObO4/fRkoj9XBIADxk7rCGTkDKT7qLgGRTw5GZXb9oP+8ZozY H2qX212kyRiYD29vYa7R6d031ioqqq9jKEPr3DtiFaEESstu/iXvUZZ1TLhkFMnAjo0iddrD CEmWZaA+1jr3zWZW27uh3rxk3p1ysv8WbrzRuCjWLkutGRfkNINyNtv/MpTvLi0TtRgPhslK ZQm26JvZteCh3N2Cz7+tjTThlv0k65u2Arn+Ifh2FWFdJ2Us4lkaUPuEdOVJsQFiPz744qVO FoEcHH/f5TNVeXdWrQsGVjyMGlGn4zAhCFSE4fvdH96UkloFlpi08DgMAPlHYJ85wwD5FC+u TfK6xt0KpDS8cHBJgNetvpgfHHdVAlbSi8TV56e26Xbp3vE0i916LK3A==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,299,1654540200";    d="scan'208,217";a="331996153"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none; b=PbOepHKx1zD723NFNFFgkUG239FaQTRIinjVxtb8/vj0PSDbPI/UbSZy1UFz4TDaU/am8o8o5nzKktKSbPlsINLRP6IevXXDFmXXSj0tY/nPRjtQJuXI2rDCczaFalSRInnVJ9sxNxEP09q2ijcIsOTXF63zMelYFxoYIurs+GIrr3OX4qoK+omISQMkk/0IRFgaTo7KUDozw6PUcoJPBbP2rzea2pHvc+MdHLGkRmr7OXTb5ZwN6MrdeefCKqLhmldfa5c/DK2s9Ogwcw5PlgC0R7diS2+AKNd0LLci/1LqMLOf3MyhJOjRXUZzPsLAfIB7Qude3j7q07TQh2WQnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1; bh=IhsYuh9l6IUYijYLg68WRGASwQA+oadjlaoV84A4nqU=; b=STw5ABkjfpPKh+uyYmQgZkCYV6knWc+f+LZTl337ZYo0gScXF1ujU5IgksS4hRFJRfRqCRINLS9O7zVYaMCwZ8Mn7qDtUub7h39C06L0UVNi26GOUQ5Ad9KcbNn2uMbYo8x0nhlxh7AAn8In3mTDYNApoy8m08CDWchzR2O5prJlT5ifYqVs7crxYcotjW8xwoAVJ898bjNTZRt73IBRaWsU6mt2jOIwbbTC3GrxFeplvdsWrVMR02vi0FsEVL+OcrvpMmyMLongbKaL/kG82CnHgxD3AK6PFmjTpIf18dXTElfLpfuNDmyB7184wGtmhiSWmntLzbQyY22Bl9733Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass smtp.mailfrom=sharp-oa.com; dmarc=pass action=none header.from=sharp-oa.com; dkim=pass header.d=sharp-oa.com; arc=none
Received: from sachinjha@sharp-oa.com([121.240.11.42]) 	by PME Mail With Id 1662628725638.19589;Thu, 8 Sep 2022 14:48:45 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h36tag1oo38p for <helpdesk@satragroup.in>; Thu, 8 Sep 2022 15:18:49 +0530 (envelope-from <sachinjha@sharp-oa.com>)
Received: (qmail 130254 invoked by uid 1012); 8 Sep 2022 09:48:49 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.8.22])          (envelope-sender <sachinjha@sharp-oa.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 8 Sep 2022 09:48:48 -0000
Received: from mail-bmxind01on2047.outbound.protection.outlook.com (HELO IND01-BMX-obe.outbound.protection.outlook.com) ([40.107.239.47])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2022 15:18:42 +0530
Received: from BMXPR01MB2550.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:33::12) by PN2PR01MB4172.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:14::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.15; Thu, 8 Sep 2022 09:48:41 +0000
Received: from BMXPR01MB2550.INDPRD01.PROD.OUTLOOK.COM ([fe80::a951:8b9a:4722:59a]) by BMXPR01MB2550.INDPRD01.PROD.OUTLOOK.COM ([fe80::a951:8b9a:4722:59a%5]) with mapi id 15.20.5588.018; Thu, 8 Sep 2022 09:48:41 +0000
Thread-Topic: REMINDER FOR DUE INVOICE PAYMENT OF SHARP
Thread-Index: AdjDaABtznATu5oNTH+ZLpHn7ZFROg==
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c309402-2b82-4ddb-50a8-08da917f4fc5
x-ms-traffictypediagnostic: PN2PR01MB4172:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hrWkxKqLtYf+0uwuLFy/lbXZ41Pr2KLaVlwmcPWko/y4VZIvpxAs+3h8I8NVi6Jaf+P/+cDKIi00JUsRnGjjdREeLvzjqjtLWjpE542OQ98fhhEX6yi4D1X2KymsbWX3gSqOE7xKXGEssN4B+Weq+hTxi9na8jobvrRCKys1wgdlaQrJ6e02D+cgOwGuwPMKSN3T0bymVnO3YFSXtzX0d4kBG9pBRt64ns6VhDlDZxClrBjgkLTLhoKlMb9eqr38O8FK9fsDXXNE7+xiMSnEinCh8JBnWsJSgStEZf6JEgiVA3l7q8IJLx6k9M5Ee2YGHdC4I+7kJeh9qULP9xW5LxaHHw6SGsQwEyMqFoG2rTRCGZCOOi8rkBFgGt5et1o35iRlgB4vN1tjG+eH9FxR45obb/OPk+SZs5hkjmkTzWAT624dUn6e4kQ1YGuKGYrrDtVjmX9npl4APCTE2fAtYBugWM8cWnQx0FR0qVU2UVJHFKEso0/wd7ZJiH5otqmgDULAqm080UXgVPRLY3HKcpyzP4F94KveRnd6cG7wLag3DFtograUKvI4ouFuPSOjd6kay0FQoqcO4Se11xUpE66VYYRm1WmCZ52fG5WKM1MhapYbJNpaEWXG+1Qs9usEK0UT3Wb9XSB+acGZ4FYjXNUPhhedGrBYpMpRw2b2WN64lsNRz3uBx3JW09NgVrfzKsuYKNgzsFjku5UBB40CUyJl6nuqWeoR2TT0hx0Ah0WR8DBdunBTwrJfTrMikQpJ7/SWyhzER0FxiMh+V9NfcA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BMXPR01MB2550.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(136003)(39850400004)(346002)(376002)(396003)(366004)(55016003)(86362001)(2906002)(4000750100001)(15650500001)(478600001)(38070700005)(41300700001)(83380400001)(316002)(186003)(66446008)(66476007)(66556008)(66946007)(64756008)(76116006)(6506007)(122000001)(7696005)(8676002)(38100700002)(6916009)(9686003)(71200400001)(26005)(8936002)(52536014)(33656002)(5660300002)(4744005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t4EJxYVhoCY9bVePwgYEBnzrkDIzBk3xFimRQYfQ1UOF2NuKGj9Hg5sqh2ay?= =?us-ascii?Q?y1wokIf3UxKoOBaa54m1wYQdUEzcEDHGWR8lR5bBU7KEQ/TABOSXSgp5N1nm?= =?us-ascii?Q?hQT7lsGqFCgX+Da4SCuiz+yzNWnrUYUkDBVIYu78hyh+aGiaqmscIgqegST1?= =?us-ascii?Q?aw/VTcO60mU2EZxU6QqYU4t+itm9LjMiBOyoaiLeSZTsWwSgi7oP+rfUoMml?= =?us-ascii?Q?4lKDFYLi9haxzTedXGe6DMPIIIgXEHlSw7QnjfDn8tzE/2pWXNodY2o+YD4Q?= =?us-ascii?Q?6a7BZ2hkz7/Ng+wmvzhI5PhRhqTpPnDqijdjybT+jcdDV8+yyxIZ2DEwGXd5?= =?us-ascii?Q?vNIJivgBxhmkLFgMnTeTAvZjVkHjOWZLByUo5Ih5mTWL00HUVr7rt3Dk19Zo?= =?us-ascii?Q?1YvFltbNYTu8BXZQasDoiwwntAN3hF9KVD5qQ0wXP9O68RB6M4qQxGyg0Z0p?= =?us-ascii?Q?An3n+0M2pw3rraoe704GkZXe6kwcJ3+HbVdd2ohUU6chTExj3z82YDoQkzLi?= =?us-ascii?Q?O46/bPdpUBxZYq4iBQGk/wk+i8p89ij8ci5PSwutf3/wu9RwOooFvhNFEMPI?= =?us-ascii?Q?DAn4gkWvQ68iILMN3T5IktUbhnQkrzt0I9D/l6aADnhHmstA7Big9LldpEUH?= =?us-ascii?Q?qMTy1s5tVunuYpRXhiAsfZoLtbbKd/0JEvTR0sp3O51RidEfC4TnVVqmVrng?= =?us-ascii?Q?vRno6jQYsIQESquDq2IkmqN4fkMyxkmOARcpKxVpT1R9uygaRFrVmDN3fnHO?= =?us-ascii?Q?QRKv3UgV6klyCugwjf/G+R0zt/fVZxkIFi/M9OvJH+v0EYyT3ti10ctwqrdM?= =?us-ascii?Q?IIGop+AnXSH/RGuTXuiwyAe9Nv0FNfkTTTWTO3FfFVHKMHXgAPwqxMh6+HWe?= =?us-ascii?Q?R52qcuLyikFdYu9L15q6t+oYlp8C/3vvllqcKMGaDe8xo5HZcQDregf8exmB?= =?us-ascii?Q?crLobp2VDAdl3ssB3c1ScEA9ulIE3Se0/bebnj0j4BHRHbmIYynzgTp5laAC?= =?us-ascii?Q?ZLTHR3c8xXsk9F8IwSm1bqFnrYb483KQKhlrEWVPMM7o58HqA0FqGtwCDG9r?= =?us-ascii?Q?EktDqh0jPUMj/UdVEaucZLD73S+6DIBCn5eVajbtZb8VUOQJJuHhx8BuRDyX?= =?us-ascii?Q?Tm2O15U5q32dGqhDwgiS9jCLgMEeTl6IB5/ZPVUGTM+wPV3zShTMjVrqVBMr?= =?us-ascii?Q?3aUOlwtTzdQpc30pLXaYeLbkFOY/7LDL0yuXPYiW+1mA/ZgmESbmbz0s59qU?= =?us-ascii?Q?NT9nmVCxzgZG3U1sal7NnxT5EDyNhjnjk+fxwQQJ3aDr2pFuc3VYymUF/Ev9?= =?us-ascii?Q?xkMkKJIDKqWLs2hMcAADMt0VSQcmZRAnjrEhM1xbut9GPhPCPPxY5B/F8eCe?= =?us-ascii?Q?YvhJ7Bd8sa+dQ5px8FrKn+HD2qsspVzoI7C0rc4W0xdIHfpCmNIgMo7yp9in?= =?us-ascii?Q?ZmZT15xI8SHL1DBLYN4LjooOoo8C3v73taaPpZk3rgTnamtpWZS1E3qiy/kD?= =?us-ascii?Q?siLCs128+8qF5DIHdC8I0y49D8P8y9sCcXlY5LqUnYfSGFr0cjUm25L231J9?= =?us-ascii?Q?It5A59sy+cyGmwxKjnVCE4KTGb/QdjTobg7SfyIx?=
MIME-Version: 1.0
X-OriginatorOrg: sharp-oa.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BMXPR01MB2550.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c309402-2b82-4ddb-50a8-08da917f4fc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2022 09:47:41.5188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7e5627c8-3ccd-43ec-86b1-53c41c151dda
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aw3PwQJxUQfxeItYinKyJCUQra5TQK0ZCPwkejLZt42hbGSnG2XnDHGQC/zwzcU6MzVUeZX6YbHmr+E7vAhr5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2PR01MB4172
Subject: REMINDER FOR DUE INVOICE PAYMENT OF SHARP
Date: Thu, 8 Sep 2022 09:47:41 +0000
Message-ID: <BMXPR01MB25503D282D9BA6B3018A5ABB93409@BMXPR01MB2550.INDPRD01.PROD.OUTLOOK.COM>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: Sachin Kumar Jha - Delhi <sachinjha@sharp-oa.com>
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <sachinjha@sharp-oa.com>
content-type: multipart/alternative; boundary=_000_BMXPR01MB25503D282D9BA6B3018A5ABB93409BMXPR01MB2550INDP_
content-language: en-US
X-PMAttribute: 1662628725638.19589; mb_id=QSM1413892035136; imapid=30880; del_to=helpdesk

--_000_BMXPR01MB25503D282D9BA6B3018A5ABB93409BMXPR01MB2550INDP_
content-type: text/plain; charset=us-ascii
content-transfer-encoding: quoted-printable

Dear Customer

Narendra Dharmender ,

SATRA INFRASTRUCTURE MANAGEMENT SERVICES PVT LTD , SHIMLA

Subject: Overdue invoice payment of M Sr no: 93002905



Greetings from SHARP.!!



We wish to express our sincere thanks to you for choosing our services and =
products.



Take note that today 08-September-2022 at the time of scrutiny found our CS=
A / Rental Invoice no: N01I/T2223/5692, Dated: 06-Aug-22, Invoice Amount Rs=
. 2314.00 , is not paid & stand in overdue catogery

Requesting you, please take necessary action for payment process & release =
payment on or before 15th September 2022. Take this mail as urgent.

Kindly acknowledge the mail & share payment advice with us.
Thanks
Sachin Kumar
#9717063829

--_000_BMXPR01MB25503D282D9BA6B3018A5ABB93409BMXPR01MB2550INDP_
content-type: text/html; charset=us-ascii
content-transfer-encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Arial Nova";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.xmsonormal, li.xmsonormal, div.xmsonormal
	{mso-style-name:x_msonormal;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.xwordsection1, li.xwordsection1, div.xwordsection1
	{mso-style-name:x_wordsection1;
	margin:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}
/* Page Definitions */
@page
	{mso-endnote-separator:url("cid:header.htm\@01D8C396.1A2BF9F0") es;
	mso-endnote-continuation-separator:url("cid:header.htm\@01D8C396.1A2BF9F0"=
) ecs;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" style=3D"word-wrap:break-word">
<div class=3D"WordSection1">
<p class=3D"xmsonormal" style=3D"margin-bottom:0in;line-height:normal"><b><=
span style=3D"font-size:12.0pt;font-family:&quot;Arial Nova&quot;,sans-seri=
f">Dear Customer<o:p></o:p></span></b></p>
<p class=3D"xmsonormal" style=3D"margin-bottom:0in;line-height:normal"><b><=
span style=3D"font-size:12.0pt;font-family:&quot;Arial Nova&quot;,sans-seri=
f">Narendra Dharmender</span></b><b><span style=3D"font-size:12.0pt;font-fa=
mily:&quot;Arial Nova&quot;,sans-serif"> ,<o:p></o:p></span></b></p>
<p class=3D"xmsonormal" style=3D"margin-bottom:0in;line-height:normal"><b><=
span style=3D"font-size:12.0pt;font-family:&quot;Arial Nova&quot;,sans-seri=
f">SATRA INFRASTRUCTURE MANAGEMENT SERVICES PVT LTD</span></b><b><span styl=
e=3D"font-size:12.0pt;font-family:&quot;Arial Nova&quot;,sans-serif">
 , SHIMLA<o:p></o:p></span></b></p>
<p class=3D"xmsonormal" style=3D"margin-bottom:0in;line-height:normal"><b><=
span style=3D"font-size:12.0pt;font-family:&quot;Arial Nova&quot;,sans-seri=
f;background:yellow;mso-highlight:yellow">Subject: Overdue invoice payment =
of M Sr no: 93002905</span></b><span style=3D"font-size:12.0pt;font-family:=
&quot;Arial Nova&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"xmsonormal" style=3D"margin-bottom:0in;line-height:normal"><spa=
n style=3D"font-size:12.0pt;font-family:&quot;Arial Nova&quot;,sans-serif">=
&nbsp;<o:p></o:p></span></p>
<p class=3D"xmsonormal" style=3D"margin-bottom:0in;line-height:normal"><spa=
n style=3D"font-size:12.0pt;font-family:&quot;Arial Nova&quot;,sans-serif">=
Greetings from SHARP.!!<o:p></o:p></span></p>
<p class=3D"xmsonormal" style=3D"margin-bottom:0in;line-height:normal"><spa=
n style=3D"font-size:12.0pt;font-family:&quot;Arial Nova&quot;,sans-serif">=
&nbsp;<o:p></o:p></span></p>
<p class=3D"xwordsection1"><a name=3D"x__Hlk98335382"><span lang=3D"EN-IN" =
style=3D"font-family:&quot;Arial Nova&quot;,sans-serif">We wish to express =
our sincere thanks to you for choosing our services and products.</span></a=
><span style=3D"mso-bookmark:x__Hlk98335382"></span><span style=3D"font-fam=
ily:&quot;Arial Nova&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;line=
-height:115%;font-family:&quot;Arial Nova&quot;,sans-serif">&nbsp;</span><s=
pan style=3D"font-size:12.0pt;line-height:115%;font-family:&quot;Arial Nova=
&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"xmsonormal"><span style=3D"font-size:12.0pt;line-height:115%;fo=
nt-family:&quot;Arial Nova&quot;,sans-serif">Take note that today 08-Septem=
ber-2022 at the time of scrutiny found our CSA / Rental
<b>Invoice no: N01I/T2223/5692</b>, Dated:<b> 06-Aug-22</b>, Invoice Amount=
 Rs. <b>
2314.00</b> , is not paid &amp; stand in overdue catogery<o:p></o:p></span>=
</p>
<p class=3D"xmsonormal"><span lang=3D"EN-IN" style=3D"font-size:12.0pt;line=
-height:115%;font-family:&quot;Arial Nova&quot;,sans-serif">Requesting you,=
 please take necessary action for payment process &amp; release payment on =
or before 15th September 2022. Take this mail as urgent.<a name=3D"x__Hlk98=
336831">
</a><o:p></o:p></span></p>
<p class=3D"xmsonormal" style=3D"text-align:justify"><span lang=3D"EN-IN" s=
tyle=3D"font-size:12.0pt;line-height:115%;font-family:&quot;Arial Nova&quot=
;,sans-serif">Kindly acknowledge the mail &amp; share payment advice with u=
s.</span><span style=3D"font-size:12.0pt;line-height:115%"><o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;text-align:justify"><b><s=
pan style=3D"font-size:12.0pt;line-height:115%">Thanks<o:p></o:p></span></b=
></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;text-align:justify"><b><s=
pan style=3D"font-size:12.0pt;line-height:115%">Sachin Kumar<o:p></o:p></sp=
an></b></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:0in;text-align:justify"><b><s=
pan style=3D"font-size:12.0pt;line-height:115%">#9717063829</span></b><o:p>=
</o:p></p>
</div>
</body>
</html>

--_000_BMXPR01MB25503D282D9BA6B3018A5ABB93409BMXPR01MB2550INDP_--
