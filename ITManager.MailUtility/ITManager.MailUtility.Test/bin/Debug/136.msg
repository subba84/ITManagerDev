X-Qmail-Scanner-Diagnostics: from 192.168.9.81 by vdvm34.logix.local (envelope-from <sirishag@wavity.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.81):SA:0(IronPort):.  Processed in 0.054708 secs); 19 Sep 2022 05:52:55 -0000
Received-SPF: Pass (tblr2.logix.in: domain of sirishag@wavity.com  designates 40.107.236.40 as permitted sender)  identity=mailfrom; client-ip=40.107.236.40;  receiver=tblr2.logix.in; envelope-from="sirishag@wavity.com";  x-sender="sirishag@wavity.com"; x-conformance=spf_only;  x-record-type="v=spf1"; x-record-text="v=spf1  ip4:40.92.0.0/15 ip4:40.107.0.0/16 ip4:52.100.0.0/14  ip4:104.47.0.0/17 ip6:2a01:111:f400::/48  ip6:2a01:111:f403::/49 ip6:2a01:111:f403:8000::/50  ip6:2a01:111:f403:c000::/51 ip6:2a01:111:f403:f000::/52  include:spfd.protection.outlook.com -all"
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=sirishag@wavity.com; dkim=pass (signature verified) header.i=@wavity.com; dmarc=pass (p=quarantine dis=none) d=wavity.com
IronPort-SDR: Lkv+Db5MxoFYTQ2jRaed1d0XVXFS30sO8SsEeF297Mv+gg00wpuR/xUJ6fWaYK4T2trnIzacTf x1DXP28Pk7sQRsRa+6k0yB8dwlMwfiI8Z0M97VXsRim2qfZtDD3ovKE4Nwn5QGkllbVOo8YxVn TXHB4YYo63JgWFyEz9AJMyaFd3sLNccqJYx7Mr7G6u75SNUgqw5AnrWv0AOu2DivMqy+sGyh9P 2WkrYnr+MExHaGhOcOyrE7XWjzDoXbCeOClHBI8zGhBsSxZDueFRqM8csM3ztrIPl8xkBEMh5H o2MotQyPqzfgIrm3fjuZAimU
X-ORIGINAL-IP: 40.107.236.40
X-ORIGINAL-TIME: 19 Sep 2022 11:22:53 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23: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 XlhcDI64a8dgIsLbg==
IronPort-HdrOrdr: A9a23:Dv4pR6FTHEL5auROpLqFD5HXdLJyesId70hD6qkvc3Fom52j/f xGws5x6fatskd2ZJhSo6H4BEDgewKqyXcR2+Us1NiZLW3bUQeTTb2KjrGStQEIeReOkdK1vJ 0IG8cRNDSaNykYsS+O2njcLz9W+qjkzEnHv4fj5kYoaTsvR7Br7g9/BAreOFZxXhN6CZ0wE4 fZztZbphK7EE5nJviTNz0gZazuttfLnJXpbVotHBg88jSDijuu9frTDwWY5BEDSDlCqI1Sul Qt0jaJrJlLgcvLhiM05FWjoKi+X+GRhOerMfb8x/T97A+cyzpAKr4RG4Fq9wpF2N1HoGxa6+ Uk5S1QdvibokmhBF2dsF/j3RLt3y0p7GKnwViEgWH7qci8Xz4iDdFd7LgpACcxxnBQzO2U6p g7rF6xpt5SF1fNjS7979/HW1VjkVe1u2MrlaoWg2ZEWYUTZbdNpchHlXklZKsoDWb/8sQqAe NuBMbT6LJfdk6bdWnQui1qzMa3Vno+Ex+aSgwJu9CT0TJRgHdlpnFosfA3jzMF7tYwWpNE7+ PLPuBhk6xPVNYfaeZnCOIIUaKMex3wqNL3QRyvyHjcZd460ij22uPKCZ0OlZ2XRKA=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,327,1654540200";    d="png'150?scan'150,208,217,150";a="88615283"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none; b=AjgoiZQhsyJZirZCN/3c/OVx4hBG/jVFfJue3fJZbiVeSz6yU+SivBjuFmJh52LuWv34cW3qdkNZtS0k+u3IRc/8vKADs1TpEn5bL9jM56W+HPpOVXMP5Yz6b9qqHxuY6w1/SHwNlHS35wshJrDRXZm1CWNzvYw9y0bgpTbgehlUSvFlp17zTnj3kezY1sxpVcNZJfSBaGrRfJewTMXt4Pwmb2Mi2Vg95OdLQYOYOF5rHWPAZnQ7D9yFfwl4RYG05n7aoBrV0XHZ0IpHm0XbNW88M8MrcsP58w5m1Ld32hxZSl8hw96J/R+3OnqWVVpnygFJT7eu33vrqcbBQ6tmtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1; bh=jhO88akgivfFuzxIpTFGWgYDRtosz/kUjvAoYnoOaqk=; b=dZMxgn8ufn7HDTkkmU48If+zrJ1CDmlRUqm40v4M5kmy2KSjIJy9CIoZ/HVMbD3qBRaKFfGd4VJZ19vduVgGblxt3bkioKRciXNskM3Lqql7SrPggP5lVaagiuMMKZsX6QPdrWWg+XlTsL9149lRy4SdbQddOj8RdjrXqydPCzpLCgvQox/3XMUJRB1tOKxz9CM478vWFWlJ10f9IFF12vKIWnsLFPR1Rdm5h4SZw5hS6GNB9iApWdWvyS2tVVcBIx5VYMP/lq1cdsGqN1VTouwONm7qfVyaNK1gkmC12ka+lJXOrOsZ1xQFdk4k/lyf62V29+EuUeQDselitGKhYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass smtp.mailfrom=wavity.com; dmarc=pass action=none header.from=wavity.com; dkim=pass header.d=wavity.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavity.com; s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck; bh=jhO88akgivfFuzxIpTFGWgYDRtosz/kUjvAoYnoOaqk=; b=OO8XQhyK5YKUgCcbYUIkzUhFzjNu6D6LoFyz+JHdngK06O0+ZDrpky8g79uVQRG7TRdbELL6qQC7fak3Huq1KQ7rSTNc/SAb9D51ThMyxurT6VZxUWkWPzQMELBle/QvA1GKnUUg5EjXuzj20ZQxXKdS8UmGtc2V5G9JiTHY7ts=
Received: from sirishag@wavity.com([192.168.1.1]) 	by PME Mail With Id 1663566783901.17258;Mon, 19 Sep 2022 11:23:03 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h501rm1oo38i for <helpdesk@satragroup.in>; Mon, 19 Sep 2022 11:22:55 +0530 (envelope-from <sirishag@wavity.com>)
Received: (qmail 218496 invoked by uid 1012); 19 Sep 2022 05:52:55 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.81])          (envelope-sender <sirishag@wavity.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 19 Sep 2022 05:52:55 -0000
Received: from mail-bn8nam11on2040.outbound.protection.outlook.com (HELO NAM11-BN8-obe.outbound.protection.outlook.com) ([40.107.236.40])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 11:22:51 +0530
Received: from BY5PR17MB3844.namprd17.prod.outlook.com (2603:10b6:a03:230::14) by MW4PR17MB5115.namprd17.prod.outlook.com (2603:10b6:303:11e::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.15; Mon, 19 Sep 2022 05:52:47 +0000
Received: from BY5PR17MB3844.namprd17.prod.outlook.com ([fe80::7d4e:deba:b673:6687]) by BY5PR17MB3844.namprd17.prod.outlook.com ([fe80::7d4e:deba:b673:6687%5]) with mapi id 15.20.5632.021; Mon, 19 Sep 2022 05:52:47 +0000
Thread-Topic: Register for free webinar on IT Ticketing/Service Management- Wavity
Thread-Index: AdjL6Sn7U7SEe5zBR8mn0DDmckC4ug==
Accept-Language: en-GB, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR17MB3844:EE_|MW4PR17MB5115:EE_
x-ms-office365-filtering-correlation-id: e9290365-8371-429b-79c0-08da9a032e32
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SAf3UP6lZLIFDutFOTKwaXZfM7o7Mgmji5Ro3zaFQJ117knB/DIz8EB05K7f/qqKUEmhR4c4mou5JpB6WCvvYmX2a/k1K06i8KaKEpc4Lj+K+bGC0c4JorFOLJ51BJDS6tk1kCWyEndWiRTYQUY44R060RcDRSMIF4y1lImZt7S1lZ9ioyFgxARzb05mGX9cPHyGuF3cePzN0SkHMbbZdfKeFUrOS4BTxmzpSwLk0nmAP+di75BuWikgWz6uymlELdjyHsnaAmr9ZbJn6xbEjnrChGwHLlB/7iSCJ47sYRBSnSLBjCzdSHfzey5PefrbVeKwuG44LG7xBzixhOQIQoAUxPu30kBzk5IW3kxWUt0VPZtiCIHg/rTlX1Padq23qaqkBmLoaMTfIo8mukd0sJTcGZXniw36YHvlUPE34rxI9PbQx4NkgSQB2J8iRggmPZMVjYl0SKIhSBdvzd7wUE0Gx9BmYhPJ/P4dIbp/1BbkCSiLGsOZuJkN0elGXAWRqEgn2fEkSD9RlVdUIWs2y1VaL+CiVkzvZQbjwQiCD5EqPYoiRSIW7rMSpwoLCovfIH+2wnJYEHjozbjBiFPzZsJFeJpj8Zz/W5U4tlzRPc3uNkkV1z7svC8fY4St78hQGQtD6amr1Hrmh7SSGwWItvDfz5BhIGaYxzmJBGyUvXQsYmxPl/zBUXSnD6dm+4L52pthJzTpGKg9dbZ9LPGsaLHI3MSNLfxjaBKpTQ1N6lFJQGWy7MvK1ejXd3bsJXneh6dLUlxYf6DgcmRVXdvudwno3QmutKKNDwri0igUnts9emgUPdzokIXpCClymxeM8nG5B/zvSYTe09ii1yKQaUBWzs4g5jxRtClHFhOvEUu+VCP3Qyylo55b4iPchGIi
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR17MB3844.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(39850400004)(346002)(376002)(366004)(136003)(451199015)(86362001)(64756008)(186003)(83380400001)(38100700002)(38070700005)(122000001)(99936003)(5660300002)(166002)(66446008)(9326002)(52536014)(6506007)(2906002)(966005)(316002)(6916009)(8936002)(8676002)(41300700001)(66556008)(66946007)(66476007)(55016003)(9686003)(7696005)(76116006)(478600001)(71200400001)(33656002)(4533004)(493534005)(130860200001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?duhObB9Bs64mi8rulchGNglcH1qxa324btBYAt6hztXWAqJpy1A9FWtX5K4L?= =?us-ascii?Q?NzEoWU0egIb74DnNXR7BDba1yG1kb7Wf0H2LIaYpzBZNrSCT2ZyEDRdKuDhl?= =?us-ascii?Q?btIxQWZDEbrujWZoe/1Hv1KsRikH4+PV++IIbE6vRfqIsK+kJsVofxAbTe9B?= =?us-ascii?Q?ZXooVILGYhzG8OeJLKeFjCb/O2UvDoPw9MRSzfsIN6Z5OfpFFzh2+BP8b7n1?= =?us-ascii?Q?lEsox6pjSs/6iiGg7cgdTaY4jIh8xbX7FIaZ6rvR8nZ6RMkW2axNIMBcPiKo?= =?us-ascii?Q?QZqiv8kgCtNmSszjfWtOVwC8GW9hzrNq8/mGc++miayqgIBtaTv9erCxEK33?= =?us-ascii?Q?EhZBhW0YH1hTMJbO1Vtm6SD2SlkSpNbIzVhkFAclan8mdsxTkOc7npq4riVL?= =?us-ascii?Q?yT3D3dMhuO19uXQEPnWAdQZLqDmDfYgvT7tuxg9j7pDYdIdGHqRECQxXGNnk?= =?us-ascii?Q?U7CQQj4Ms8xqdSjvga9eEgdSMkJ0fIVE2Ngcm5PiTUHMOX7LypxTzLb0B0p7?= =?us-ascii?Q?W49BHlm167sY12aaPJdvNPv05Qx92/WVB6HVukRlWM0kJsfFgFJBNLTnVlZu?= =?us-ascii?Q?WDbJoVFqfN6qjcKUNeVNpp9iWURCYWrqI2Y5k6rdHWA4+Fus/iBnosL5iWPg?= =?us-ascii?Q?OLuELyHr+AbmIhQXtkv9RH6XAmnrUdeZBURjkiCD6LnMKqvTqjAcVrAhhWNC?= =?us-ascii?Q?KNAxsPYGVPdA+7gTN5ISbIvTueAp+rX55ciKzmAiZoOrWhx9MhAU+nYbWYKt?= =?us-ascii?Q?NYM5qW7bIvai8Q2DyBQzUgelDYd2+S2BhTDF8w21c6dDbVJzpvbV26p9dhgE?= =?us-ascii?Q?7j+WGzEkriEDSCA451evFE/s8fWvPskkaBv0nOL7wzH4086vNpRXoN+6fAWS?= =?us-ascii?Q?HX9j6LSp0eziQPeuTZhwun4Oos3W9S/xyIfjo0NpnkXzzvTJJGe5ED4my8EB?= =?us-ascii?Q?8algzGEsualFWOJbe+ZMeB5nt7274WKBKGDqSfOlkIYj8m388I55qtEUYmvh?= =?us-ascii?Q?nkCWtNO0fkmTOGPa0lt0WifSRgnhBTKOVkJS3Eyv0ui1+kLRpR8o6NTkXWWV?= =?us-ascii?Q?5IwZ4I1nxw5DPjUuirVf8rDu0psC6GZoPBGFn9S+NCxXKVXQ2vn620dIHvC4?= =?us-ascii?Q?KegS99cyqET4JfwYf2/Xf0Q2+uLslJ5sEPEkCTwtqfGfEh1RQ7u4OtwuCqjB?= =?us-ascii?Q?BLPGmL5EURKh8U8bUMpVS7K/OWUWGCvHus1QvWdzGTEbOqaBxdh+gJT/hHjY?= =?us-ascii?Q?6v5h4obqUfj2i6vzBgoMkQjyK/HKcwtaoE8n8g2QPwCmgLYe9VjCukPmdxRK?= =?us-ascii?Q?o2DpUWc2fyGElJBSjVP2D+AsFg9i4ABcPRj+HzSqUvpIMnIBt+w6R6nu2GWo?= =?us-ascii?Q?4OrtJG19x6X23soGowJ7HLMfwaKluo4QkMlgeltMWuxJ+QSsXXqFm5t0y/zJ?= =?us-ascii?Q?nFcPJwbofsjg3daZRNSa5WqueaeypSjKZ3mR8fUohAX09+nsEpWy2BbYPeL9?= =?us-ascii?Q?La6Z0lros375xfP7zreya5YrOEr7JqI4dbpabgaXf4WqjvmRqo+PuQaNx1u+?= =?us-ascii?Q?zZHraI5chIBRgMdJKHp7SUle7F1wtwyHgYjsUMcndJ92xRlOZdk2aA9KY5Kg?= =?us-ascii?Q?y6EYeRyLBOG86T+T+mwDVSDEP43Giqi2HbM8mGIr4FQv?=
MIME-Version: 1.0
X-OriginatorOrg: wavity.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR17MB3844.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9290365-8371-429b-79c0-08da9a032e32
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 05:52:47.6360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fb2edfdd-889d-40f9-b5d8-10de0f59c482
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TRLTbRD2VmE7snic6VrAqiz4CWZBM4dSHtY37bjubVTm8oif3n1fqrts3JeCtxP61IouWqe9OB4aSTXCMz7THw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR17MB5115
Subject: Register for free webinar on IT Ticketing/Service Management- Wavity
Date: Mon, 19 Sep 2022 05:52:47 +0000
Message-ID: <BY5PR17MB384464D8B287A6E5CD2ED112AD4D9@BY5PR17MB3844.namprd17.prod.outlook.com>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: Sirisha Guguloth <sirishag@wavity.com>
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <sirishag@wavity.com>
content-type: multipart/related; type="multipart/alternative"; boundary=_004_BY5PR17MB384464D8B287A6E5CD2ED112AD4D9BY5PR17MB3844namp_
content-language: en-US
X-PMAttribute: 1663566783901.17258; mb_id=QSM1413892035136; imapid=30991; del_to=helpdesk

--_004_BY5PR17MB384464D8B287A6E5CD2ED112AD4D9BY5PR17MB3844namp_
content-type: multipart/alternative; boundary=_000_BY5PR17MB384464D8B287A6E5CD2ED112AD4D9BY5PR17MB3844namp_

--_000_BY5PR17MB384464D8B287A6E5CD2ED112AD4D9BY5PR17MB3844namp_
content-type: text/plain; charset=us-ascii
content-transfer-encoding: quoted-printable

Hello G.Rajshekar,



Greetings from Wavity!!!



Wavity<https://secure-web.cisco.com/126FJWqSd2DL3Y5kiwRuAy4Acn79cHlKFRvzVWu=
U7z2HeYVASQkYN7oOhxPXjqmTTeF1kBhYvuC9_3Bqb-TPMkTAJhm5wI5QQVyAaPPirwzebKigCI=
4Ch-hULPryGIgb6dvIqAF_ZcKg82LUsat_tm6jzYjRLzGni4lw6BPAyMdFrIJsNgci4vN00wkrG=
leJh8wU19h2mBJE0ulCeACcsWAGoDqDzX7bEmVQkxXTpctdwQq6-6wJMWK_TFUG6ggOxAJLKo9Y=
rrCnD-t7WXSRRXMSLEjlGJ6yk09u2pMX66FbrT1Wes_tUQ2H7FfDLJS2abKRkDJjKVRUVrYWMIj=
-uzHhae4u8rsQ3a-bVvFayx5Ijg1CBzcdy0hkHmwLWB4OmIP-249XwTUr4MWUaZxdGVddaPSHfU=
Sdbe7X82tLyyrAP4Lk4Dk_cslo0yXwW-UiSyr9Tu6YOdLkl9uLXWYdF9A/https%3A%2F%2Fwww=
.wavity.com%2Fuse-cases%2Fmobile-workforce%2F> provides ready-to-use SaaS a=
pplications with a difference. Our applications are easily modified by non-=
technical resources with zero coding to support your business processes.



In today's digital world, a well-run IT department is a necessity, not a lu=
xury, ITSM practices ultimately help the business function at its best by c=
reating a more efficient, productive IT Department that delivers better-fit=
ting services.



With Wavity's IT Ticketing/Service Management Solution you can do a lot inc=
luding:

>  Intelligent Ticket Assignment

>  Combining Tickets

>  Multichannel Support

>  Mobile App to manage complete Helpdesk

>  Customized Dashboards and Reports using Inbuilt Analytics



Webinar Date: 22nd, September 2022



Webinar Time: 12:00 PM- IST



Register for free: https://bit.ly/3ca35bt



Join Zoom Meeting

https://us02web.zoom.us/j/86320733255?pwd=3DcEtUbWt5SXVZTVc0ZHd1ckI1dkVNQT09



Meeting ID: 863 2073 3255

Passcode: 587532



Kindly let me know if you have any queries, I would be happy to help.



Regards,

Sirisha- Business Development Executive

Hand Phone: 6303180381

Email: sirishag@wavity.com<mailto:rajeevc@wavity.com>



[cid:image001.png@01D8CC17.43E20670]

Re-thinking SaaS Applications

Wavity Inc.

http://secure-web.cisco.com/1D1JBAyJ-Ztc3EnKuwFhivV4kSRNZiCvasb47rKPr09PFcA=
p0zBaVkH2oD5l5mrGbDyEutyFLvyASW_NSbX8LO9p5-T0TuBGxuYKYRZst2IJMCXEkO-AhQ2VNU=
NUlym5XOChuI8QQdY4xgxFT-GHIfKr5oSPJRmQhaJR9mScf3AptMVA3qKaDZ4NunNdCZMb2f-iT=
VoKChHSKSS3qM9iqv4IcR5NZPZch4gx_rrWH9SP1PXmNQEpXSWgOx02lbV2ZX-EpXmAt6Y70ikE=
2j8WH2xVLHSYnLncj67rgJbreRC_fXzIhT-sNyPGBZNBELclC3kDMAhgJTKGVjlId7Yg1qtWIQ6=
03qFZl7_LdGBK8fH_re_I4rvg7Qte7HyYxPW59zkwxUQ7fr6901_Im6QDct_PtAMzRo4VCg8NoT=
_B4QTeEewEi9c9ty5E9XYBjUJW-iRo8GJixnPKzrmWmXJWf_A/http%3A%2F%2Fwww.wavity.c=
om<http://secure-web.cisco.com/1JUjhgLGq3lTCNemlAqAXzjYLDOkjN3Z0B3jA7pXT3uV=
uHQZO3bq6u-d19qHCR_ymZa1tVVeoBr9zRWWLGERalJxoNO4vqwNHKoSyQpSaH8am-6xAxVBpGF=
CGXQ96oh9FFZEEfFRlWPrwS7b5-iQMHGxuUkn7skbwHsXiLF0tMXQj1xtDAVm42umu70-q-PUSS=
kU1we-B7uVRRBqShNuCxrCokf-mHimix4G9DP60HKUgreG1I0tijouFUloFbvynSaLvwx8CB9IH=
r8nuadKuzZHsOfIfXRU6FhnLAQHV8hYvXwRoM73ysZb9hW15_Ohi9bCstLiGYg6gWP01FIq0MfH=
2_ml_hwtmzv3YIVW08qZToGxri0hKN9i29f6NtVZg06HhqCDsfzogk5_cI0EM2MfEAvt7Bfw2p4=
JuZEM4TupDDYcONkAM8K3YU3TxAoq27yUjS8KIrhAuCSyRmQTL8w/http%3A%2F%2Fwww.wavit=
y.com%2F>



CONFIDENTIALITY NOTICE: This email was sent to you by Wavity. To remove you=
rself from future mailings of this nature, simply reply to this email with =
Unsubscribe in the subject line.




--_000_BY5PR17MB384464D8B287A6E5CD2ED112AD4D9BY5PR17MB3844namp_
content-type: text/html; charset=us-ascii
content-transfer-encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:inherit;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
p.xxxxxmsonormal, li.xxxxxmsonormal, div.xxxxxmsonormal
	{mso-style-name:x_xxxxmsonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.xxxxmsonormal, li.xxxxmsonormal, div.xxxxmsonormal
	{mso-style-name:x_xxxmsonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.xxmsonormal, li.xxmsonormal, div.xxmsonormal
	{mso-style-name:x_xmsonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.xxxmsonormal, li.xxxmsonormal, div.xxxmsonormal
	{mso-style-name:x_xxmsonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.xmsonormal, li.xmsonormal, div.xmsonormal
	{mso-style-name:x_msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"xxxxxmsonormal" style=3D"margin:0in;background:white"><span sty=
le=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;color:black;bo=
rder:none windowtext 1.0pt;padding:0in">Hello&nbsp;</span><span style=3D"co=
lor:black;border:none windowtext 1.0pt;padding:0in">G.Rajshekar</span><span=
 style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;color:blac=
k;border:none windowtext 1.0pt;padding:0in">,</span><span style=3D"color:#2=
01F1E"><o:p></o:p></span></p>
<p class=3D"xxxxxmsonormal" style=3D"margin:0in;background:white;font-varia=
nt-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;=
widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial=
;text-decoration-style: initial;text-decoration-color: initial;background-i=
mage:initial;background-position:initial;background-size: initial;backgroun=
d-repeat:initial;background-attachment:initial;background-origin: initial;b=
ackground-clip: initial;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#201F1E;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span =
style=3D"color:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;text-align:justify;background:white;font-variant-lig=
atures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-=
stroke-width: 0px;text-decoration-thickness: initial;text-decoration-style:=
 initial;text-decoration-color: initial;background-image:initial;background=
-position:initial;background-size: initial;background-repeat:initial;backgr=
ound-attachment:initial;background-origin: initial;background-clip: initial=
;word-spacing:0px">
<b><span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;co=
lor:black;border:none windowtext 1.0pt;padding:0in">Greetings from Wavity!!=
!</span></b><span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot=
;,sans-serif;color:#201F1E;border:none windowtext 1.0pt;padding:0in">&nbsp;=
</span><span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,san=
s-serif;color:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;text-align:justify;background:white;font-variant-lig=
atures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-=
stroke-width: 0px;text-decoration-thickness: initial;text-decoration-style:=
 initial;text-decoration-color: initial;background-image:initial;background=
-position:initial;background-size: initial;background-repeat:initial;backgr=
ound-attachment:initial;background-origin: initial;background-clip: initial=
;word-spacing:0px">
<b><span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;co=
lor:black;border:none windowtext 1.0pt;padding:0in">&nbsp;</span></b><span =
style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;color=
:#201F1E;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span style=
=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:#201=
F1E"><o:p></o:p></span></p>
<p class=3D"xxxxmsonormal" style=3D"margin:0in;background:white;font-varian=
t-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;w=
idows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;=
text-decoration-style: initial;text-decoration-color: initial;background-im=
age:initial;background-position:initial;background-size: initial;background=
-repeat:initial;background-attachment:initial;background-origin: initial;ba=
ckground-clip: initial;word-spacing:0px">
<span style=3D"color:black;border:none windowtext 1.0pt;padding:0in"><a hre=
f=3D"https://secure-web.cisco.com/126FJWqSd2DL3Y5kiwRuAy4Acn79cHlKFRvzVWuU7=
z2HeYVASQkYN7oOhxPXjqmTTeF1kBhYvuC9_3Bqb-TPMkTAJhm5wI5QQVyAaPPirwzebKigCI4C=
h-hULPryGIgb6dvIqAF_ZcKg82LUsat_tm6jzYjRLzGni4lw6BPAyMdFrIJsNgci4vN00wkrGle=
Jh8wU19h2mBJE0ulCeACcsWAGoDqDzX7bEmVQkxXTpctdwQq6-6wJMWK_TFUG6ggOxAJLKo9Yrr=
CnD-t7WXSRRXMSLEjlGJ6yk09u2pMX66FbrT1Wes_tUQ2H7FfDLJS2abKRkDJjKVRUVrYWMIj-u=
zHhae4u8rsQ3a-bVvFayx5Ijg1CBzcdy0hkHmwLWB4OmIP-249XwTUr4MWUaZxdGVddaPSHfUSd=
be7X82tLyyrAP4Lk4Dk_cslo0yXwW-UiSyr9Tu6YOdLkl9uLXWYdF9A/https%3A%2F%2Fwww.w=
avity.com%2Fuse-cases%2Fmobile-workforce%2F" target=3D"_blank"><b><span sty=
le=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif">Wavity</span>=
</b></a></span><b><span style=3D"font-size:11.0pt;font-family:&quot;inherit=
&quot;,serif;color:black;border:none windowtext 1.0pt;padding:0in">&nbsp;</=
span></b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#201F1E;border:none windowtext 1.0pt;padding:0in">provides
 ready-to-use SaaS applications with a difference. Our applications are eas=
ily modified by non-technical resources with zero coding to support your bu=
siness processes.</span><span style=3D"color:#201F1E"><o:p></o:p></span></p>
<p class=3D"xxmsonormal" style=3D"margin:0in;background:white;font-variant-=
ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;wid=
ows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;te=
xt-decoration-style: initial;text-decoration-color: initial;background-imag=
e:initial;background-position:initial;background-size: initial;background-r=
epeat:initial;background-attachment:initial;background-origin: initial;back=
ground-clip: initial;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#201F1E;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span =
style=3D"color:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;text-align:justify;background:white;font-variant-lig=
atures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-=
stroke-width: 0px;text-decoration-thickness: initial;text-decoration-style:=
 initial;text-decoration-color: initial;background-image:initial;background=
-position:initial;background-size: initial;background-repeat:initial;backgr=
ound-attachment:initial;background-origin: initial;background-clip: initial=
;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;color=
:black;border:none windowtext 1.0pt;padding:0in">In today's digital world, =
a well-run IT department is a necessity, not a luxury, ITSM practices ultim=
ately help the business function at its best
 by creating a more efficient, productive IT Department that delivers bette=
r-fitting services.&nbsp;</span><span style=3D"font-size:11.5pt;font-family=
:&quot;Segoe UI&quot;,sans-serif;color:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;text-align:justify;background:white;font-variant-lig=
atures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-=
stroke-width: 0px;text-decoration-thickness: initial;text-decoration-style:=
 initial;text-decoration-color: initial;background-image:initial;background=
-position:initial;background-size: initial;background-repeat:initial;backgr=
ound-attachment:initial;background-origin: initial;background-clip: initial=
;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;color=
:black;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span style=
=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:#201=
F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;text-align:justify;background:white;font-variant-lig=
atures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-=
stroke-width: 0px;text-decoration-thickness: initial;text-decoration-style:=
 initial;text-decoration-color: initial;background-image:initial;background=
-position:initial;background-size: initial;background-repeat:initial;backgr=
ound-attachment:initial;background-origin: initial;background-clip: initial=
;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;color=
:black;border:none windowtext 1.0pt;padding:0in">With&nbsp;<b>Wavity's IT T=
icketing/Service Management</b>&nbsp;Solution you can do a lot including:</=
span><span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-=
serif;color:#201F1E"><o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;text-indent:-.25in;background:white;font-variant-ligatures: nor=
mal;font-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit=
-text-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-=
style: initial;text-decoration-color: initial;background-image:initial;back=
ground-position:initial;background-size: initial;background-repeat:initial;=
background-attachment:initial;background-origin: initial;background-clip: i=
nitial;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:Wingdings;color:#201F1E;border:=
none windowtext 1.0pt;padding:0in">&Oslash;</span><span style=3D"font-size:=
7.0pt;font-family:&quot;inherit&quot;,serif;color:#201F1E;border:none windo=
wtext 1.0pt;padding:0in">&nbsp;&nbsp;</span><b><span style=3D"font-size:11.=
0pt;font-family:&quot;inherit&quot;,serif;color:black;border:none windowtex=
t 1.0pt;padding:0in">Intelligent
 Ticket Assignment&nbsp;&nbsp;</span></b><span style=3D"font-size:11.5pt;fo=
nt-family:&quot;Segoe UI&quot;,sans-serif;color:#201F1E"><o:p></o:p></span>=
</p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;text-indent:-.25in;background:white;font-variant-ligatures: nor=
mal;font-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit=
-text-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-=
style: initial;text-decoration-color: initial;background-image:initial;back=
ground-position:initial;background-size: initial;background-repeat:initial;=
background-attachment:initial;background-origin: initial;background-clip: i=
nitial;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:Wingdings;color:#201F1E;border:=
none windowtext 1.0pt;padding:0in">&Oslash;</span><span style=3D"font-size:=
7.0pt;font-family:&quot;inherit&quot;,serif;color:#201F1E;border:none windo=
wtext 1.0pt;padding:0in">&nbsp;&nbsp;</span><b><span style=3D"font-size:11.=
0pt;font-family:&quot;inherit&quot;,serif;color:black;border:none windowtex=
t 1.0pt;padding:0in">Combining
 Tickets&nbsp;&nbsp;</span></b><span style=3D"font-size:11.5pt;font-family:=
&quot;Segoe UI&quot;,sans-serif;color:#201F1E"><o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;text-indent:-.25in;background:white;font-variant-ligatures: nor=
mal;font-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit=
-text-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-=
style: initial;text-decoration-color: initial;background-image:initial;back=
ground-position:initial;background-size: initial;background-repeat:initial;=
background-attachment:initial;background-origin: initial;background-clip: i=
nitial;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:Wingdings;color:#201F1E;border:=
none windowtext 1.0pt;padding:0in">&Oslash;</span><span style=3D"font-size:=
7.0pt;font-family:&quot;inherit&quot;,serif;color:#201F1E;border:none windo=
wtext 1.0pt;padding:0in">&nbsp;&nbsp;</span><b><span style=3D"font-size:11.=
0pt;font-family:&quot;inherit&quot;,serif;color:black;border:none windowtex=
t 1.0pt;padding:0in">Multichannel
 Support&nbsp;&nbsp;</span></b><span style=3D"font-size:11.5pt;font-family:=
&quot;Segoe UI&quot;,sans-serif;color:#201F1E"><o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;text-indent:-.25in;background:white;font-variant-ligatures: nor=
mal;font-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit=
-text-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-=
style: initial;text-decoration-color: initial;background-image:initial;back=
ground-position:initial;background-size: initial;background-repeat:initial;=
background-attachment:initial;background-origin: initial;background-clip: i=
nitial;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:Wingdings;color:#201F1E;border:=
none windowtext 1.0pt;padding:0in">&Oslash;</span><span style=3D"font-size:=
7.0pt;font-family:&quot;inherit&quot;,serif;color:#201F1E;border:none windo=
wtext 1.0pt;padding:0in">&nbsp;&nbsp;</span><b><span style=3D"font-size:11.=
0pt;font-family:&quot;inherit&quot;,serif;color:black;border:none windowtex=
t 1.0pt;padding:0in">Mobile
 App to manage complete Helpdesk&nbsp;&nbsp;</span></b><span style=3D"font-=
size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:#201F1E"><o:p=
></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;text-indent:-.25in;background:white;font-variant-ligatures: nor=
mal;font-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit=
-text-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-=
style: initial;text-decoration-color: initial;background-image:initial;back=
ground-position:initial;background-size: initial;background-repeat:initial;=
background-attachment:initial;background-origin: initial;background-clip: i=
nitial;word-spacing:0px">
<span style=3D"font-size:10.0pt;font-family:Wingdings;color:#201F1E;border:=
none windowtext 1.0pt;padding:0in">&Oslash;</span><span style=3D"font-size:=
7.0pt;font-family:&quot;inherit&quot;,serif;color:#201F1E;border:none windo=
wtext 1.0pt;padding:0in">&nbsp;&nbsp;</span><b><span style=3D"font-size:11.=
0pt;font-family:&quot;inherit&quot;,serif;color:black;border:none windowtex=
t 1.0pt;padding:0in">Customized
 Dashboards and Reports using Inbuilt Analytics</span></b><span style=3D"fo=
nt-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:#201F1E"><=
o:p></o:p></span></p>
<p class=3D"xxmsonormal" style=3D"margin:0in;background:white;font-variant-=
ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;wid=
ows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;te=
xt-decoration-style: initial;text-decoration-color: initial;background-imag=
e:initial;background-position:initial;background-size: initial;background-r=
epeat:initial;background-attachment:initial;background-origin: initial;back=
ground-clip: initial;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#201F1E;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span =
style=3D"color:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;text-align:justify;background:white;font-variant-lig=
atures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-=
stroke-width: 0px;text-decoration-thickness: initial;text-decoration-style:=
 initial;text-decoration-color: initial;background-image:initial;background=
-position:initial;background-size: initial;background-repeat:initial;backgr=
ound-attachment:initial;background-origin: initial;background-clip: initial=
;word-spacing:0px">
<b><span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;co=
lor:black;border:none windowtext 1.0pt;padding:0in">Webinar&nbsp;Date: 22nd=
, September 2022</span></b><span style=3D"font-size:11.5pt;font-family:&quo=
t;Segoe UI&quot;,sans-serif;color:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;text-align:justify;background:white;font-variant-lig=
atures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-=
stroke-width: 0px;text-decoration-thickness: initial;text-decoration-style:=
 initial;text-decoration-color: initial;background-image:initial;background=
-position:initial;background-size: initial;background-repeat:initial;backgr=
ound-attachment:initial;background-origin: initial;background-clip: initial=
;word-spacing:0px">
<b><span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;co=
lor:black;border:none windowtext 1.0pt;padding:0in">&nbsp;</span></b><span =
style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;color=
:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;text-align:justify;background:white;font-variant-lig=
atures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-=
stroke-width: 0px;text-decoration-thickness: initial;text-decoration-style:=
 initial;text-decoration-color: initial;background-image:initial;background=
-position:initial;background-size: initial;background-repeat:initial;backgr=
ound-attachment:initial;background-origin: initial;background-clip: initial=
;word-spacing:0px">
<b><span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;co=
lor:black;border:none windowtext 1.0pt;padding:0in">Webinar&nbsp;Time: 12:0=
0 PM- IST</span></b><span style=3D"font-size:11.5pt;font-family:&quot;Segoe=
 UI&quot;,sans-serif;color:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;text-align:justify;background:white;font-variant-lig=
atures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-=
stroke-width: 0px;text-decoration-thickness: initial;text-decoration-style:=
 initial;text-decoration-color: initial;background-image:initial;background=
-position:initial;background-size: initial;background-repeat:initial;backgr=
ound-attachment:initial;background-origin: initial;background-clip: initial=
;word-spacing:0px">
<b><span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;co=
lor:black;border:none windowtext 1.0pt;padding:0in">&nbsp;&nbsp;</span></b>=
<span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;font-variant-ligatures: normal;font=
-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit-text-st=
roke-width: 0px;text-decoration-thickness: initial;text-decoration-style: i=
nitial;text-decoration-color: initial;background-image:initial;background-p=
osition:initial;background-size: initial;background-repeat:initial;backgrou=
nd-attachment:initial;background-origin: initial;background-clip: initial;w=
ord-spacing:0px">
<b><span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;co=
lor:black;border:none windowtext 1.0pt;padding:0in">Register for free:</spa=
n></b><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#201F1E;border:none windowtext 1.0pt;padding:0in">&nbsp;</sp=
an></b><span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,san=
s-serif;color:black;border:none windowtext 1.0pt;padding:0in"><a href=3D"ht=
tps://bit.ly/3ca35bt" target=3D"_blank"><span style=3D"font-size:10.5pt">ht=
tps://bit.ly/3ca35bt</span></a></span><span style=3D"font-size:11.5pt;font-=
family:&quot;Segoe UI&quot;,sans-serif;color:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;font-variant-ligatures: normal;font=
-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit-text-st=
roke-width: 0px;text-decoration-thickness: initial;text-decoration-style: i=
nitial;text-decoration-color: initial;background-image:initial;background-p=
osition:initial;background-size: initial;background-repeat:initial;backgrou=
nd-attachment:initial;background-origin: initial;background-clip: initial;w=
ord-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#201F1E;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span =
style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;color=
:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;font-variant-ligatures: normal;font=
-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit-text-st=
roke-width: 0px;text-decoration-thickness: initial;text-decoration-style: i=
nitial;text-decoration-color: initial;background-image:initial;background-p=
osition:initial;background-size: initial;background-repeat:initial;backgrou=
nd-attachment:initial;background-origin: initial;background-clip: initial;w=
ord-spacing:0px">
<b><span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;co=
lor:black;border:none windowtext 1.0pt;padding:0in">Join Zoom Meeting</span=
></b><span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-=
serif;color:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;font-variant-ligatures: normal;font=
-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit-text-st=
roke-width: 0px;text-decoration-thickness: initial;text-decoration-style: i=
nitial;text-decoration-color: initial;background-image:initial;background-p=
osition:initial;background-size: initial;background-repeat:initial;backgrou=
nd-attachment:initial;background-origin: initial;background-clip: initial;w=
ord-spacing:0px">
<span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black;border:none windowtext 1.0pt;padding:0in"><a href=3D"https://u=
s02web.zoom.us/j/86320733255?pwd=3DcEtUbWt5SXVZTVc0ZHd1ckI1dkVNQT09" target=
=3D"_blank"><span style=3D"font-size:10.5pt">https://us02web.zoom.us/j/8632=
0733255?pwd=3DcEtUbWt5SXVZTVc0ZHd1ckI1dkVNQT09</span></a></span><span style=
=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:#201=
F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;background:white;font-variant-ligatures: normal;font=
-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit-text-st=
roke-width: 0px;text-decoration-thickness: initial;text-decoration-style: i=
nitial;text-decoration-color: initial;background-image:initial;background-p=
osition:initial;background-size: initial;background-repeat:initial;backgrou=
nd-attachment:initial;background-origin: initial;background-clip: initial;w=
ord-spacing:0px">
<span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#201F1E;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span=
 style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;colo=
r:#201F1E"><o:p></o:p></span></p>
<p class=3D"xxmsonormal" style=3D"margin:0in;line-height:12.65pt;background=
:white;vertical-align:baseline;font-variant-ligatures: normal;font-variant-=
caps: normal;orphans: 2;text-align:start;widows: 2;-webkit-text-stroke-widt=
h: 0px;text-decoration-thickness: initial;text-decoration-style: initial;te=
xt-decoration-color: initial;background-image:initial;background-position:i=
nitial;background-size: initial;background-repeat:initial;background-attach=
ment:initial;background-origin: initial;background-clip: initial;word-spaci=
ng:0px">
<b><span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;co=
lor:black;border:none windowtext 1.0pt;padding:0in">Meeting ID: 863 2073 32=
55</span></b><span style=3D"color:#201F1E"><o:p></o:p></span></p>
<p class=3D"xxmsonormal" style=3D"margin:0in;line-height:12.65pt;background=
:white;vertical-align:baseline;font-variant-ligatures: normal;font-variant-=
caps: normal;orphans: 2;text-align:start;widows: 2;-webkit-text-stroke-widt=
h: 0px;text-decoration-thickness: initial;text-decoration-style: initial;te=
xt-decoration-color: initial;background-image:initial;background-position:i=
nitial;background-size: initial;background-repeat:initial;background-attach=
ment:initial;background-origin: initial;background-clip: initial;word-spaci=
ng:0px">
<b><span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;co=
lor:black;border:none windowtext 1.0pt;padding:0in">Passcode: 587532</span>=
</b><span style=3D"color:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;text-align:justify;background:white;font-variant-lig=
atures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-=
stroke-width: 0px;text-decoration-thickness: initial;text-decoration-style:=
 initial;text-decoration-color: initial;background-image:initial;background=
-position:initial;background-size: initial;background-repeat:initial;backgr=
ound-attachment:initial;background-origin: initial;background-clip: initial=
;word-spacing:0px">
<span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#201F1E;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span=
 style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;colo=
r:#201F1E"><o:p></o:p></span></p>
<p style=3D"margin:0in;text-align:justify;background:white;font-variant-lig=
atures: normal;font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-=
stroke-width: 0px;text-decoration-thickness: initial;text-decoration-style:=
 initial;text-decoration-color: initial;background-image:initial;background=
-position:initial;background-size: initial;background-repeat:initial;backgr=
ound-attachment:initial;background-origin: initial;background-clip: initial=
;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;inherit&quot;,serif;color=
:black;border:none windowtext 1.0pt;padding:0in">Kindly let me know if you =
have any queries, I would be happy to help.</span><span style=3D"font-size:=
11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:#201F1E"><o:p></o:=
p></span></p>
<p class=3D"xxxmsonormal" style=3D"margin:0in;background:white;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;wi=
dows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;t=
ext-decoration-style: initial;text-decoration-color: initial;background-ima=
ge:initial;background-position:initial;background-size: initial;background-=
repeat:initial;background-attachment:initial;background-origin: initial;bac=
kground-clip: initial;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#203864;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span =
style=3D"color:#201F1E"><o:p></o:p></span></p>
<p class=3D"xxxmsonormal" style=3D"margin:0in;background:white;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;wi=
dows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;t=
ext-decoration-style: initial;text-decoration-color: initial;background-ima=
ge:initial;background-position:initial;background-size: initial;background-=
repeat:initial;background-attachment:initial;background-origin: initial;bac=
kground-clip: initial;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#203864;border:none windowtext 1.0pt;padding:0in">Regards,</span><spa=
n style=3D"color:#201F1E"><o:p></o:p></span></p>
<p class=3D"xxxmsonormal" style=3D"margin:0in;background:white;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;wi=
dows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;t=
ext-decoration-style: initial;text-decoration-color: initial;background-ima=
ge:initial;background-position:initial;background-size: initial;background-=
repeat:initial;background-attachment:initial;background-origin: initial;bac=
kground-clip: initial;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#203864;border:none windowtext 1.0pt;padding:0in">Sirisha- Business D=
evelopment Executive</span><span style=3D"color:#201F1E"><o:p></o:p></span>=
</p>
<p class=3D"xxxmsonormal" style=3D"margin:0in;background:white;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;wi=
dows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;t=
ext-decoration-style: initial;text-decoration-color: initial;background-ima=
ge:initial;background-position:initial;background-size: initial;background-=
repeat:initial;background-attachment:initial;background-origin: initial;bac=
kground-clip: initial;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#203864;border:none windowtext 1.0pt;padding:0in">Hand Phone: 6303180=
381</span><span style=3D"color:#201F1E"><o:p></o:p></span></p>
<p class=3D"xxxmsonormal" style=3D"margin:0in;background:white;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;wi=
dows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;t=
ext-decoration-style: initial;text-decoration-color: initial;background-ima=
ge:initial;background-position:initial;background-size: initial;background-=
repeat:initial;background-attachment:initial;background-origin: initial;bac=
kground-clip: initial;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#203864;border:none windowtext 1.0pt;padding:0in">Email:&nbsp;</span>=
<u><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:#00007F;border:none windowtext 1.0pt;padding:0in">sirishag</span><=
/u><span style=3D"color:black;border:none windowtext 1.0pt;padding:0in"><a =
href=3D"mailto:rajeevc@wavity.com" target=3D"_blank"><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#00007F">@wavity=
.com</span></a></span><span style=3D"color:#201F1E"><o:p></o:p></span></p>
<p class=3D"xxxmsonormal" style=3D"margin:0in;background:white;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;wi=
dows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;t=
ext-decoration-style: initial;text-decoration-color: initial;background-ima=
ge:initial;background-position:initial;background-size: initial;background-=
repeat:initial;background-attachment:initial;background-origin: initial;bac=
kground-clip: initial;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#203864;border:none windowtext 1.0pt;padding:0in">&nbsp;</span><span =
style=3D"color:#201F1E"><o:p></o:p></span></p>
<p class=3D"xxxmsonormal" style=3D"margin:0in;background:white;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;wi=
dows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;t=
ext-decoration-style: initial;text-decoration-color: initial;background-ima=
ge:initial;background-position:initial;background-size: initial;background-=
repeat:initial;background-attachment:initial;background-origin: initial;bac=
kground-clip: initial;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:black"><img border=3D"0" width=3D"191" height=3D"28" id=3D"Picture_x0=
020_1" src=3D"cid:image001.png@01D8CC17.43E20670"></span><span style=3D"col=
or:#201F1E"><o:p></o:p></span></p>
<p class=3D"xxxmsonormal" style=3D"margin:0in;background:white;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;wi=
dows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;t=
ext-decoration-style: initial;text-decoration-color: initial;background-ima=
ge:initial;background-position:initial;background-size: initial;background-=
repeat:initial;background-attachment:initial;background-origin: initial;bac=
kground-clip: initial;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#203864;border:none windowtext 1.0pt;padding:0in">Re-thinking SaaS Ap=
plications&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=3D"color:#201F1E=
"><o:p></o:p></span></p>
<p class=3D"xxxmsonormal" style=3D"margin:0in;background:white;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;wi=
dows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;t=
ext-decoration-style: initial;text-decoration-color: initial;background-ima=
ge:initial;background-position:initial;background-size: initial;background-=
repeat:initial;background-attachment:initial;background-origin: initial;bac=
kground-clip: initial;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#203864;border:none windowtext 1.0pt;padding:0in">Wavity Inc.</span><=
span style=3D"color:#203864;border:none windowtext 1.0pt;padding:0in">&nbsp=
;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</span><span style=3D"color:#201F1E"><o:p><=
/o:p></span></p>
<p class=3D"xxxmsonormal" style=3D"margin:0in;background:white;font-variant=
-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:start;wi=
dows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;t=
ext-decoration-style: initial;text-decoration-color: initial;background-ima=
ge:initial;background-position:initial;background-size: initial;background-=
repeat:initial;background-attachment:initial;background-origin: initial;bac=
kground-clip: initial;word-spacing:0px">
<span style=3D"color:black;border:none windowtext 1.0pt;padding:0in"><a hre=
f=3D"http://secure-web.cisco.com/1JUjhgLGq3lTCNemlAqAXzjYLDOkjN3Z0B3jA7pXT3=
uVuHQZO3bq6u-d19qHCR_ymZa1tVVeoBr9zRWWLGERalJxoNO4vqwNHKoSyQpSaH8am-6xAxVBp=
GFCGXQ96oh9FFZEEfFRlWPrwS7b5-iQMHGxuUkn7skbwHsXiLF0tMXQj1xtDAVm42umu70-q-PU=
SSkU1we-B7uVRRBqShNuCxrCokf-mHimix4G9DP60HKUgreG1I0tijouFUloFbvynSaLvwx8CB9=
IHr8nuadKuzZHsOfIfXRU6FhnLAQHV8hYvXwRoM73ysZb9hW15_Ohi9bCstLiGYg6gWP01FIq0M=
fH2_ml_hwtmzv3YIVW08qZToGxri0hKN9i29f6NtVZg06HhqCDsfzogk5_cI0EM2MfEAvt7Bfw2=
p4JuZEM4TupDDYcONkAM8K3YU3TxAoq27yUjS8KIrhAuCSyRmQTL8w/http%3A%2F%2Fwww.wav=
ity.com%2F" target=3D"_blank"><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif;color:#00007F">www.wavity.com</span></a></spa=
n><span style=3D"color:#201F1E"><o:p></o:p></span></p>
<p class=3D"xxxmsonormal" style=3D"margin:0in;line-height:12.65pt;backgroun=
d:white;font-variant-ligatures: normal;font-variant-caps: normal;orphans: 2=
;text-align:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-=
thickness: initial;text-decoration-style: initial;text-decoration-color: in=
itial;background-image:initial;background-position:initial;background-size:=
 initial;background-repeat:initial;background-attachment:initial;background=
-origin: initial;background-clip: initial;word-spacing:0px">
<b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:#203864;border:none windowtext 1.0pt;padding:0in">&nbsp;</span></b=
><span style=3D"color:#201F1E"><o:p></o:p></span></p>
<p class=3D"xxxmsonormal" style=3D"margin:0in;line-height:12.65pt;backgroun=
d:white;font-variant-ligatures: normal;font-variant-caps: normal;orphans: 2=
;text-align:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-=
thickness: initial;text-decoration-style: initial;text-decoration-color: in=
itial;background-image:initial;background-position:initial;background-size:=
 initial;background-repeat:initial;background-attachment:initial;background=
-origin: initial;background-clip: initial;word-spacing:0px">
<b><u><span style=3D"font-size:8.0pt;font-family:&quot;Verdana&quot;,sans-s=
erif;color:#201F1E;border:none windowtext 1.0pt;padding:0in;background:whit=
e">CONFIDENTIALITY NOTICE</span></u></b><b><span style=3D"font-size:8.0pt;f=
ont-family:&quot;Verdana&quot;,sans-serif;color:#201F1E;border:none windowt=
ext 1.0pt;padding:0in;background:white">:</span></b><span style=3D"font-siz=
e:8.0pt;font-family:&quot;Verdana&quot;,sans-serif;color:#201F1E;border:non=
e windowtext 1.0pt;padding:0in;background:white">&nbsp;This
 email was sent to you by&nbsp;<b>Wavity</b>. To remove yourself from futur=
e mailings of this nature, simply reply to this email with&nbsp;<b>Unsubscr=
ibe</b>&nbsp;in the subject line.</span><span style=3D"color:#201F1E"><o:p>=
</o:p></span></p>
<p class=3D"xmsonormal" style=3D"mso-margin-top-alt:0in;margin-right:0in;ma=
rgin-bottom:10.0pt;margin-left:0in;line-height:12.65pt;background:white;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#201F1E">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BY5PR17MB384464D8B287A6E5CD2ED112AD4D9BY5PR17MB3844namp_--
--_004_BY5PR17MB384464D8B287A6E5CD2ED112AD4D9BY5PR17MB3844namp_
content-type: image/png; name="image001.png"
content-transfer-encoding: base64
content-disposition: inline; modification-date="Mon, 19 Sep 2022 05:52:46 GMT"; filename="image001.png"; creation-date="Mon, 19 Sep 2022 05:52:46 GMT"; size=7353
content-id: <image001.png@01D8CC17.43E20670>
content-description: image001.png

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

--_004_BY5PR17MB384464D8B287A6E5CD2ED112AD4D9BY5PR17MB3844namp_--
