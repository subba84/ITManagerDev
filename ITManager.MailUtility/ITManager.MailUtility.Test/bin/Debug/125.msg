X-Qmail-Scanner-Diagnostics: from 192.168.9.71 by vdvm34.logix.local (envelope-from <support.trueconnect@jio.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.71):SA:0(IronPort):.  Processed in 0.037333 secs); 17 Sep 2022 07:06:13 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  support.trueconnect@jio.com designates 49.40.14.18 as  permitted sender) identity=mailfrom; client-ip=49.40.14.18;  receiver=tblr2.logix.in;  envelope-from="support.trueconnect@jio.com";  x-sender="support.trueconnect@jio.com";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:49.40.2.101 ip4:49.40.14.18  ip4:49.40.2.144 ip4:49.40.2.145 ip4:49.40.14.57  ip4:49.40.54.128/27 ip4:49.40.55.128/27 -all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@smtp-outgoing.mail.rjil.net) identity=helo;  client-ip=49.40.14.18; receiver=tblr2.logix.in;  envelope-from="support.trueconnect@jio.com";  x-sender="postmaster@smtp-outgoing.mail.rjil.net";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=support.trueconnect@jio.com; spf=None smtp.helo=postmaster@smtp-outgoing.mail.rjil.net; dkim=temperror (key query timeout) header.i=@jio.com; dmarc=pass (p=reject dis=none) d=jio.com
IronPort-SDR: AF7E4kPJFWLLXGvyl9faNcdcWDQosDzW4z1Hg/ZnEcemDjjtG2m3R+elnAS96YLneeWMktf2iG UOeLCUJ6YS0LZvMjQ74YXf0D8Ay3PWmM4fB8CFBL+9dU/FavQoLjBiGa+4XYP8M5krrZLOLeXe Jvz2OfbKEfJx/ly9hG+r8RwAvemRRfrWj14zZ+nZULtH6SbpQ7X3PhpicZwJyWoJU3Ki8Esicl XzIEEkfZXCePgDYO2gVjEYvIB36DAgVWzDsivEZ/xOtVtiXTQQwZCC2oP+43534QKqqEofs6ja GE/2dfuZw7bBofHUytK5by8d
X-ORIGINAL-IP: 49.40.14.18
X-ORIGINAL-TIME: 17 Sep 2022 12:36:12 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23:vydKn6mK+GuUydGzAJHYuNno5gz/IERdPkR7XQ2eYbSJt1+Wr1Gzt xIeCmrTO6uDYjOhfI9zYNzj9k8P78LVydBgSQJurSxgHy4T+ZvOCP2ndHv9bniYRiHhoOKLz Cm/hv3odZhcoqr0/0/F3oDJ9CU6jefSLlbFILas1hpZHGeIcw98z0M48wIFqtQw24LhUlrS4 YqaT/D3YTdJ5RYkbwr41Irf83uDjNyq0N/PlgFWiVhj5TcyplFMZH4tDfjZw0jQG+G4KtWHq 9PrltlVyI92EyAFULtJmp6jGqEDau+KZWBigFIPM0SpqkEqSiAag/5jXBa1hIg+ZzihxrhMJ NtxWZOYDgIbZJHUl7onAwh0LBkveupA2oTmPi3q2SCT5xWun3rE2PByFAQxIJEX/edxDidL/ P0cbioPbxTFge+qqF65YrU9wJh7apC3etpP0p1j5Wmx4fIOWo3bW6LQ+ZlExio9jcdIG/vVe +IbaD0pZxPFC/FKEg1OWMxux73w3xETdRVKmkrJrIUw/FGL7xBQzofgboLwIoaFEJA9ckGw/ Tiapz+jX3n2Lue3yTeB6n6hneznhirnQosdDrql7rhrhjWuKnc7ExgKTQL+puSlhUm/Xd0ZL kUV/mw0r6k2skqmUrERQiFUvlbDuyxGZ8JfTddq+S2y8vuTpAC7PUkbG2sphMMdiOc6Qjkj1 1msltzvBCByvLD9dU9x5ot4vhvoYHlEcjNqiTssElpdu4C7yG0mpkuXFo4LLUKjsjHiMRDWq w1mQQAlgqkL1IsMyrm0+lHBjHSpr5nNCBQ35wGRWG+5hu+YWGJHT9PxgbQ4xawZRGp8crVnl CNb8yR5xLxUZaxhbATXHI0w8EiBvp5pygH0j191BIUG/D+w4XOldo04yGggehwyb51cIme2O xa7VeZtCHl7YiPCgUhfPdnZNijW5fGI+SnNCqmON4IePfCdiifcoXwyPSZ8IFwBYGB3y/1nY s3GGSpdJXQbDsxaIMmeGY8gPUsQ7nlmnwv7HMilpzz+iOb2TCPLFd8tbQXfBshnt/nsiFuOr L5i2z6ikEg3vBvWOXWMrub+7DkicRAGOHwBg5UOL77cc1o5QD9J5j246epJRrGJVp99zY/g1 nO8XQlTz1+XuJENAVjihqlLZOy9UJBhg2g8OCBwb1+k12J8M4Su6+EUcJ5uJesr8+lqzPhVS fgZepTZW6kUGmyfozlNP4PgqIFCdQiwgV7cNSSSZjViLYVrQBbE+4O5cwa2rHsOAyO7uNEQu bql0g+HE5MPSx49XsTXb7SkyFbo5SoRn+d7Xk3pJNhPeRS1qdUxe3Sp1vJuepMCMxTOwDeex j26OxZAqLmfuZIx/fnImbuA89WjHdx4ExcIBGLc97u3aXTX82f/k49NVOGEIWLUWG/uovrwf uBJ17T7LeEIm1dMvMx5Grdvi7g85t+pobJGl1w2EHLOZlWtK7VhPnjfhpQe6/ARm+4EtFvkQ F+L9/lbJa6NZJHvHmkXKVd3de+Ez/wVxmTf4KhnOkn8/yMrrrOLXV8Ib0uXjTBFdf5yLZ8qx uYnt4gT4g27zAAoM9LAiC1IrjzeInsFWqQhl5cbHI6y0Vd6lwwePM2BB3+k+oyLZvVNLlIuf m2eip3EiukO3UHFaXcySSXA0Oc1aU7iY/yWIILu5mhlm+YpQtcs2QFJtDMqUgtSzxNIled6O 2wtLU90IeOI8isAaA2vmYyzM1kpOfFb0hSZJ5g1eKnxTUivEGfKKQXR/M6TqVsB/Ts0kidzp dml9YoubdomkAwdEMf/tY6JZsEPleBMyzA=
IronPort-HdrOrdr: A9a23:6yl2Latflw2EJXCk4g+/7E5Q7skDYtV00zEX/kB9WHVpm6uj5q STdZUgpHrJYFR4YhsdcLW7VZVoLkmyyXcY2+cs1NSZLWvbUQmTTL2KhLGKq1aNJ8SUzJ8/6U 4PSclDNOE=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,322,1654540200";    d="scan'208";a="218683201"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp-outgoing.mail.rjil.net A71FFAC005A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jio.com; s=jiomail;	t=1663398361; bh=peEK4N7ttVXeJuqkqnpUA6dFRQ2hUVgC5gcC028FL9Y=;	h=Date:From:To:Subject:From;	b=rPXoLsfMxgNBvkPTdThtlu4CC3tzY51Irjp7LvrygqTVTKZnvE2mE30hv+g9uDGlb	 83oNMWaHytBiymwrBISY5k4HesL3FxKRg5YKsT1sEGy2hHW3riuAOutA8xP4qhUAGG	 mcSpr095rAVK3ruzHz0KcRsfA2DDVdN1g4uwNZ+c=
Received: from support.trueconnect@jio.com([192.168.1.1]) 	by PME Mail With Id 1663398378072.16486;Sat, 17 Sep 2022 12:36:18 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h4louc1oo380 for <helpdesk@satragroup.in>; Sat, 17 Sep 2022 12:36:14 +0530 (envelope-from <support.trueconnect@jio.com>)
Received: (qmail 141797 invoked by uid 1012); 17 Sep 2022 07:06:13 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.71])          (envelope-sender <support.trueconnect@jio.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 17 Sep 2022 07:06:13 -0000
Received: from smtp1-outgoing.mail.rjil.net (HELO smtp-outgoing.mail.rjil.net) ([49.40.14.18])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2022 12:36:02 +0530
Received: from NVMBD2ANR070V15.bss.jio.com (unknown [10.140.84.156])	by smtp-outgoing.mail.rjil.net (Postfix) with ESMTP id A71FFAC005A	for <helpdesk@satragroup.in>; Sat, 17 Sep 2022 12:36:01 +0530 (IST)
Received: from jiouccwsonode-1 (unknown [10.160.216.144])	by NVMBD2ANR070V15.bss.jio.com (Postfix) with ESMTP id 9F8C872;	Sat, 17 Sep 2022 12:36:01 +0530 (IST)
MIME-Version: 1.0
Subject: Jio Trueconnect - Approval of Registration request for Content Template (<SMS/VOICE>)
Date: Sat, 17 Sep 2022 12:36:01 +0530 (IST)
Message-ID: <604663756.531976.1663398361644@jiouccwsonode-1>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: support.trueconnect@jio.com
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <support.trueconnect@jio.com>
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit
X-PMAttribute: 1663398378072.16486; mb_id=QSM1413892035136; imapid=30979; del_to=helpdesk

Dear User,

Your request for Content Template (<SMS/VOICE>) registration has been approved.

Kindly find the Content Template (<SMS/VOICE>) details below :

Content Template ID : 1207166306397939838
Category : Communication/Broadcasting/Entertainment/IT
Template Type : SMS
Content Template (<SMS/VOICE>) : Reset-RBDGUJ

Associated Headers : RBDGUJ)
Associated Consent Template :  ()

Thank you,
Jio Trueconnect Team


Disclaimer: This is a system generated email, please do not reply
