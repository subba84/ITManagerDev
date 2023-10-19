X-Qmail-Scanner-Diagnostics: from 192.168.9.76 by vdvm34.logix.local (envelope-from <support.trueconnect@jio.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.76):SA:0(IronPort):.  Processed in 0.033052 secs); 13 Sep 2022 10:07:48 -0000
Received-SPF: Pass (tblr2.logix.in: domain of  support.trueconnect@jio.com designates 49.40.2.144 as  permitted sender) identity=mailfrom; client-ip=49.40.2.144;  receiver=tblr2.logix.in;  envelope-from="support.trueconnect@jio.com";  x-sender="support.trueconnect@jio.com";  x-conformance=spf_only; x-record-type="v=spf1";  x-record-text="v=spf1 ip4:49.40.2.101 ip4:49.40.14.18  ip4:49.40.2.144 ip4:49.40.2.145 ip4:49.40.14.57  ip4:49.40.54.128/27 ip4:49.40.55.128/27 -all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@smtp2-outgoing.mail.rjil.net) identity=helo;  client-ip=49.40.2.144; receiver=tblr2.logix.in;  envelope-from="support.trueconnect@jio.com";  x-sender="postmaster@smtp2-outgoing.mail.rjil.net";  x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=support.trueconnect@jio.com; spf=None smtp.helo=postmaster@smtp2-outgoing.mail.rjil.net; dkim=pass (signature verified) header.i=@jio.com; dmarc=pass (p=reject dis=none) d=jio.com
IronPort-SDR: JrAqQNnamuagw6K7gcFbgS9ivdSFUjMSIm1CjqGrhytIy5sltBMyHQPLDvlbkA5f/EqTsTQEW0 W0GA9+ArLqDmxx7oTQjYddN3jHDMwamLzyCO+kuCqXFtBybJHsRhueToD8GPxE5WUP9URd54uw vs+fnQUiQajEjfQNq5g15OOIiS+s2tVgPtIlqUmGZwZO3Y3xAeK43fbNvk/TKlYK3Rc3jCgA/A SGiLwO9ulZ/Fh559JHhAW5HwbhOZiKl/oKSXo6Mrxeni68QjZnCoFNSOIcHI1ZOD/mmzafLtNQ 4PebdIsQggSUec43hKpX/bUW
X-ORIGINAL-IP: 49.40.2.144
X-ORIGINAL-TIME: 13 Sep 2022 15:37:47 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23:oxF1v6iiJARdlJT47XOqhxBeX161GxYKZh0ujC45NGQN5FlHY01je htvX2HQOKqJZWP0Ldp1bI22oUICu5SDnIU1TAdoqyxgQy8W8JqUDtmwEB3MMnLJJKUvbq7HA +byyzXkBJlsJpMJjk71WlTZhSAgk/nOHNIQMcacUsxLbVYMpBwJ1FQywIbVvqYy2YLjW1LU4 ouryyHiEAbNNwBcYj98B52r9EgHUMTa4Fv0aXRjDRzjlAa2e0g9VfrzF4noR5fLatA88tqBe gr25OvRElU1UPsaIonNfr7TKiXmS5aDZVDmZnB+AsBOiTAbzsA++vdjbJLwwKqY4tmEt4kZ9 TlDiXC/YRUiMZHRk70eaVpFHTsuIvQYx4LFZmfq5KR/z2WeG5ft6+5rEFlseIoF5ulwAGdBs /kRKTRLdBKCg6Swza7TputE2pVlcJGtZsVG5i0IITLxVZ7KRbjYXr3S4sVEmisqm81FGvDYa sEFQThua1LLZBgn1lI/UcJnwb/11iWlG9FegH2qvoZ0u2r08AgvjOL/MtjyXvKPBsoAyy50o UqdpTihWUtHXDCF8hKF/3a0iuLUngvgUZ4IHbKi8eNyxlyVrlH/EzUNUEej+7y+l1KxXNNZJ AoR8ysq67Iw9UjtSNThN/GlnJKalgwXVOZNGLQ50kKQxLCE/F/HOVUGCSEUPbTKq/QKbTAt0 1aImfbgCjpurKCZRBqhy1uEkd+hEXJMfD5dOUfoWSNasoG7+dlbYgfnF447SMaIYsvJ9SbY4 hbikcTTr64WkdZRkqKm4V/AgjSj4J3ATwpz/AfWWiSj4x8RiG+Zi26AtgezARVodt3xory9U J4swJb2AAcmUcvlqcB1aL9RdIxFHt7cWNEmvXZhHoM66xOm8GO5cIZb7VlWfRk3aZ5cJmOyO BeL5Gu9AaO/2lP0NcebhKrvUKwXIVTIT7wJq9iIN4AXOsguHON51Ho/OBPOt4wSrKTcufplZ c/AK5vE4YcyC6VgpAdatM9DuYLHMhsWnDuJLbiil0rP+ePHOBa9FOlZWHPTMLFRxP3f+m39r Y0AX/ZmPj0EDYUSlAGMrdVMRb3LRFBnba3LRzt/L7PYelI/RTx9VJc8A9oJIuRYokicrc+Rl lmVWE5fjlH4gBX6xc+iMRiPsZvjAsRyq2wVJyspMQr60nQve9n97qYYMZAweOB/puBkyPd1S dgDetmBU60WF2+Xo2xFYMmvtpFmeTSqmRmKY3ivbg85csMyXAfO4NLlIlbi+XBWXCq6vMczu ZO60QbfTcZRTghuFpmEavOoiVi2uCFFyu51WkLJJPhVeVntodEzdneh1qdvLphVexvZxzac2 wKHOjsipLHA890v7d3EpaGYtIP1QeFwKUxXQjvA5rGsOCiGo2euzNMSUOuMejyBBmr49L/4N bdOyu3kargAgUpFtIt6HPBuxKM6ocHtprscyAl4RS2ZY1OuA7JmA3+HwcgW7fAcm+IF5FrrV xLd4MReNJWIJNjhTAwbKj0jY7nRzvoTgDTTsak4LRmo/iNx57bbA0xeMwPW2H5GKadtasYi3 Psuv88Q5Eq6gxsudMyEjyQS8WmQdyRSX6Iiv5AcIYnqlgtykQwTPMGAV36r7cHdcchIP2krP iSQ2PjIiYNayxeQaHE0D3XMgbdQiJlmVMqmF7Pey4llW+Yph8PbGDVK9CgvFEFS0wlI1ON1N S5uPkxxY7+M/jMugsVfN4xp98etGzXBknEdCXNR/IEac6Vsfm7MKys2PuPlEIUx7TdHZjYCl F2H4D+NbAsGt/0dEsf/tYCJZhAjoRFMGtX+pf2a
IronPort-HdrOrdr: A9a23:5+peG6pH99fydpEy9IOiQ6saV5o/eYIsimQD101hICG9Ffbo8/ xG/c5rsCMd6l4qMk3I/OrsBEDuexzhHPJOj7X5Xo3SPjUO2lHJEGgK1+KLqFHd8kbFh41gPM lbEpRDNA==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,312,1654540200";    d="scan'208";a="181505842"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp2-outgoing.mail.rjil.net 881D4280A6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jio.com; s=jiomail;	t=1663063666; bh=qvu46U5Z5fOPHxTw6zOVOaXK91YgIwpxHGYoRWK6+GM=;	h=Date:From:To:Subject:From;	b=UjbcZA0gGbZyrrJ3DJnqLL+j7SzMak8xIdGmvbifUYsdIAuUSh2iTnXRiDM5OMhCe	 bF/Pgtw8YFovoRwAbYueqMadO8/sBUMB/7bD44+MijRE+ocumT1/fLHh7mGjAEMybb	 KSlgv34H6OVyZUacpugPLAmF6U2lbMOXQBYsqJn4=
Received: from support.trueconnect@jio.com([121.240.11.42]) 	by PME Mail With Id 1663063712071.13047;Tue, 13 Sep 2022 15:38:32 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h41b9o1oo384 for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 15:37:48 +0530 (envelope-from <support.trueconnect@jio.com>)
Received: (qmail 121374 invoked by uid 1012); 13 Sep 2022 10:07:48 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.76])          (envelope-sender <support.trueconnect@jio.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 13 Sep 2022 10:07:48 -0000
Received: from smtp2-outgoing.mail.rjil.net ([49.40.2.144])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Sep 2022 15:37:47 +0530
Received: from NVMBD2ANR070V15.bss.jio.com (unknown [10.140.84.156])	by smtp2-outgoing.mail.rjil.net (Postfix) with ESMTP id 881D4280A6D	for <helpdesk@satragroup.in>; Tue, 13 Sep 2022 15:36:47 +0530 (IST)
Received: from jiouccwsonode-1 (unknown [10.160.216.144])	by NVMBD2ANR070V15.bss.jio.com (Postfix) with ESMTP id 6A2084D;	Tue, 13 Sep 2022 15:37:46 +0530 (IST)
MIME-Version: 1.0
Subject: Jio Trueconnect - Confirmation of Registration request for Content Template (<SMS/VOICE>) for PE ID 1201162072903097949
Date: Tue, 13 Sep 2022 15:37:46 +0530 (IST)
Message-ID: <1447121058.518858.1663063666426@jiouccwsonode-1>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: support.trueconnect@jio.com
To: helpdesk <helpdesk@satragroup.in>
Return-Path: <support.trueconnect@jio.com>
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit
X-PMAttribute: 1663063712071.13047; mb_id=QSM1413892035136; imapid=30921; del_to=helpdesk

Dear User, 

We have received your registration request for Content Template (<SMS/VOICE>) and it has been submitted to Jio's Managed Commercial Communication (MCC) portal.

Request Number : SR1663063663957
Content Template ID : 1207166306366395752

A confirmation message will be sent on completion of the registration process.

Thank you, 
Jio Trueconnect Team


Disclaimer: This is a system generated email, please do not reply
