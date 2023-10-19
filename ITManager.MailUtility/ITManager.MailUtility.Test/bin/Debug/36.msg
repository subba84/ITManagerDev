X-Qmail-Scanner-Diagnostics: from 192.168.8.22 by vdvm33.logix.local (envelope-from <bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.8.22):SA:0(IronPort):.  Processed in 0.040026 secs); 09 Sep 2022 11:36:38 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com  designates 192.254.113.101 as permitted sender)  identity=mailfrom; client-ip=192.254.113.101;  receiver=tblr2.logix.in;  envelope-from="bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com";  x-sender="bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:167.89.0.0/17 ip4:208.117.48.0/20  ip4:50.31.32.0/19 ip4:198.37.144.0/20 ip4:198.21.0.0/21  ip4:192.254.112.0/20 ip4:168.245.0.0/17 ip4:149.72.0.0/16  ip4:159.183.0.0/16 include:ab.sendgrid.net ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@o6.sgmail.github.com) identity=helo;  client-ip=192.254.113.101; receiver=tblr2.logix.in;  envelope-from="bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com";  x-sender="postmaster@o6.sgmail.github.com";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com; spf=None smtp.helo=postmaster@o6.sgmail.github.com; dkim=pass (signature verified) header.i=@github.com; dmarc=pass (p=reject dis=none) d=github.com
IronPort-SDR: vPTpafWvyw5/UZfsjrJGyXTiByufqXcbDLUhf5ydbVAlH5VIpiLaJGb4uk9Oyy82OMy2s21R38 3LtBqp8BwJhD7wqWZEvniHRXgAaBS9yGQ=
X-ORIGINAL-IP: 192.254.113.101
X-ORIGINAL-TIME: 09 Sep 2022 17:06:38 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23:2o14y6hU7H6XzYwU7ZJcdTmUX161jxYKZh0ujC45NGQN5FlHY01je htvWDrXPavZZ2Xyc4h/YImxoRsGsJGEndE2GgJo+Sg2FygW8JqUDtmwEB3MMnLJJKUvbq7HA +byyzXkBJlsJpMJjk71WlTZhSAgk/nOHNIQMcacUsxLbVYMpBwJ1FQywIbVvqYy2YLjW1LV6 IuoyyHiEAbNNwBcYj98B52r9EgHUMTa4Fv0aXRjDRzjlAa2e0g9VfrzF4noR5fLatA88tqBe gr25OvRElU1UPsaIonNfr7TKiXmS5aDZVDmZnB+AsBOiTAbzsA++vdjbJLwwKqY4tmEt4kZ9 TlDiXC/YUQRfYvMg/UNbx1ZLSUgBbdDyaCfC1Hq5KR/z2WeG5ft6/IwSlo5OIQZ/qB4AH1O6 PZeIzcIBvyBr7vnmvThF7Uq3514apCzZevzuVk4pd3dJfwhXJbITr6JtYMIgG5rw84XE/+bZ 8cdcTZidxeVeBRTIF4YEpUjhKGpgFHkfDhRqVbTqqsr43XZigd21dABNfKOIYbUHZwLxR/wS mTu02/UEhFLGPmk1xm740KXre2InRrUV9dHfFG/3qc10QLDroAJMzUWWF+jrfSiiWalUs5FI kMO/Tc266k0nHFHVfH6AVujr3uNvxpaVNtME/AwrgqKz8I4/jp1GEBHdn1naMc3pPMyRAIui GeTmuL2XRZG5ej9pW2myp+Yqja7OC4wJGAEZDMZQQZt3zUFiNFu5v4oZoY9eJNZnuEZChmrn G/X9HlWa6E7yJ9Uh//irDgrlhr1/sCRJjPZ8Dk7SY5M0++UTIn7IZen7FHa6bBPLZqZU1PHt 38B8yR/0AzsJc7W/MBuaL9VdF1M2xpjGGGA6bKIN8V/nwlBA1b5IehtDMhWfS+FyPosdz7ze 1P0sghM/pJVN3bCRfYpPdjvVZ16lve+RIqNuhXogjxmMsYZmOivrH8GWKJs9zqFfLUEyPBiZ MfHGSpSJS9CUP05lFJauNvxIZdymXFhlQs/tLjgwhKr3qCfaBaopUQtYTOzghQCxPrc+m39q o8HX+PXlUk3eLCgM0H/r9VJRXhUdidTOHwDg5ENHgJ1ClA6QjtJ5j646e5JRrGJaIwOzr6Uo inkABYCoLc97FWeQTi3hrlYQOqHdb5wrG47ICZqNlGts0XPq671hEvGX5doL7Qh6sJ5yvt4E 6sMd8maW6sdUTvC8jUZK5b8sIx/flKgggfXZ3ipZz02fphBQQ3V+4a9L1K+qXVWU3K65Zkkv rmt9gLHWp5dFQ5sO8bhbq79xV2Gu3VAyvl5WFHFI4UIdUi1qNpqJiX9g+UZOcYJLRmflDKW2 xzPWUUXpPXNvoVz+97M3PjWo4CsGup4P0xbA2iCtOfvZHSGpjf7zNYZAuiSfD3bWGflw4mYZ L1Yn6PmLfkKvFdWqI4gQbxl+qQzuon0rLhAwwU4QXjGYgj5Cr5kJXXaj8BDurcXnu1e502tV UeG+90cNrSVON7vVlUWIVN9POiE0PgVnBjU7Og0eRyrvX4qoOLaCUgCbQORjCF9LaduNN13y +kWuPkJtV61hC0qBdDa3CpawGKBcy4bWKI9u5BHWoKy0lg3yktPaID3AzPt5M3dcM1FN0Qnf m2OiKzZi+gOz0bOaSBrR3+Tm/FSgJ0PvFZFzUMCOl7Pkd3A36dl0BpU+DUxbwJU0hQeirMqa zU3bxAtKPXc5SpsiehCQ3uoRVNLCiqZzVOvmVEHo23uSRX6XGL6KmBga/2G+1oU8j8Gc2EDr q2Y0mvsTR3jYNr1gnkpQUdgpvHuJTCrGtYuRCxz8wW585gGjf7NhfHofmUNohrjR8wwmE3ar 69h++MYhWgX88IPi/VTNmVY/ex4pNO4yKhqWv5k9aINW27dZDGv036FLEXZlgZlOanR6UHhY yBxDpsnailSHxpiYtzW6WDg7lO0cDMUCAI+R47W
IronPort-HdrOrdr: A9a23:30+TkauSUtoIkkNhedtpiQxk7skDVNV00zEX/kB9WHVpm6uj5q WTdZUgpH3JYVMqM03I9uruBEDtex3hHPxOgLX5TI3SPzUO0VHAROsOgbcKqAeBJ8SRzJ8k6U 5ISdkbNPTASXR8kMbm8E2ZPr8bsaK6GXmT9IHjJqFWPHhXQqtp8gt2DB2aHlcefnggOaYE
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,303,1654540200";    d="scan'208";a="332601631"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;	h=from:subject:mime-version:content-type:content-transfer-encoding:to:	cc;	s=smtpapi; bh=chjNUOF97z3Cij+pJ229z15qo5pVYKDWc5Y5E98Ul0k=;	b=HCzvYtdOPSwm0p+LtNGuiT+qEPMk0cM74SVL2jSnGAXvIcY1qlE4qO9K5elKwvSgDZGa	udGGIGqSGihLNb99gQWeHlZGlmsS9OmIGqk4muBOcQCHRddINW2CaN8G/xjVtSGNGn/47T	/rnW0S8o/+uk3msdVO7vt4c7aHWXH5bPM=
Received: from bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com([192.168.1.1]) 	by PME Mail With Id 1662721556089.10323;Fri, 9 Sep 2022 16:35:56 +0530 (IST)
Received: from vdvm33.logix.local (127.0.0.1) by tblr42.logix.in id h3cikc1oo38u for <helpdesk@satragroup.in>; Fri, 9 Sep 2022 17:06:38 +0530 (envelope-from <bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com>)
Received: (qmail 20535 invoked by uid 1012); 9 Sep 2022 11:36:38 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.8.22])          (envelope-sender <bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com>)          by vdvm33.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 9 Sep 2022 11:36:38 -0000
Received: from o6.sgmail.github.com ([192.254.113.101])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Sep 2022 17:06:35 +0530
Received: by filterdrecv-695df99fb7-56wbl with SMTP id filterdrecv-695df99fb7-56wbl-1-631B2540-13        2022-09-09 11:36:32.111852482 +0000 UTC m=+1257933.575159827
Received: from smtp.github.com (unknown)	by geopod-ismtpd-2-1 (SG)	with ESMTP id 48ndvGvRSHGr0Hl1Cl4hSQ	for <helpdesk@satragroup.in>;	Fri, 09 Sep 2022 11:36:32.080 +0000 (UTC)
Received: from github.com (hubbernetes-node-daee7fc.ac4-iad.github.net [10.52.220.37])	by smtp.github.com (Postfix) with ESMTPA id ED9265203EF	for <helpdesk@satragroup.in>; Fri,  9 Sep 2022 04:36:31 -0700 (PDT)
Mime-Version: 1.0
X-Auto-Response-Suppress: All
categories: account-security,new-oauth-authorization
X-SG-EID: =?us-ascii?Q?lvRoPqAywfdEp7HehvnY9O2Y2c8nKqVHM+o6Ig4zxSprf+iGp4eNl31wISMBZc?= =?us-ascii?Q?D0lglt4q4MhXms+v9nKSlZAVlGDM+pXEsOVf8c7?= =?us-ascii?Q?kfbyBXFCF=2FRW6SQ8eAbWt2zmIz6p0bq8Sh32iIc?= =?us-ascii?Q?DWlDfvYmaSEPP6mN6qG45AodiXlMjTJcKz3WDST?= =?us-ascii?Q?8OqUj15EvE9yXdg3jTNZfzgV0yZxvH7p+lbYQUG?= =?us-ascii?Q?HRQif6Pu+kJoUr3nGNfp1DxTNy8WiuQBYQEDc6?=
X-SG-ID: =?us-ascii?Q?N2C25iY2uzGMFz6rgvQsb=2FgauQKcZmYl4RcdBO2t13V6dm9LGmTZbVZ5FcpZ6u?= =?us-ascii?Q?v1=2F7pMmGUJmxwbdDxXbe4ZhQbHIMrxJ7ARN4=2FTv?= =?us-ascii?Q?aZHrWMjQ6aNCEd2tUcJ5RYXYsio?=
X-Entity-ID: /f+S0XqulHHajbNb6hGdxg==
Subject: [GitHub] A third-party OAuth application has been added to your account
Date: Fri, 09 Sep 2022 11:36:32 +0000 (UTC)
Message-ID: <631b253feb935_6ed4f8105823@lowworker-78f9664979-qljsc.mail>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: GitHub <noreply@github.com>
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com>
content-type: text/plain; charset=us-ascii
content-transfer-encoding: 7bit
X-PMAttribute: 1662721556089.10323; mb_id=QSM1413892035136; imapid=30886; del_to=helpdesk

