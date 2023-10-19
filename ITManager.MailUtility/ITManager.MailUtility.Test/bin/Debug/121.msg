X-Qmail-Scanner-Diagnostics: from 192.168.9.66 by vdvm34.logix.local (envelope-from <noreply@github.com>, uid 1001) with qmail-scanner-2.11  (  Clear:RC:1(192.168.9.66):SA:0(IronPort):.  Processed in 0.027488 secs); 16 Sep 2022 11:05:55 -0000
Received-SPF: Pass (tblr2.logix.in: domain of noreply@github.com  designates 192.30.252.208 as permitted sender)  identity=mailfrom; client-ip=192.30.252.208;  receiver=tblr2.logix.in; envelope-from="noreply@github.com";  x-sender="noreply@github.com"; x-conformance=spf_only;  x-record-type="v=spf1"; x-record-text="v=spf1  ip4:192.30.252.0/22 include:_netblocks.google.com  include:_netblocks2.google.com include:_netblocks3.google.com  include:spf.protection.outlook.com include:mail.zendesk.com  include:_spf.salesforce.com include:servers.mcsv.net  ip4:166.78.69.169 ip4:166.78.69.170 ip4:166.78.71.131  ip4:167.89.101.2 ip4:167.89.101.192/28 ip4:192.254.112.60  ip4:192.254.112.98/31 ip4:192.254.113.10 ip4:192.254.113.101  ip4:192.254.114.176 ip4:62.253.227.114 ~all"
Received-SPF: None (tblr2.logix.in: no sender authenticity  information available from domain of  postmaster@smtp.github.com) identity=helo;  client-ip=192.30.252.208; receiver=tblr2.logix.in;  envelope-from="noreply@github.com";  x-sender="postmaster@smtp.github.com"; x-conformance=spf_only
Authentication-Results: tblr2.logix.in; spf=Pass smtp.mailfrom=noreply@github.com; spf=None smtp.helo=postmaster@smtp.github.com; dkim=pass (signature verified) header.i=@github.com; dmarc=pass (p=reject dis=none) d=github.com
IronPort-SDR: luZYaFfdmCYBgUZRcYGKjO2J8++lDVhJ6sCfqZU7EKSB9GBzY9ezQZwHitOxFxDC/KxPDiYYjA Wm/iy0TsViKNSAhamQ2C+K7GNdXgXfmWp6DAKAJWwkyupeDNtlxcbAnCu21VVvJqV3qSQ7eveY npTXJc2TmD+b6ZUCnbHL4fhqvw7CMHp91KQG4y/a02PZ+vQUMHByherFrZbRhhpqGPJ7GOGdNz kGa5ZDqbrpdCOW4XtajqKYsWRQmEVFtuapybyWFHml+A1Vb6AUARHboeUreBluH/0BOkwb+qFi AjBgTZNTtxt5qimcJ5MQ2quH
X-ORIGINAL-IP: 192.30.252.208
X-ORIGINAL-TIME: 16 Sep 2022 16:35:51 +0530
x-rcpt-to: helpdesk@satragroup.in
IronPort-Data: A9a23:McQuB6LePx7f2KyZFE+R8ZMlxSXFcZb7ZxGr2PjKsXjdYENS12cEz mVLDD3TPvuPZzT9L9twbYuyoRkH7ZPTnN5gHANorCE8RH9jl5D5CIXCJC8cHc8ywu4v7a5Dx 5xGAjUVBJlsJpPkjk7xdOCn9xGQ7InQLlbGILes1htZGEk1E0/NtTo5w7Rj2t8x34Dga++wk YqaT/P3aALNNwFcbjl8B5Kr8HuDa9yv0N+wlgVWicFj5TcypVFMZH4sDfjZw0/Df2VhNrTSq 9AvY12O1jmxEx8FUrtJm56qKhVirrT6ZGBigVIPM0Suqkka/kTee0v0XRYRQR4/ttmHozx+4 NwUh9+OV110Bar3uPwtcAIELx5aerITrdcrIVDn2SCS51bDb2OqzPRyDFw8e4Yf/46bA0kXp KZec2hLNE3ZwbjukNpXScE07ignBM/sJo4HvmBIwjDFDessB5vERs0m4PcIgWhp3ZoQQJ4yY eIbZjdSVD7sOCdyBVooL4sCnPjxhGjwJmgwRFW9+/BmsjmCpOBr65DtPd7NdtGRRu1Ol1qCr 23c+HnhRBAcXOFz0hKC727p3LKJhibnQMQdFaG46/Qsi1qWroAONPEIfVLik7qHlBTjYNVkC 1Qk2TFykZcWs1P+G7ERQCaEiHKDuxcdXf9ZHOs79ByBx8Lo3uqJOoQXZmUeN4F+5afaURRvh wDZxYq4bdB6mOTNESr1y1uCkd+l1cEowYIqYjIYCFFYpcLmvJl1gRPTTstpVqWyi7UZ+A0cI Rja80DSZJ1J16bnMplXG3iZ2lpAQbCXFmYICv3/BD7N0++ATNfNi3aUwVba9+1cC42SU0OMu nMJ8+DHsr5VV8/TynfVHrtVdF1M2xpjGGKF6bKIN8Z5nwlBB1b6FWytyGAkfRkB3jgsJG6Bj LDvVfN5usUCbSr7BUOGS42wF8Q3x8Dd+SfNCZjpgi51SsEpLmevpXkwDWbJhjCFuBVyzckXZ MnKGe7yVixyIfo8k1KLqxI1iuJDKtYWnj+IGvgWDn2PjdKjWZJiYe1bYATSNLxgsMtpYmz9q r5iCidD8D0GOMXWbSjL8ZMZa1sNKBAG6Vre8Z0/mjerLlU0FWc/JeXWxL99KYVpk74MzrXH/ 229R0Uew1363CWVJQKPY3FlSbXuQZcm9CNibHFwZQvw1ihxe5ur4Ycea4AzIest+ttlwKMmV PICYciBXqlCR22fqTQQZJXwtqJ4cxGviV7cNiapemFnLZFhWwzU8JnveQ62rHsCCS++tM0fp by811qCEMNSGlg6UZ7bMav9wUmwsH4RnPNJc3HJetQDKl/x9IVKKjDqiqNlKc87LxielCCR0 BybAEtFqOTA+tRn8NTAia2elYqxF/piGU5WQzvS4bqsbHGI8Wu/wZJKFu2PeGmFBm/z/ayjY 8RTzu39aaRWxQcX79IhS7s7n7gj49bPpqNBylg2Fnv8aVn2WKhrJWOL3JUSu6BAmu1ZtA+xV h7d89VWI+zUatjgDEZXKws5bvmJk/oTn2CKv/gyJUz74g5x/aaGCBwDZkjR1HQAdLYlYpk4x eoBudIN71DtgBQdNNvb3Dtf8H6BLyBdXqh75IsWBpTn1lgixl1YO8aODTLqpcvSLc5JLlFsL T6IhLfIwb9bwxOaIXY0EHHM28tbhIgP4UkblQ5fewzUwteV1OUq2BBx8CgsSlgHxBtw1e8ua HNgMFd4JPnT8jpl7CSZs7tAx+2c6NylFk3NJ58hj2jFVw+nV3DNMWd7MuGIlKzcH6SwYRADl Ix0Ck69OdopQC019iQzRU54obroStkZGsjqhpW8B8rcd3UlSWONv5JCrlbkZ/cq7Q3dSaEHS SRXED5MVJDG
IronPort-HdrOrdr: A9a23:hx6XkqPKDLHowMBcTuWjsMiBIKoaSvp037By7TEXdfRUGvb2qy ncpoV86faUskdqZJhOo6HiBEDtex7hHNtOkO0s1NSZLXTbUQmTXeNfBOLZqlWKcREWtNQtsJ uIG5IOdOEYZmIVsS+O2mmF+qEboeVvnprFuQ6U9QYVcegjUdAZ0+5WMHfhLnFL
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.93,320,1654540200";    d="scan'208,217";a="85713265"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-IronPort-Anti-Spam-Scanned: true
Received: from noreply@github.com([121.240.11.42]) 	by PME Mail With Id 1663326382223.15978;Fri, 16 Sep 2022 16:36:22 +0530 (IST)
Received: from vdvm34.logix.local (127.0.0.1) by tblr42.logix.in id h4hcak1oo38s for <helpdesk@satragroup.in>; Fri, 16 Sep 2022 16:35:55 +0530 (envelope-from <noreply@github.com>)
Received: (qmail 115028 invoked by uid 1012); 16 Sep 2022 11:05:55 -0000
Received: from unknown (HELO relaysmtp.logix.in) ([192.168.9.66])          (envelope-sender <noreply@github.com>)          by vdvm34.logix.local (qmail-ldap-1.03) with SMTP          for <helpdesk@satragroup.in>; 16 Sep 2022 11:05:55 -0000
Received: from out-25.smtp.github.com (HELO smtp.github.com) ([192.30.252.208])  by tblr2.logix.in with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2022 16:35:40 +0530
Received: from github-lowworker-d8ee988.ash1-iad.github.net (github-lowworker-d8ee988.ash1-iad.github.net [10.56.25.61])	by smtp.github.com (Postfix) with ESMTP id 0AF1C840223	for <helpdesk@satragroup.in>; Fri, 16 Sep 2022 04:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;	s=pf2014; t=1663326337;	bh=SRfLORakybAeLAetRYgMzCYbHLqBEubkllFsykY6fpA=;	h=Date:From:Reply-To:To:Cc:Subject:List-ID:List-Archive:List-Post:	 From;	b=NAKjQGFKdBMxcScAcib5QHMphmKiSd+Yw85IDtFAevwRdM5COjkyTMa1hg3LL360c	 NI/uBVJb3ehB69H2sT+52VALZ/hk1T3UJXR0u5JdK3mDWI1nDIe5hUdVY7TJ9A70NP	 XTAK2biR+M55KTpOIlUZzX/X+LBDH+RnuWZ0Koi0=
Reply-To: SatraMobile/GujMarg-Mobile <noreply@github.com>
Mime-Version: 1.0
Precedence: list
X-GitHub-Sender: upendra-tarnoju
X-GitHub-Recipient: SatraMobile
X-GitHub-Reason: subscribed
List-ID: SatraMobile/GujMarg-Mobile <GujMarg-Mobile.SatraMobile.github.com>
List-Archive: https://github.com/SatraMobile/GujMarg-Mobile
List-Post: <mailto:noreply@github.com>
X-Auto-Response-Suppress: All
X-GitHub-Recipient-Address: helpdesk@satragroup.in
X-UNKNOWN-HEADER: 
Subject: [SatraMobile/GujMarg-Mobile] Pre-release 0.0.1 - Basic Version
Date: Fri, 16 Sep 2022 04:05:36 -0700
Message-ID: <SatraMobile/GujMarg-Mobile/releases/77383782@github.com>
X-MailServer: PostMaster Enterprise v8.08-RC2 on [127.0.0.1] Linux (2.6.32-431.el6.x86_64)
From: Upendra Tarnoju <notifications@github.com>
To: SatraMobile/GujMarg-Mobile <GujMarg-Mobile@noreply.github.com>
Cc: Subscribed <subscribed@noreply.github.com>
Return-Path: <noreply@github.com>
content-type: multipart/alternative; charset=utf-8; boundary="--==_mimepart_63245880ec287_7235d4f83946c"
content-transfer-encoding: 7bit
X-PMAttribute: 1663326382223.15978; mb_id=QSM1413892035136; imapid=30971; del_to=helpdesk

