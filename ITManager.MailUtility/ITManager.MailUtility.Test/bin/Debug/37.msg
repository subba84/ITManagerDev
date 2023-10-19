X-Qmail-Scanner-Diagnostics: from 192.168.9.71 by vdvm33.logix.local (envelope-from <bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.71):SA:0(IronPort):.  Processed in 0.036859 secs); 09 Sep 2022 11:38:38 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com  designates 192.254.112.98 as permitted sender)  identity=mailfrom; client-ip=192.254.112.98;  receiver=tblr2.logix.in;  envelope-from="bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com";  x-sender="bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:167.89.0.0/17 ip4:208.117.48.0/20  ip4:50.31.32.0/19 ip4:198.37.144.0/20 ip4:198.21.0.0/21  ip4:192.254.112.0/20 ip4:168.245.0.0/17 ip4:149.72.0.0/16  ip4:159.183.0.0/16 include:ab.sendgrid.net ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@o3.sgmail.github.com) identity=helo;  client-ip=192.254.112.98; receiver=tblr2.logix.in;  envelope-from="bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com";  x-sender="postmaster@o3.sgmail.github.com";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com; spf=None smtp.helo=postmaster@o3.sgmail.github.com; dkim=pass (signature verified) header.i=@github.com; dmarc=pass (p=reject dis=none) d=github.com
IronPort-SDR: M2zVk3wCWt4pmFzULTRjfcUWI8Ni9kltLUJ/gt5d3kDKnHWb1344eCULQGfdvzrzDWj6YFP/34 qXzMpN2syIWu6yET1Jeaw4cRuwh7VGpcOfwPZRwX4P9M0slB8bV8+qOtCD4Pr5TME5uzVAE0RU soyBkh+4POYFG1xOax9LEutfn+X9eabjd95RaIsZO0c7u8xfLao6xZltiprczWCx0NCKfBij6T nmUN/kmkBWM9d5qGY9feQItacUVjrWzTSrRzW/FnELYNpVkUFWJ3Qg87rGTnkWNXQwqXXt+Qd/ 6ztNJWj/k7JfXHRbThaVk8vL
X-ORIGINAL-IP: 192.254.112.98
X-ORIGINAL-TIME: 09 Sep 2022 17:08:37 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23:PW2erKoTZFDbw4Wn1+6ncRb8jiheBmL0YxIvgKrLsJaIsI4StFCzt garIBmCaazYZzemfNgiOY6zp00FscXUxtZnSAtpqHs1QigQ9ZacVYWSI27OZR+ff5bJJK5FA 2XySTVhwOQcFye0SsKFa+CJQUFUjP3OHvymYAL9EngZqTVMEU/Nsjo+3b9i6mJUqYLhWVnV6 Iuj+5e31GKNglaYDEpEtspvlzsz55weiBtA1rDpTa0jUPf2zhH5PbpGTU2DByKQrrp8R4ZWc 93+IISRpAs1yfuC5uSNyN4XemVSKlLbFVnW0hK6UYD76vRJjnVaPqoTZaJEAav+Zvrgc91Zk b1wWZKMpQgBLJPov8gZTBxhTThGLIRY8+D1BHyfrpnGp6HGWyOEL/RGCxpwJoId8+dzR25P6 fwFInYGaRXra+CemePhDLMx2oJ6dZOtbdN3VnJIlVk1Cd4sRo3FSKjRpo8EjGtp3YVARPjXI soUbSJjYQ/DNgZGJk0eB4g5gf/uh3/XaDJdoVOR46U2/2jOxkp6172F3N/9IIXUGpUJzxvEz o7A13+jHRBBNMSF8h2EyleBgLTV2n7WArtHQdVU8dYz3wzMlgT/EiY+VVa/ufW0kU2WQNtDM UUb4C0zte4z8iSWosLVWEb+u3GBtx8YHdVRD+0n4keGza+8Dxul6nYsXABlT/Aiq8oPGyUSx 3aXlIzbIDhPr+jAIZ6CzYu8oTS3MCkTCGYNYy4YUAcIi+UPRqlj03ojqf4zTsaIYs3J9SLYm G/V8XBv71kHpYtaiPXhpAGvbyeE/8CRFmYIChPrsnVJBz6ViaaiPMqz5l3S7PIGI4eFTkSL+ nMDnqByDdzi77nSz0Rho81XRNlFAspp1hWA3TaD+LF9qFyQF4aLJ9w43d2HDB4B3jw4UTHoe lTPngha+YVeOnCnBYcuPdzrVZpznfO/S4W7PhwxUjaoSsgvHONg1HEwDXN8I0i3+KTRufhuZ MrLLa5A815DUf0+kmLeqxghPU8Dn39vmjO7qWHT1Bmh3bWEZXL9dFv2GArmUwzN14vd+F+92 48Gb6OilksDOMWjPHi/2dBIdzgicyNkba0aXuQKLIZv1CI8RDt7YxIQqJt8E7FYc1N9zb+Ro i3lAxUBkjISRxTvcG23V5yqU5u2Nb5XonMnPTEme12v3hAejUyHt8/zrrM7Iusq8vJN1/lxQ 6VXcsmMGK0QGC/I/j0cad/yrZBiaR7tjgWLZnL3bD86dp9mZgrI5t69J1q2pXRSVnfvuJtsu aCk2yPaXYEHGVZoAvHWX/TznVm/in4QxbBpVEzSL9gPI0jhqdA4KyH4gvItDdsLLBHPmmmT2 wqMWE9KqujRo5I/ttLOgPnc/YuuFuJ/GGtcHnXatO/nbHiHojL+mYIZCbSGZzHQUm/w6Z6OX +QNwqGuKuADkXZLr5F4T+Rhw5U46oa9vLRd1AllQCjGYln3WLNtJn6KgZtGuqFXnOcLvlDwQ U2K89hef7qIJMP4GhgaIw98NraP0vQdmz/z6/UpIRyjtXYmoebfDB1fb0uWlShQDLppK4d7k +0vj84h9FLtgBQdMuGA0nJe+VOKIyFSSK4grJwbXdXm01J51lFYbJXAISbq+5XTOc5UO0wnL 2PGnqbEnLgAlEPOf2BpTSrKhqxGipEHuRQMw14eJ0mD3NHCg6ZvjhFW9D02SCVTzwlGirsiY zk2axUofajerS11gMVjXny3H18TDhOu+nvulQkDmlrZeE/0BGbDG2swZLSW90cD/mMBJDUCp OOEyHzoWCrBdd3q2ndgQlZsrvHuQLSdLOEZdBxLyyhEI3U7XdYhqqj1I3EHrhLmBYU+hVHHu OMs9+F1AUE+2ej8vIVjY7R2F5xIIPxHGICGaepu+aoIGSfTeS2yxDLIIEe0Ei+ID+Kf6le2U qSCOeoWPymDOO2yQvz3yELCz3KYXBLk2TbaRo7WGA==
IronPort-HdrOrdr: A9a23:q2Oa1KiwthHhTs1uPReVjkhWYHBQXvgji2hC6mlwRA09TyX+rb HKoB17726XtN91YhodcL+7V5VoLUmzyXcW2+gs1MaZLWrbUQKTRekJgOffKlbbexEWmNQtrZ uIWpIObOHYPBxXitv7/Rn9M/tI+qj9zElwv5a58566d3ASV4hr5xp0BACBEkFtLTM2YqYEKA ==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,303,1654540200";    d="scan'208";a="216784954"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;	h=from:subject:mime-version:content-type:content-transfer-encoding:to:	cc;	s=smtpapi; bh=7GFdgWz3O3jZo3b43Xwip0tKKxp1HuGVa02S9JHHRzs=;	b=VSivQq7v4ouR9XpzoT0xk8vzWQc/yKgNB9Z6ka/99Vhs1ot9I59kEMDl5U4pTtf43ULe	FPuDgfCULOV71DSTCh0QgTvMsETnjtAnN4f1UahqVNYNzTgLvGjTlsy2r/dykse6iFPiii	EFCGp5ItHiQuMGXfO54ZKOZWYMaK6HvBY=
Received: from bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com([121.240.11.42]) 	by PME Mail With Id 1662721677341.10328;Fri, 9 Sep 2022 16:37:57 +0530 (IST)
Received: from vdvm33.logix.local (127.0.0.1) by tblr42.logix.in id h3cis01oo38q for <helpdesk@satragroup.in>; Fri, 9 Sep 2022 17:08:38 +0530 (envelope-from <bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com>)
Received: (qmail 27933 invoked by uid 1012); 9 Sep 2022 11:38:38 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.71])          (envelope-sender <bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com>)          by vdvm33.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 9 Sep 2022 11:38:38 -0000
Received: from o3.sgmail.github.com ([192.254.112.98])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Sep 2022 17:08:35 +0530
Received: by filterdrecv-7cfb44c577-29w2q with SMTP id filterdrecv-7cfb44c577-29w2q-1-631B25B7-52        2022-09-09 11:38:31.84292892 +0000 UTC m=+1257855.226482748
Received: from smtp.github.com (unknown)	by geopod-ismtpd-4-3 (SG)	with ESMTP id iEGzMPxFRKaTRKOEha7G9Q	for <helpdesk@satragroup.in>;	Fri, 09 Sep 2022 11:38:31.833 +0000 (UTC)
Received: from github.com (hubbernetes-node-97c486a.ash1-iad.github.net [10.56.206.65])	by smtp.github.com (Postfix) with ESMTPA id B07035E0232	for <helpdesk@satragroup.in>; Fri,  9 Sep 2022 04:38:31 -0700 (PDT)
Mime-Version: 1.0
X-Auto-Response-Suppress: All
categories: account-security,new-personal-access-token
X-SG-EID: =?us-ascii?Q?lvRoPqAywfdEp7HehvnY9O2Y2c8nKqVHM+o6Ig4zxSprf+iGp4eNl31wISMBZc?= =?us-ascii?Q?D0h1tyGVLF0OsiWkptLOOZXX+ytv8C9buQxzWq7?= =?us-ascii?Q?hEeVyXxyH9U1+VWExThL4FCkb+bD8JVh3O1gscT?= =?us-ascii?Q?AKhp0cZW0ExdSAO=2F3l44cvMBKme3RB5387zYZhM?= =?us-ascii?Q?KBGy5BQWcdzOtT8VGja5p6tdK3BKQbwAJMaOGbW?= =?us-ascii?Q?Je1HWqF4EJbGJc80DHIchvfSGrq60KbLXvSrFo?=
X-SG-ID: =?us-ascii?Q?N2C25iY2uzGMFz6rgvQsb=2FgauQKcZmYl4RcdBO2t13X4z83KQfon5useyDcTSn?= =?us-ascii?Q?7c8oXj9rLB=2FViIUw1XEtEyGTOtJ9CXR1GZyfVcu?= =?us-ascii?Q?ouJ0dG67NYl3B=2Fm+naZJUXmRIy4?=
X-Entity-ID: /f+S0XqulHHajbNb6hGdxg==
Subject: [GitHub] A personal access token has been regenerated for your account
Date: Fri, 09 Sep 2022 11:38:31 +0000 (UTC)
Message-ID: <631b25b7ae8a2_99d4f881252@lowworker-77f55fb444-vbtjb.mail>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: GitHub <noreply@github.com>
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com>
content-type: text/plain; charset=us-ascii
content-transfer-encoding: 7bit
X-PMAttribute: 1662721677341.10328; mb_id=QSM1413892035136; imapid=30887; del_to=helpdesk