Hey SatraMobile!



A third-party OAuth application (JetBrains IDE Integration) with gist, read:org, repo, and workflow scopes was recently authorized to access your account.
Visit https://secure-web.cisco.com/1ORY9L5nYLcVG8CJEreapqft2mOd18hEBYP1AQUUkWiP4CIBdkDMqtwxmwrnB10ToXURG_PON1xEkfKtpK9wF9Qj3p45HLCRQauVmZK2aiB2CufQ2s_qXr7FY3P-9Ok65xrr2XkQXoCshk1lYDvO4XeP78LvYUU5YYOPV1cjndEd9talqiXiGlx4I71G65NpWFOtwxQK5YHfgVQjKg5X337fra2n0BFZbxM1maRXUz_LsjKufHqTsA3E3YrvjycT7y_Yll5_ftkUZlXb5niv0AlmT1QjAHWoDV5Pll37kGpKw7Jt8lAWPHGJI5Ys6PZuJCILz5H21qkCmApu5QE2CK5kKrF3ItoQVfMxmin-sDq0u9mSmORwwWDCVBOKRYwRBmf4XDGfWfK_seJeyrtVpiQ/https%3A%2F%2Fgithub.com%2Fsettings%2Fconnections%2Fapplications%2F58566862bd2a5ff748fb for more information.