----==_mimepart_63245880ec287_7235d4f83946c
content-type: text/plain; charset=utf-8
content-transfer-encoding: 7bit



-- 
View it on GitHub:
https://secure-web.cisco.com/1ClVd-JL22Li58-sdEK2VJPRrvs3SVxnbQQ_Q4h_CVhPcgG-ZNMlqeZzD3G63yB5o3cjBPqPqHXB8gN5NPwyr7IE5jdIqDQHKwIz3ZHHNqXCQL3i7TDWBZA9mQeu6PXD3pQVkky8yEBxdLz-jKsHyYnuodPOdi0FLlQOr90dLWtbBm98IRLl0aAkFFWtEA2GJrrWpFoUxPJ56U_eOP7AzRFYb92dB9spY1Y6ljIIkb1-8GTt5MYeBWkw11a9yWZ9KgzDiFmUEAIQdLjgUOPj0ouB61dv098vRFVSbF9jLR4ZGkJ5qL5oaATHYMQJA7-Tzakb7yR7p2CrX_l658660uhzbDB6ZW0w5aL8LSQS8N3wwbVwTxybhEO2QeNJf-fwxPPU1cpgiS88b0Ui-gg6fxlq9whlkoGTvCklybIcnbsjjgXnfXu3TJ3of6pmC0XWUfP7wkioWGq20v9lcXzuczg/https%3A%2F%2Fgithub.com%2FSatraMobile%2FGujMarg-Mobile%2Freleases%2Ftag%2F0.0.1
You are receiving this because you are subscribed to this thread.