Hey SatraMobile!

A personal access token (Marg Sahayak Android) with admin:enterprise, admin:gpg_key, admin:org, admin:org_hook, admin:public_key, admin:repo_hook, delete:packages, delete_repo, gist, notifications, repo, user, workflow, write:discussion, and write:packages scopes was recently regenerated for your account. Visit https://secure-web.cisco.com/1AR26LtGtK_gMUuD36kxRngZ4ZEWd25D863sF-b7UWReoOeUtM4-rpegyy6MEV1ihJL5Gl53vKOo0uN1b4QduVnyHBNj2gCg7ai9pHzkofxmyRHfHXNbDnI4DZ0ItREcLhrJ8bMeq2LcbXI3Lct4wp7jSApRV_LLwZfeGflgHOq949GnoYQIN9OFNAqAoVDwWZ5FU3F-C0ARLj7uY3SZGlgIkMthGwun1al5liYaD0_aAxiOnAeXMkeiYYt2zoaDz_Gm7q1wk1mOW8FCKd7fmwKlgGZRqZ5_Iwbx1JhEa0CFcylUobLjSLaHFU-tvM_xRVesrr_wi95W1MpJSzet3275YPwUtixADI2NMhj_97CUPSWcopmgN7B7-YqzMwQYJ57xlMHGP20MLj0bvAhYvd0ZtzlMsJC4mVq3UE3ZStbT8uS6VV7dYw_9SYcQN3JSt5KsnTcR652dxdEiLeNrV4g/https%3A%2F%2Fgithub.com%2Fsettings%2Ftokens for more information.

