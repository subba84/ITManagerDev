X-Qmail-Scanner-Diagnostics: from 192.168.9.66 by vdvm33.logix.local (envelope-from <bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.66):SA:0(IronPort):.  Processed in 0.046589 secs); 16 Sep 2022 10:20:33 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com  designates 192.254.113.101 as permitted sender)  identity=mailfrom; client-ip=192.254.113.101;  receiver=tblr2.logix.in;  envelope-from="bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com";  x-sender="bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:167.89.0.0/17 ip4:208.117.48.0/20  ip4:50.31.32.0/19 ip4:198.37.144.0/20 ip4:198.21.0.0/21  ip4:192.254.112.0/20 ip4:168.245.0.0/17 ip4:149.72.0.0/16  ip4:159.183.0.0/16 include:ab.sendgrid.net ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@o6.sgmail.github.com) identity=helo;  client-ip=192.254.113.101; receiver=tblr2.logix.in;  envelope-from="bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com";  x-sender="postmaster@o6.sgmail.github.com";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com; spf=None smtp.helo=postmaster@o6.sgmail.github.com; dkim=pass (signature verified) header.i=@github.com; dmarc=pass (p=reject dis=none) d=github.com
IronPort-SDR: V8Irit1HqYlI8Du62DDr2paKIw9JfYfqMxCD5l9PQ9DxIeXo7Va3FHO8IL262LdbOiwzsCkguu MBhbYYWHmSp/hfsUa9ZQBZ3T8M9UUyvPlSiCwg76Qprb+WPDRyAX3h9NxEmZaflK1tIuP8cepr DLoQkH30p/x57swRw9RhKq2Ro+eaDeHe4YDeT7T9XF1jXLvwwWqmPJ5syCi2C+HZpMiAu5wjQl 6DVKHH1fskYLUsYgd0Fg3E4K72nOJ7iGzgTEzRG4hEx2HO4/Vbzpm/6b4ouSARvMn7+Ao4KUga hyZwRdTdgo9mDRlRpdSRX+lF
X-ORIGINAL-IP: 192.254.113.101
X-ORIGINAL-TIME: 16 Sep 2022 15:50:30 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23:GCfHCa/QwyCCvEhELySMDrUDb3iTJUtcMsCJ2f8bNWPcYEJGY0x3m GodWm+GbKmMMWugfNtxPYiz/RsBvpGGmoRkSAA+qS4xFiIbosfsO46lIxarNUt+DCFjoGGLT ik6QoCYRCzhZiaEzvuVGuG96yE6j8lkf5KkYAL+EnkZqTRMFWFw0nqPp8Zj2tQy2YngXVvU0 T/Pi5S31GGNi2Mc3l08t/nrRCNH5JwebxtF1rCWTakjUG72zhH5PrpGTU2CByKQrr1vIwKPb 7yrIIdVUY/u101F5tuNyt4Xe2VbGua60QKm0xK6UID76vROjn1qis7XnRfTAKtao2zhojx/9 DlCnYLzTBUpGamcovgmEEdDMzp7bLJ9ypaSdBBTseTLp6HHW3yyhe5hCUg3OcsX+/p3HGsI/ vsdQNwPRknS3aTsne79E7A3wJ17daEHP6tH0p1k5TveEPAtTIuAE/mauYYDmTlpiMkLHfvaf 8YUcjk6dx3ceRRAIFAKENQ/ms+ziXz2cjkep1OJpbc9pWPUyWSd1ZC9bYSEK4PbGa25mG6gp GaZ+1v5Xy0bJfCe2yK69mzwgvHAyHaTtIU6TeLpqa4CbEeo7mweDAUaWEC4ieKwllS3VMhYN lRS+yxGkEQp3Ev1CMLyWhS5pDiLvwIcRtAWGOo/gO2Q9kbKyxjaA3oEaToRUsAd95EtZScvh 0Cyrfq8UFSDr4apYX6a876Vqxa7Ni4UMXIOaEc4oe0ts4SLTGYb3kynczpzLEKmpoaqRmyok lhmuAB71upD15dav0mu1Qmf22rEm3TfcuIiCuzqso+N6V0/f4Ggbo2sr1fa8fZdJsCSSVzpU Jk4dyq2s7tm4XKlznTlrAAx8FeBu6rt3Nr03QAHInXZ327xk0NPhKgJiN2EGG9nM9wfZRjia 1LJtAVa6fd7ZSX0NvUpPdzrVpR0nMAM8OgJsNiEMLKihbAhK2e6EN1GOyZ8Iki0wRVxwf1X1 WmzKJ70Uy5AYUiY8NZGb75CgOB7rszP7XjeQ5z01RWruYdyl1bEIYrpxGCmN7hjhIvd+V292 4sBa6OilksOOMWgOXO/2dBIcjg3wY0TWMqeRzp/LLLZeGKL2QgJVpfs/F/WU9Y7z/sJzLuRo hlQmCZwkTLCuJEOEi3TAlhLZ7LzXYt163k8OEQR0ZyAgiF4CWp2xKtAJZYxY5c98+lvkax9Q /UfIprSGftKQzXDvTsccZngpsppcxHy3VCCOC+sYT4eeZ98RlWQq4a1I1e3qXEDXnitqM8zg 7y8zQeFE5ANcARVCpqEYvyYyV7s72MWn/h/XheTL9QKIBfs/YFmJjbflPgyJ81QexzPyiHDj 1SZAAsYuOOLqIgwqYGbiaeBpoavMu1/AksDRjiCvOvqbXSC8zP6k4FaUeuOcTTMb0/O+f2vN bdP0vXxEPwbh1IW4YByJLBmkPAl7Nz1qr4GkwlpESmZb1mvDb88cHCK0dMV7v9KmPlCtg6/W 0bJ9dhGOaiDfsjiFQdJdgYia+2C09ASmyXTtK1keRSnuHcqpLfXA19POxSsiTBGKOUnOo0Sw dA+5pwc5Tu/vRx2YNyIuSZZqjaXJXsaXqR67JxDWN33ihAmw01paIDHDnOk+4mGbthBbhswL jmPiPaQjrhQ3BCaIX1tU2PC2ONcgdIBuQxK0VVELFOMw4KXivgy1RxX0DI2UgUMl0Qegr8vY jUzOh0nP7iK8hdpmNNHATKmFTZBMwLHqEb//Fs+kjGLRUefUGGQfnY2PvyA/R1D/jsELCRb5 ryR1E3sTS3uIJPqxiI3VENowxA5oQedKuEWdAGb88W5810SZmSjmaCrbGsM7RTmHcMsjgvMo uwCECOcr0HkHXZ4nkH5I9HyOXcspNSsP2NHSPBluqwIAWHBcne53j3mx4WZZJZWP/KTmaOnI 5UGG/+jnChSGMpDQv73yELMz3JJcCYV2ec/
IronPort-HdrOrdr: A9a23:6pW8bqxG/ufF2cn3NJ9VKrPwDr1zdoMgy1knxilNoHtuA6mlfq GV7ZYmPHrP4wr5N0tOpTntAse9qBHnlKKdkLNhXotKNTOO0AHEQL2KhrGD/9SPIVyHygd179 YFT4FOTPH2EFhmnYLbzWCDYq0dKQC8gcaVbDHlvg5QZAtjdq1v6Rx4BhzzKDwQeDV7
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,320,1654540200";    d="scan'208";a="85699794"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;	h=from:subject:mime-version:content-type:content-transfer-encoding:to:	cc;	s=smtpapi; bh=1EW8OVgAgvl5p402dU2iIStb+n0Yuip0FDWD9XHIWxE=;	b=HI+hWZN26ojVwuK2uQGHamzI4PWtBLagINxbx9g11qwWSwnJxVxD9nB9UivOH+fbmPHh	vV8+Kgfd6dYW1kqZQ6zVLw6IrE9lNby7gnOCZusrNCfbUa5BanJrj+187okA8BX5H9JE6J	ablH7K55hr7KmER1SEzfW+myQs827j+Oc=
Received: from bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com([192.168.1.1]) 	by PME Mail With Id 1663323637602.15931;Fri, 16 Sep 2022 15:50:37 +0530 (IST)
Received: from vdvm33.logix.local (127.0.0.1) by tblr42.logix.in id h4h6v21oo38l for <helpdesk@satragroup.in>; Fri, 16 Sep 2022 15:50:33 +0530 (envelope-from <bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com>)
Received: (qmail 101855 invoked by uid 1012); 16 Sep 2022 10:20:33 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.66])          (envelope-sender <bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com>)          by vdvm33.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 16 Sep 2022 10:20:33 -0000
Received: from o6.sgmail.github.com ([192.254.113.101])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2022 15:49:19 +0530
Received: by filterdrecv-7b57bdb694-s4xqh with SMTP id filterdrecv-7b57bdb694-s4xqh-1-63244DA4-A4        2022-09-16 10:19:16.999296783 +0000 UTC m=+305724.681107017
Received: from smtp.github.com (unknown)	by geopod-ismtpd-2-1 (SG)	with ESMTP id hSzFfcHaSLidAFgPAhwvVQ	for <helpdesk@satragroup.in>;	Fri, 16 Sep 2022 10:19:16.862 +0000 (UTC)
Received: from github.com (hubbernetes-node-23f4f8e.ash1-iad.github.net [10.56.224.42])	by smtp.github.com (Postfix) with ESMTPA id B8BBE840568	for <helpdesk@satragroup.in>; Fri, 16 Sep 2022 03:19:16 -0700 (PDT)
Mime-Version: 1.0
X-Auto-Response-Suppress: All
categories: account-security,new-personal-access-token
X-SG-EID: =?us-ascii?Q?lvRoPqAywfdEp7HehvnY9O2Y2c8nKqVHM+o6Ig4zxSprf+iGp4eNl31wISMBZc?= =?us-ascii?Q?D0pTpBOUHa7MZ+cSkZy9JdKo7fQTl37TkLCL=2Fwg?= =?us-ascii?Q?VbfZRxYz+IWZ5jW9jG0DHx3yITgiLwcurNd+Fl0?= =?us-ascii?Q?Nqr8g0AvlxwPi0rt0J6gO3MhERRhAbq6iKJiSiA?= =?us-ascii?Q?PD7v=2FdyU8KTSpaIVk84LEpVBioxMghvfHg1S8zl?= =?us-ascii?Q?z9jdNKb15bbNYub3aL0jBuQedcwkqMP3N7WahC?=
X-SG-ID: =?us-ascii?Q?N2C25iY2uzGMFz6rgvQsb=2FgauQKcZmYl4RcdBO2t13X4z83KQfon5useyDcTSn?= =?us-ascii?Q?7c8oXj9rLB=2FViIUw1XEtEyGTOtJ9CXR1GZyfVcu?= =?us-ascii?Q?ouJ0dG67NYl3B=2Fm+naZJUXmRIy4?=
X-Entity-ID: /f+S0XqulHHajbNb6hGdxg==
Subject: [GitHub] A personal access token has been regenerated for your account
Date: Fri, 16 Sep 2022 10:19:17 +0000 (UTC)
Message-ID: <63244da4b6e19_92d4f8961a1@lowworker-56d46fd6f8-g2d4k.mail>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: GitHub <noreply@github.com>
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <bounces+848413-f1fa-helpdesk=satragroup.in@sgmail.github.com>
content-type: text/plain; charset=us-ascii
content-transfer-encoding: 7bit
X-PMAttribute: 1663323637602.15931; mb_id=QSM1413892035136; imapid=30970; del_to=helpdesk