Message ID: <SatraMobile/GujMarg-Mobile/releases/77383782@github.com>
----==_mimepart_63245880ec287_7235d4f83946c
content-type: text/html; charset=utf-8
content-transfer-encoding: 7bit

<p></p>
<h1><a href="https://secure-web.cisco.com/1ClVd-JL22Li58-sdEK2VJPRrvs3SVxnbQQ_Q4h_CVhPcgG-ZNMlqeZzD3G63yB5o3cjBPqPqHXB8gN5NPwyr7IE5jdIqDQHKwIz3ZHHNqXCQL3i7TDWBZA9mQeu6PXD3pQVkky8yEBxdLz-jKsHyYnuodPOdi0FLlQOr90dLWtbBm98IRLl0aAkFFWtEA2GJrrWpFoUxPJ56U_eOP7AzRFYb92dB9spY1Y6ljIIkb1-8GTt5MYeBWkw11a9yWZ9KgzDiFmUEAIQdLjgUOPj0ouB61dv098vRFVSbF9jLR4ZGkJ5qL5oaATHYMQJA7-Tzakb7yR7p2CrX_l658660uhzbDB6ZW0w5aL8LSQS8N3wwbVwTxybhEO2QeNJf-fwxPPU1cpgiS88b0Ui-gg6fxlq9whlkoGTvCklybIcnbsjjgXnfXu3TJ3of6pmC0XWUfP7wkioWGq20v9lcXzuczg/https%3A%2F%2Fgithub.com%2FSatraMobile%2FGujMarg-Mobile%2Freleases%2Ftag%2F0.0.1">Basic Version</a></h1><p style="font-size:small;-webkit-text-size-adjust:none;">Repository: <a href="https://secure-web.cisco.com/1ITzASQpNzU-Ntb_VM_rXbDDVl64Eh8y10SiSFLv2unTqu175O0g1lx2honUTOVqvwqhp3G4iOZ6yw6oPZ2Fye-XxT0wbTHaSFXCBRJKI8Nox9F54Sl9ov8oWGNOGPc_HTl0cd8nGx4pWjR0T_4gTkD1ZgFr_GXQHkYpqmE3_Qlb-1OchpqUeI_sQKmGYqbNMwrMRi8bJmJoeZDZnJoa07R0wJPDutgcMky1uocOT3-g9gBx9TOFnwE3KmrjKvz4mcyjKSpOFvvZK1fT4YMPskILi8Ym2-2G2x8yBz_Io9CLX3rAhjOnR-yAJkgEW-Wn_e2bNTpPL-wZiqfDbJJ7A6El_VRcMGXOJbxGFCS8mDrt8S0HORQ4D-K5AbtTWV_FKk0ubDY79ndZHZ_FZRl3ewllkYy4gerhlWPHLW-6EMKyRa4PiwohMmk-4NCRutpWztoE80bG77qV44ByvobqqxA/https%3A%2F%2Fgithub.com%2FSatraMobile%2FGujMarg-Mobile">SatraMobile/GujMarg-Mobile</a> &middot; Tag: <a href="https://secure-web.cisco.com/1G6Bt5Xojq5OzFWeEFj2pWI4qavpYiFhxU2SZ546G_6oNj_fnWVtfe4nsutrgXo59CG-h3Ze7OYO-U94_SwLHUkVQNI1xrh8yJyK8ONgIWtvCh5IE5IdmZ-CvV1kzx7kRAd-nN9onBTXixpDimt3YZkuDQHIMgUNNqj1L-kVw8n-thDPZINUPODMgpkQmN2Fzxyd42SgW46rxm11d1WP9ZioEqPXDwZPLiCJ6k_eUV4XIKlq1iE53Y98R74_Bfqwx61wK8FOoX7ddhVmodUEfBh0vmMldPx3_Xe4tqjBdX_c8vnAPrE7jfsbshBjvAmfrwupWhKtmmBnwGB37toGnKz2cKwS6tmWqUIuqO0AYsQrtaxtd_lg3q6ZINi-54ip1thME3hJNXTJerF-ZrPkJxdYDwPAQ9KvMhKhRD7AMCplmkDLX4DfQ5nJwMhyI94cYPrQHxnbbMiG2Y6MVLMA5ww/https%3A%2F%2Fgithub.com%2FSatraMobile%2FGujMarg-Mobile%2Ftree%2F0.0.1">0.0.1</a> &middot; Commit: <a href="https://secure-web.cisco.com/1y3r7pXGvkPTZUMy5jXBAxj5f7AxLuGSwahkyRbmVcDMOVKb2eLteodnQeaYwYJ2y1KRvAdxTJvD51t7AsamXI8uJ_YSK4HZKfQRpygHzEDomjwQGuIeuCzIBL6MWjYabY8hUynYiJ4av0mE4dwXAdhT2sQjTnOiJxzcSQaYKlL9gOIRGFeih13yViECJRDwlunYInIRCYVb2w4dJcsTOlPOdrGdGDI5hIBMyBr32w4dRCepfWVyDi6ehT53Yspn8zt0n5Os26JWBQgJPkjzum-4aFBjqrvnlEcYEgtl8nb-kN7uFO5qKMsY1diVP6zoLbORpR4B89IdDbHvjJpUswXpmy5xML6LFAOX5mbn-kG-px83kz1-aNrjY-qi-bgUFuX0LDgn9tX87MHdbs7vcrTY-pstNytXSiARmxhZSfpIerJpd7LQn6wGeRydanOXtX19xhrdYSREXod-h9RBtNw/https%3A%2F%2Fgithub.com%2FSatraMobile%2FGujMarg-Mobile%2Fcommit%2Faea436ae7fa7a9ab18196f2ea7ad5f59e0fbb6e3">aea436a</a> &middot; Released by: <a href="https://secure-web.cisco.com/19wmPakfj1Ksf2St6HY2x5iRf9ag2mNU13v3D_Oa9tuq-tEn2R5cmOz4lnmuMI3T1aT2YiqqUqQgNJP3vJuIRW5TxD00rMSBkz0uDetUJZhez-0Y-ALZCj3GcvTl94-2L6pyS4mrPJvX1NuevuGzFKQmjCKPfigQDbXS4MkO5uNnvUrtDKbTreD0My9hV_4PHF_B_1xWY_6sjMKskwewOhb2uy5uluXyH9JCbNNEagRoG-WT2d9VfWWTa3YL1giRPHzry1SAvF7_Dv_fQwaAzGghXDD8_6le68CK5ZguutN4a17Sps4BQUiGRCZcQ4FQrUft901f9FFcHVhLYEazIwkSslaYMACxmragld5WX67fkSCmptqY7scoglTSeNTtqKPtGtrMcAQYkv8nhdq2qbpYVRjWFwmPHF716KrwsAzKAiVf5-4Ed5FIVeKrj5tUuMYRC2ZfBuJxgtysJ5lN97w/https%3A%2F%2Fgithub.com%2Fupendra-tarnoju">upendra-tarnoju</a></p>