To see this and other security events for your account, visit https://secure-web.cisco.com/1FjuP1lDHUZQJaWsPQnrn5Lev9dU2tUnl_IbX_6KOgvwx1e1H4GSY4mvo-ZhGqFBAhQKsUIypgeB64sAVovW70P13ddrrqNMbLTX29bxCBd5oCncU-I_xSE_mW6aqrkpKB41cwlgBFanlpXuOE5lEYF2PL4vqywjeu8UMm5hnaYhC4yOCNqz7DRW0dwtDW-JWdrhiHwhKtMmd9TbKTiyOFsK3cbGLisg5LbXpQW7zL-RAnRLTNbhpcaES1EDMcv_twHb1qUGvZE1AMPLYtU_yBJRxZjdNGQEQH_J8u_Bh8Rcgv3WoHVrMxBsZA92syvCpirQyV9eB74SbdImtqeXBMR_L_Jex3YItlZb_JEe52f43vCBj1S1KZ4BPt7KXJ1zrWLpEunaVgsD9tNH8fceHgw/https%3A%2F%2Fgithub.com%2Fsettings%2Fsecurity-log

If you run into problems, please contact support by visiting https://secure-web.cisco.com/1IyjiInUNgCNtawDBBcVZd_sFohPmR3vqrRG5edgHja5uHz6rGtC7aixdozhfDtZ7XK5VZmq1UsNXh4GL_UkyHNIE5wDCWlO4pORoaqTewKNbnm49WjIRoKtbcsYwVg_qcEjY7rCfhmcf1vBuYeq6fJtl7yZZcMtnLRb_ZczMls6aKcPopN1p4cze2r8bpJDeCeFfuhDRHMEzpmZSQPy0XP_CvRGTy57m51IMRna3SaonEAraLLvmSeKlPe5IeiTd4BGCONOPmcmKhBA8oU_CFxt0YkJ8J-7nawQ2oT3kj6tAdg3psT7xZ4zHyGTwYo0lDA3uSeZ9tiIhTHKbkYwO2O66UN3QUzlQfEDF9f2GFXqEmvcIc_cTnN4zSS-2AubDOSKShjxIKBSpzUe4N1pLmQ/https%3A%2F%2Fgithub.com%2Fcontact

Thanks,
The GitHub Team