Hey SatraMobile!

A personal access token (android) with admin:enterprise, admin:gpg_key, admin:org, admin:org_hook, admin:public_key, admin:repo_hook, delete:packages, delete_repo, gist, notifications, repo, user, workflow, write:discussion, and write:packages scopes was recently regenerated for your account. Visit https://secure-web.cisco.com/11Q08xUoeMx5mRcgKFFsS507zDfxjWJXMsiXCw6HTkcpsVABpctwBLWJdUnwiSMW8-A59OtKq_h_QLhMBaRqgl0-HX31FcUlDj53nQvidHR5aKzuo-awp447SB74ll_IL8C56k4mlIVN3XR79nZaFH5b7rI6IHIpIz817-ismKR7n5i2_eqdsaWjx7lu6vE5Tr8WhOB1RtM2ypUUh9fIoTJ_IR5V8HfOVseIMuIoqmYZLlDhiPi_wlOe1WG9JWmEBpR-vuafxkqbEQOHA-oHssTWOczpsdUg91FCdyjOGDzCI-XwZmFBJ5f4_xjdJtxs-7ggbKwAAjUuwUWbSUFDCjeGXDpS5M4ejkCQucwELh-RhtyCP-QZJJ0LSk3E_qsHOB1karhNh_BtAOTelbBv0bif5CGWV_D6My47ieAN3HL1d8FrRwj1ax23XJYPOwc-LGx9WzvTGq0H5fWBy6M1kOQ/https%3A%2F%2Fgithub.com%2Fsettings%2Ftokens for more information.