&mdash;<p>This release has 2 assets:</p><ul><li>Source code (zip)</li><li>Source code (tar.gz)</li></ul><p>Visit the <a href="https://secure-web.cisco.com/1ClVd-JL22Li58-sdEK2VJPRrvs3SVxnbQQ_Q4h_CVhPcgG-ZNMlqeZzD3G63yB5o3cjBPqPqHXB8gN5NPwyr7IE5jdIqDQHKwIz3ZHHNqXCQL3i7TDWBZA9mQeu6PXD3pQVkky8yEBxdLz-jKsHyYnuodPOdi0FLlQOr90dLWtbBm98IRLl0aAkFFWtEA2GJrrWpFoUxPJ56U_eOP7AzRFYb92dB9spY1Y6ljIIkb1-8GTt5MYeBWkw11a9yWZ9KgzDiFmUEAIQdLjgUOPj0ouB61dv098vRFVSbF9jLR4ZGkJ5qL5oaATHYMQJA7-Tzakb7yR7p2CrX_l658660uhzbDB6ZW0w5aL8LSQS8N3wwbVwTxybhEO2QeNJf-fwxPPU1cpgiS88b0Ui-gg6fxlq9whlkoGTvCklybIcnbsjjgXnfXu3TJ3of6pmC0XWUfP7wkioWGq20v9lcXzuczg/https%3A%2F%2Fgithub.com%2FSatraMobile%2FGujMarg-Mobile%2Freleases%2Ftag%2F0.0.1">release page</a> to download them.</p>

