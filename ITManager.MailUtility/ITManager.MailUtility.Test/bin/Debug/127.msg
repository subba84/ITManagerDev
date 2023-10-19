X-Qmail-Scanner-Diagnostics: from 192.168.9.76 by vdvm34.logix.local (envelope-from <support.trueconnect@jio.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.76):SA:0(IronPort):.  Processed in 0.035136 secs); 17 Sep 2022 07:07:09 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  support.trueconnect@jio.com designates 49.40.54.129 as  permitted sender) identity=mailfrom; client-ip=49.40.54.129;  receiver=tblr2.logix.in;  envelope-from="support.trueconnect@jio.com";  x-sender="support.trueconnect@jio.com";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:49.40.2.101 ip4:49.40.14.18  ip4:49.40.2.144 ip4:49.40.2.145 ip4:49.40.14.57  ip4:49.40.54.128/27 ip4:49.40.55.128/27 -all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@smtp9-outgoing.mail.rjil.net) identity=helo;  client-ip=49.40.54.129; receiver=tblr2.logix.in;  envelope-from="support.trueconnect@jio.com";  x-sender="postmaster@smtp9-outgoing.mail.rjil.net";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=support.trueconnect@jio.com; spf=None smtp.helo=postmaster@smtp9-outgoing.mail.rjil.net; dkim=pass (signature verified) header.i=@jio.com; dmarc=pass (p=reject dis=none) d=jio.com
IronPort-SDR: 0XSlUPRuZ+XJ/XRRrceX8+LmYH6m8hBywbvXgpFWzWk/t3K2nXTFcumINEJ/yDLyU/RCNlxwXe JQtjokN4Hqe5YFImWUUTTBmXgMUPKTyfcQREohKUMa43cXhMYz1Ps0TkoVpOlkMZdbPUSh9Lao tdAJ5pRXS+afWLlLfYJ4z/4bKzmdxaxudlcQ2EmFRnAZhkdSLfHHYK6gsviMJsJjCgSoHcoHn4 DHOjnNFcZu5JxGizm+Ksq7czV0f43VYZxIH4d8Y35XNS8Ro4EB5IIq2VcJpjf+IRVJ8lrDCt/n 5Xrr5ai7BWWYrTcOn/XV1F3X
X-ORIGINAL-IP: 49.40.54.129
X-ORIGINAL-TIME: 17 Sep 2022 12:37:09 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23:ZQ7Jy6meijBSSOqcVz/5En/o5gz7IERdPkR7XQ2eYbSJt1+Wr1Gzt xIYXD/Sa6vbZmakct5xPIi+8h4Gu8PWnYNqGwE9/i5mEi4T+ZvOCP2ndHv9bniYRiHhoOKLz Cm/hv3odZhcoqr0/0/F3oDJ9CU6jefSLlbFILas1hpZHGeIcw98z0M48wIFqtQw24LhUlrS4 YqaT/D3YTdJ5RYkbwr41Irf83uDjNyq0N/PlgFWiVhj5TcyplFMZH4tDfjZw0jQG+G4KtWHq 9PrltlVyI92EyAFULtJmp6jGqEDau+KZWBigFIPM0SpqkEqSiAag/5jXBa1hIg+ZzihxrhMJ NtxWZOYcgQiZfXXiL8nTgR+PQ1RMpR786XqLi3q2SCT5xWun3rE2PByFBBzOpAE9eF2B24I8 PUZLHYXbBGHweS73NpXSMEw14J/dI+2YMVG4CAIITLxVZ7KRbjYXr3S4sVEmisqm81FGvDYa sEFQThua1LLZBgn1lI/UcJkwrz42SKuG9FegE6cgY4U0kT/9Swy3InuGvjYINOnGuwAyy50o UqdpTihWUtHXDCF8hKF/3a0iuLUngvgUZ4IHbKi8eNyxlyVrlH/EzUNUEej8Ly+l1KxXNNZJ AoR8ysq67Iw9UjtSNThN/GlnJKaliUfUIEICP1h0hyQ7IT4zAmgO2MeYzEUPbTKq/QKbTAt0 1aImfbgCjpurKCZRBqhy1uEkd+hEXJMfD5dOUfoWSNasoG7+dlbYgfnF447SMaIYsvJ9SbY4 hbikcTTr64WkdZakqKm4V/AgjSj4J3ATwpz/AfWWiSj4x8RiG+Zi26AtgGzARVodt/xory9U J4swJj2AAcmUcvlqcB1aL9RdIxFHt7cWNEmvXZhHoM66xOm8GO5cIZb7VlWfRk3aZ1ZImeyO BCI4Gu9AaO/2lP0NcebhKrvUKwXIVTITLwJq9iIN4AXOsguHON51HozOBLIt4wSrKTcufplZ c/AK5vE4YcyC6VgpAdatM9DuYLHMhsWnDuJLbiil0rP+ePHOBa9FOlZWHPTMLFRxP3f+m39r Y0AX/ZmPj0EDYUSlAGMrdVMRb3LRFBnba3LRzt/L7faclU3SD55VZc8A9oJIuRYokicrc+Rl lmVWE5fjlH4gBX6xc+iMBiPsZvjAsRyq2wVJyspMQr60nQve9n97qYYMZAweOB/puBkyPd1S dgDetmBU60WF2+Xo2xFYMmvtpFmeTSqmRmKY3ivbg85csMyXAfO4NLlIlbi+XBWXCq6vMczu ZO60QbfTcZRTghuFpmEavOoiVi2uCFFyu51WkLJJPhVeVntodEzdneh1qdvLphVexvZxzac2 wKHOjsipLHA890v7d3EpaGYtIP1QeFwKUxXQjvA5rGsOCiGo2euzNMSUOuMejyBBmr49L/4N bdOyu3kYbgAgUpFtIt6HPBuxKM6ocHtprscyAl4RS2ZY1OuA7JmA3+HwcgW7fAcm+IF5FrrV xLd4MReNJWIJNjhTAwbKj0jY7nRzvoTgDTTsak4LRmo/iNx57bbA0xeMwPW2H5GKadtYcYi3 Psuv88Q5Eq6gxsudMyEjyQS8WmQdyRSX6Iiv5AcIYnqlgtykQwTPMGAV36r7cHdcchIP2krP iSQ2PjIiYNayxeQaHE0D3XMgbdQiJlmVMqmF7Pey4llW+Yph8PbGDVK9CgvH0FS0wlI1ON1N S5uPkxxY7+M/jMugsVfN4xp98etGzXBknEdCXNR/IEac6Vsfm7MKys2PuPlEIUx7TdHZjYCl F2H4D+NbAsGt/0dEsf/tYCJZhAjoRFMGtX+pf2a
IronPort-HdrOrdr: A9a23:BJc4gaMrUO16qcBcTtWjsMiBIKoaSvp037BN7TEUdfU1SL38qy jN9M5w6faQslsssR4b9uxoVJPvfZq+z+8W3WByB9eftWDd0QPCQL2KhrGSoAEIdReeytJg
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,322,1654540200";    d="scan'208";a="182638739"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp9-outgoing.mail.rjil.net 00BDD1C00C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jio.com; s=jiomail;	t=1663398426; bh=X8T2d7Cubp5YIsX8B6DNLFkIBQTtV8TS1jITR+E16ew=;	h=Date:From:To:Subject:From;	b=nBKca5Cu2w5nrSI19nFCY6DjlHSH20z54LY6mNzfZMPRiraj5aQfZxduH4LvZk4Up	 9/MVHH3jxRHsLm34P0+6b8cJJ8r/imyjytujHsDKam5ausJ+QZrQlIZi2QXtm7v/2z	 XCMxasfbRlAk9DOMyttELqNeLiomrk7N3BdAIlrQ=
Received: from support.trueconnect@jio.com([192.168.1.1]) 	by PME Mail With Id 1663398433980.16488;Sat, 17 Sep 2022 12:37:13 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h4lp1s1oo38e for <helpdesk@satragroup.in>; Sat, 17 Sep 2022 12:37:09 +0530 (envelope-from <support.trueconnect@jio.com>)
Received: (qmail 146728 invoked by uid 1012); 17 Sep 2022 07:07:09 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.76])          (envelope-sender <support.trueconnect@jio.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 17 Sep 2022 07:07:09 -0000
Received: from smtp9-outgoing.mail.rjil.net ([49.40.54.129])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2022 12:37:08 +0530
Received: from NVMBD2ANR070V15.bss.jio.com (unknown [10.140.84.156])	by smtp9-outgoing.mail.rjil.net (Postfix) with ESMTP id 00BDD1C00C7	for <helpdesk@satragroup.in>; Sat, 17 Sep 2022 12:37:06 +0530 (IST)
Received: from jiouccwsonode-1 (unknown [10.160.216.144])	by NVMBD2ANR070V15.bss.jio.com (Postfix) with ESMTP id EC7CE76;	Sat, 17 Sep 2022 12:37:05 +0530 (IST)
MIME-Version: 1.0
Subject: Jio Trueconnect - Approval of Registration request for Content Template (<SMS/VOICE>)
Date: Sat, 17 Sep 2022 12:37:05 +0530 (IST)
Message-ID: <1210444566.531982.1663398425960@jiouccwsonode-1>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: support.trueconnect@jio.com
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <support.trueconnect@jio.com>
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit
X-PMAttribute: 1663398433980.16488; mb_id=QSM1413892035136; imapid=30981; del_to=helpdesk

Dear User,

Your request for Content Template (<SMS/VOICE>) registration has been approved.

Kindly find the Content Template (<SMS/VOICE>) details below :

Content Template ID : 1207166306366395752
Category : Communication/Broadcasting/Entertainment/IT
Template Type : SMS
Content Template (<SMS/VOICE>) : RBDGUJ-DurationOfComplaint

Associated Headers : RBDGUJ)
Associated Consent Template :  ()

Thank you,
Jio Trueconnect Team


Disclaimer: This is a system generated email, please do not reply