To see this and other security events for your account, visit https://secure-web.cisco.com/1kNARhjulM9O8fGNyujrkPhlRQdsWFkzZlTgQtjdRjldaev2nTFxyIsE8dSfA2jwKWP-uvDKxF1N8cL324qYFRyv_5ldgLikBcH8RO17IB_PQGHO8_YrmzIjEOAVsj3eMCDWv7HHZqKZdV5_q3JaDhBS6butGqDYiKja2HjTgxY9WaNqMKx8i3IUtrWybpsPG-EC3KsAxYO15y4U1ksD0WIvAjBS2PwKGSwOw__GfRioLqunLc74JJH1vrY5nj85oPH-UlmHFox7ZokgcMpKqM5-4HmAlAcbWNg34cv61h7FX0V9WmSX5hgQw1tJTY7Y230kgkhIO_-xmHsVYyqyBpGehR68JxzexDqocCI6nqtX-V-rv1_A50w0vlnD4XCmedYGvLPq3JLcqjQrG4J0aXdrcmacYSM4xVkyswnAcpJ6DxUuXgf0A5qNJGQ4V0Yu_EFR6xxdiaU3Hfq35A7GA-g/https%3A%2F%2Fgithub.com%2Fsettings%2Fsecurity-log

If you run into problems, please contact support by visiting https://secure-web.cisco.com/1QyJLB7FGHWyIMJtNX7kx0boiInGJmYOPEoY1wjPbymeYmW8xXESJCZnhjRNy9kV3H455q_-6N7tlQ4MjH7XnjByKRMfSL_P3ofbZDBC9LzOFcLk1GPZynfhKA9caBi_olWkbUppyumYUasSqAPF2rN5xBKJhLv9ODMyJTALbnGU-kUo1fYrLoTcz8kftLF2wJQKVnU0hmo1cgZe3QV7kNdm1kCnMN16VmQVTKYtXJDNvqcaOc1dNhogceBTeD4oVqGjd2mXyrGWBTjCQFpFgUOrJDpz7a38DwRwEQKNaPTBHsswnkF6VWpT97DNTpQsOz2jWwnaxtQfn3aTEccJ8Bn1P4r_wgVfmvcAOiNMt0kHLxPpCjW1TjwOsGN7x2bi8F5yxv45nlgUoKfKt8NipjRevJCCd6D6buPFxw2K3Qs7QPqD9nSEicErIK61NwLYNXhaBjC8QdZ6Z2v4FDm8rhw/https%3A%2F%2Fgithub.com%2Fcontact

Thanks,
The GitHub Team