<p style="font-size:small;-webkit-text-size-adjust:none;color:#666;">&mdash;<br />You are receiving this because you are watching this repository.<br /><a href="https://secure-web.cisco.com/1ClVd-JL22Li58-sdEK2VJPRrvs3SVxnbQQ_Q4h_CVhPcgG-ZNMlqeZzD3G63yB5o3cjBPqPqHXB8gN5NPwyr7IE5jdIqDQHKwIz3ZHHNqXCQL3i7TDWBZA9mQeu6PXD3pQVkky8yEBxdLz-jKsHyYnuodPOdi0FLlQOr90dLWtbBm98IRLl0aAkFFWtEA2GJrrWpFoUxPJ56U_eOP7AzRFYb92dB9spY1Y6ljIIkb1-8GTt5MYeBWkw11a9yWZ9KgzDiFmUEAIQdLjgUOPj0ouB61dv098vRFVSbF9jLR4ZGkJ5qL5oaATHYMQJA7-Tzakb7yR7p2CrX_l658660uhzbDB6ZW0w5aL8LSQS8N3wwbVwTxybhEO2QeNJf-fwxPPU1cpgiS88b0Ui-gg6fxlq9whlkoGTvCklybIcnbsjjgXnfXu3TJ3of6pmC0XWUfP7wkioWGq20v9lcXzuczg/https%3A%2F%2Fgithub.com%2FSatraMobile%2FGujMarg-Mobile%2Freleases%2Ftag%2F0.0.1">View it on GitHub</a> or <a href="https://secure-web.cisco.com/1cOjMQInr6VP7PEHBi_3t5F3biYyh9e-aQ3eL6DpKQRB_xQN3Z7bwNv89IHE0VSgLdD-DdJfuuzORu56YoKDDmfoA7l5zQ6Q3PJEaPv-ilgMVW3whtFTq3FmgDnU8MQqCh7Csu4IAc1Qt3bbsSjl1XVOubtOsT1obDXQMLP7xRdfST_oKdk7_yUfa9_pzIVXx0zTnvxiCzEBg0Nv1MiSodmNWMqt2_cV1FCqJMyFoDoMQTek5vV-BGAZwmSnFI-E2igP2ql8t5CKfJ7ez2bFIZauRxt6Y3QupRgmlltD4wzfOksRJhaOqSVkarg0lz9PH7j9zf1ck_xhvlClN3BMdOJKLjg8Mk9hO5TD-7z3F9D9i_xeTiaeXHQj5kgSbj9YAFgVoFuC8zEA1ZCivrUNU_ycsDM7SOlt01c17kMqP71wZWvjt_z5tyvXjbw_I9mIWzaAuFtNarX-lKQ3MkYoFSQ/https%3A%2F%2Fgithub.com%2FSatraMobile%2FGujMarg-Mobile%2Funsubscribe_via_email%2FAUGHELR6KP3DPSTR3DRQYBTV6RIABANCNFSM4HNYG3VQ">unsubscribe</a> from all notifications for this repository.<img src="https://secure-web.cisco.com/1Hakx9c04t05S5OQYPnQLD-jUrDlOD_T29oL7DEPB_9zwN4CJ3MInb1SEwgHYOav2z9WlTdvgKnknBp3nZRlnu1apupDkqaeMDyrge_Oo0Rtp8HbxtkGFdNkTtdPCrvE_OCUuN3cqt1ogl9H4rmihUGzj637j2VRtXDzpf8A3WYMt59fSJrmyIGUsCG0tGzdMHHSev3gFO3-TOvMQQ5C6LPL7aLIrEbKvQ7yQn6O15u4kvMdbcndVFK92J7BX-pyFn3Ztu34bi3c4j7C82WIsO-qC-j7xwRjuRZF0kXqM9dcAVLmy2dIm_KV-E9yJl7eatLK5G1y-hI2Rhj1Wz1w_Qqy9Ev0VqK7jojaiCHSg3Rwz4YAUUiQLEBa_0gR4PDLxYXivUDg8GbtQF99z1raBNP37Oy53kHcJt5UkRjnvDARYKOfMBXW1dDFqthNSM15VaiAxtnot2HtfBbrCd2LNiQ/https%3A%2F%2Fgithub.com%2Fnotifications%2Fbeacon%2FAUGHELXFV7HBDYNCPES23JLV6RIABA5CNFSM6AAAAAAQOHIY7WWGG33NNVSW45C7OR4XAZNHKJSWYZLBONS2UY3PNVWWK3TUL5UWJTQETTEGM.gif" height="1" width="1" alt="" /></p>
<script type="application/ld+json">[
{
"@context": "http://schema.org",
"@type": "EmailMessage",
"potentialAction": {
"@type": "ViewAction",
"target": "https://github.com/SatraMobile/GujMarg-Mobile/releases/tag/0.0.1",
"url": "https://github.com/SatraMobile/GujMarg-Mobile/releases/tag/0.0.1",
"name": "View Release"
},
"description": "View this Release on GitHub",
"publisher": {
"@type": "Organization",
"name": "GitHub",
"url": "https://github.com"
}
}
]</script>
----==_mimepart_63245880ec287_7235d4f83946c--