To see this and other security events for your account, visit https://secure-web.cisco.com/1UG_vNqv8Y5RC7hdZUzkPL3-zdmACLNg9BJtK9ldmc0M-19WIajSJpFZyL_-FbIMbn4mYRENtT9adBO2KsxMJ6D7JI7ztrb8lRx9OIFu8fynrmDPPk5jNS6YH-kweSTIwLzaeaJNwrVjGE94pE7WDkvAMKjSBCKn8HBW3srXuLrVlgXL2J8-MPOYSjJqDJLNtfUBopAVA2n1ETyfq2UHmQyyixDnb_wJY1HAs99PcaPZzV8gZi7TZzsSYyjHw25DTlsJUm7d6ZjPxI3V4HjSYeW9jMM3W2AIcYyyhdgdNBFmuw--ffBl9qwedcVcpqgRSLKGezFTG4KLdLk7CitjZWy3wkjqeDAQIS_qS3zFPChDAaQRAfq1CyoYDAyQjMUkzIbnchrOI1x1WmvIwr_r3vya9bsrC2t4TfgvjitWSXsBj3p5hW8YQRzJvPaMjUab7dp1i6fLdv5C9xjSiFeLVPg/https%3A%2F%2Fgithub.com%2Fsettings%2Fsecurity-log

If you run into problems, please contact support by visiting https://secure-web.cisco.com/1R_EQ3ysq_LXAryWyFqp0UdwEGPuoWoTZS6YN4gcNRCvtNjUTsTAq1Y59SPmgLadcvGPgjbwI6HWbCCp7ZYb1Z_Yp1e-VIr6qCzXIeY-K8mTfAmXBdIo7CYDK3cv3ekMoPy39sIW7xbKlEj3dfVIzJGC-jpR8BTR7Ple7dik0Ee5hpISD0wsW3KbPX3bhJKgR6nJhzL8LiQUXtqnEExZ4i6f9MdKjw1pPrWmeKEYLHSS4eBy-PO7Iz4oEyThfj-_lSDA1MOil-x3gYOn0uZnQhaxXLseDZInI00lwQB8FoLzjF_NIPgvThd0M--Zm_MgT1i1D3C77Ub7w8daawyQDckaexysZ1Bbm2cDErCnNq2R8HtE0sdJ7tOcpgZGR7Jz0TzyZPhhwJYOyLKx0v1Ir_g4XIUKVSusRYtYgKqFcoSRHb0VcBsSm-XBEfr8YFbP6pS327yukvOUoJsD16qO-Mg/https%3A%2F%2Fgithub.com%2Fcontact

Thanks,
The GitHub Team

