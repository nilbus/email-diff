{"resource"=>"/email-diff/{id}", "path"=>"/email-diff/ward-email", "httpMethod"=>"POST", "headers"=>{"Accept"=>"*/*", "Accept-Encoding"=>"gzip", "CloudFront-Forwarded-Proto"=>"https", "CloudFront-Is-Desktop-Viewer"=>"true", "CloudFront-Is-Mobile-Viewer"=>"false", "CloudFront-Is-SmartTV-Viewer"=>"false", "CloudFront-Is-Tablet-Viewer"=>"false", "CloudFront-Viewer-Country"=>"US", "Content-Type"=>"multipart/form-data; boundary=063225cb-d7bb-4b64-9e9f-fef71c51a04b", "Host"=>"vvb43nv48h.execute-api.us-east-2.amazonaws.com", "User-Agent"=>"mailgun/treq-16.12.0", "Via"=>"1.1 ffa8ec5cfe61dcaaebc108ff8c867055.cloudfront.net (CloudFront)", "X-Amz-Cf-Id"=>"vhHBMN76AyYDukPsZl7GJtVkXkqtmKBMFNKrIXGyXZZ13fgUuCcSQw==", "X-Amzn-Trace-Id"=>"Root=1-5de88cf2-bef6cc3eae8376f4734255a8", "X-Forwarded-For"=>"54.196.2.223, 70.132.60.135", "X-Forwarded-Port"=>"443", "X-Forwarded-Proto"=>"https"}, "multiValueHeaders"=>{"Accept"=>["*/*"], "Accept-Encoding"=>["gzip"], "CloudFront-Forwarded-Proto"=>["https"], "CloudFront-Is-Desktop-Viewer"=>["true"], "CloudFront-Is-Mobile-Viewer"=>["false"], "CloudFront-Is-SmartTV-Viewer"=>["false"], "CloudFront-Is-Tablet-Viewer"=>["false"], "CloudFront-Viewer-Country"=>["US"], "Content-Type"=>["multipart/form-data; boundary=063225cb-d7bb-4b64-9e9f-fef71c51a04b"], "Host"=>["vvb43nv48h.execute-api.us-east-2.amazonaws.com"], "User-Agent"=>["mailgun/treq-16.12.0"], "Via"=>["1.1 ffa8ec5cfe61dcaaebc108ff8c867055.cloudfront.net (CloudFront)"], "X-Amz-Cf-Id"=>["vhHBMN76AyYDukPsZl7GJtVkXkqtmKBMFNKrIXGyXZZ13fgUuCcSQw=="], "X-Amzn-Trace-Id"=>["Root=1-5de88cf2-bef6cc3eae8376f4734255a8"], "X-Forwarded-For"=>["54.196.2.223, 70.132.60.135"], "X-Forwarded-Port"=>["443"], "X-Forwarded-Proto"=>["https"]}, "queryStringParameters"=>nil, "multiValueQueryStringParameters"=>nil, "pathParameters"=>{"id"=>"ward-email"}, "stageVariables"=>nil, "requestContext"=>{"resourceId"=>"6ded37", "resourcePath"=>"/email-diff/{id}", "httpMethod"=>"POST", "extendedRequestId"=>"ENr18GjTiYcFjYg=", "requestTime"=>"05/Dec/2019:04:52:02 +0000", "path"=>"/default/email-diff/ward-email", "accountId"=>"449242188277", "protocol"=>"HTTP/1.1", "stage"=>"default", "domainPrefix"=>"vvb43nv48h", "requestTimeEpoch"=>1575521522756, "requestId"=>"92a880b6-9296-451a-8e47-c0fea2dbb3f8", "identity"=>{"cognitoIdentityPoolId"=>nil, "accountId"=>nil, "cognitoIdentityId"=>nil, "caller"=>nil, "sourceIp"=>"54.196.2.223", "principalOrgId"=>nil, "accessKey"=>nil, "cognitoAuthenticationType"=>nil, "cognitoAuthenticationProvider"=>nil, "userArn"=>nil, "userAgent"=>"mailgun/treq-16.12.0", "user"=>nil}, "domainName"=>"vvb43nv48h.execute-api.us-east-2.amazonaws.com", "apiId"=>"vvb43nv48h"}, "body"=>"--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"Content-Type\"\r\n\r\nmultipart/mixed; boundary=\"0000000000000cdffe0598edb057\"\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"Date\"\r\n\r\nWed, 4 Dec 2019 23:51:39 -0500\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"Dkim-Signature\"\r\n\r\nv=1; a=rsa-sha256; c=relaxed/relaxed;        d=example-com.20150623.gappssmtp.com; s=20150623;        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;        bh=qG6Nf1TEIrPUpWIcxK04851bYCIl7kclY5bdlsRCUig=;        b=gGX+dHoW4l/kZ0niyHyCP4ZXS+NPRow6IOAWe0LM9G0NWgRk2OKB8VuNFQ8zd5LFmD         oJuKAt8yLEqNtRR+TxYNT8GAdtG6Ij8ZDHViAsN3hkqMj+0+eK9VKraXw8/qIqMPx6St         Z1/yLCDG1am7r4+k/EzikwV8R02/9ng/OX9imtvowfb1jf82pSHr8IIIwGtx8v64J4JZ         ZGH8W8J8a0pkokISGXrbucWYNxiDIGRka3cg3iEAHm11QB9BMC8xUdUTFSGLQQor2Q0s         jy2Vo20yDcVJ4vVW96K5GovWG4A5yshxoANfKBs0Bw78AxsjupQQ1gshU/LVUkgrFrMO         sbNQ==\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"From\"\r\n\r\nFirst Last <redacted@example.com>\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"In-Reply-To\"\r\n\r\n<5de4660d.1c69fb81.8cc6f.redacted@example.com>\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"Message-Id\"\r\n\r\n<CAOMsSXTZ9mkbNV2bJpiMQrjrXaUq8yv8w6YWrzKBTk=redacted@example.com>\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"Mime-Version\"\r\n\r\n1.0\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"Received\"\r\n\r\nfrom mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48]) by mxa.mailgun.org with ESMTP id 5de88cf1.7f87fcdb16b0-smtp-in-n02; Thu, 05 Dec 2019 04:52:01 -0000 (UTC)\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"Received\"\r\n\r\nby mail-lf1-f48.google.com with SMTP id m30so1396082lfp.8        for <redacted@example.com>; Wed, 04 Dec 2019 20:51:59 -0800 (PST)\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"Received\"\r\n\r\nfrom mail-lf1-f44.google.com (mail-lf1-f44.google.com. [209.85.167.44])        by smtp.gmail.com with ESMTPSA id p136sm2572653lfa.8.2019.12.04.20.51.54        for <redacted@example.com>        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);        Wed, 04 Dec 2019 20:51:55 -0800 (PST)\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"Received\"\r\n\r\nby mail-lf1-f44.google.com with SMTP id r14so1418121lfm.5        for <redacted@example.com>; Wed, 04 Dec 2019 20:51:54 -0800 (PST)\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"References\"\r\n\r\n<5de4660d.1c69fb81.8cc6f.redacted@example.com>\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"Return-Path\"\r\n\r\n<redacted@example.com>\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"Subject\"\r\n\r\nFwd: 12/1/2019 - Weekly Email\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"To\"\r\n\r\nredacted@example.com\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"X-Envelope-From\"\r\n\r\n<redacted@example.com>\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"X-Gm-Message-State\"\r\n\r\nAPjAAAX1fONlzfSDlUUc1Q/Qt9EqurEEs5BbXKxq82HqehaupZjV1Kvn\ta2FVtUyiraoBdowqFacukTBCMLjNTLA=\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"X-Gmail-Original-Message-Id\"\r\n\r\n<CAOMsSXTZ9mkbNV2bJpiMQrjrXaUq8yv8w6YWrzKBTk=redacted@example.com>\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"X-Google-Dkim-Signature\"\r\n\r\nv=1; a=rsa-sha256; c=relaxed/relaxed;        d=1e100.net; s=20161025;        h=x-gm-message-state:mime-version:references:in-reply-to:from:date         :message-id:subject:to;        bh=qG6Nf1TEIrPUpWIcxK04851bYCIl7kclY5bdlsRCUig=;        b=BdcJCI1aKfhcxESOqDWo0x6CXTfd5dnmOaLXIGgg+oShp6XIqMjz5i0FHm2Fy01BCU         sz8hOC62UIo+NfqU9JxaY5UQUOAa8yRN8ukmaRKOB6+FOmcrOBl1vVPeU30cbIgMoK9M         ez98+lgptG/1MzK5y/Ig+rUoyCqYWr8lfaZswDDm/S56h5Ps4su5xod1vyZN7XyzlHOt         sYGKUQ/UCZ7fZRQPyQ9sXZ0ai1hDISpx5e4CTDQrCd63UJ0SRDM9Jdg7PjHs1jjPQS5O         PfFS52o2geUNvjrj4FbiHVpV/rvo8DKBsqBCk8MAd00+NWiP78ZNsuFs/aHkaST46YsT         FZRg==\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"X-Google-Smtp-Source\"\r\n\r\nAPXvYqy8RfAYoqRvZ5cPB8QsYw+/Ncw3L6zQMoDsQLa29cXswqXozSzK4FuUw8AxEjqoYa/BsLPIyg==\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"X-Mailgun-Incoming\"\r\n\r\nYes\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"X-Received\"\r\n\r\nby 2002:ac2:498e:: with SMTP id f14mr4072000lfl.172.1575521517562;        Wed, 04 Dec 2019 20:51:57 -0800 (PST)\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"X-Received\"\r\n\r\nby 2002:ac2:4d04:: with SMTP id r4mr3977362lfi.77.1575521511836; Wed, 04 Dec 2019 20:51:51 -0800 (PST)\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"attachment-count\"\r\n\r\n1\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"body-html\"\r\n\r\n<div dir=\"ltr\"><br><br><div class=\"gmail_quote\"><div dir=\"ltr\" class=\"gmail_attr\">---------- Forwarded message ---------<br>From: <strong class=\"gmail_sendername\" dir=\"auto\">First Last</strong> <span dir=\"auto\">&lt;<a href=\"mailto:nredacted@example.com\">nredacted@example.com</a>&gt;</span><br>Date: Sun, Dec 1, 2019 at 8:17 PM<br>Subject: 12/1/2019 - Weekly Email<br>To:  &lt;<a href=\"mailto:redacted@example.com\">redacted@example.com</a>&gt;<br></div><br><br><p style=\"line-height:1.38;text-align:center;margin-top:0pt;margin-bottom:3pt\"><span style=\"font-size:26pt;font-family:&#39;Times New Roman&#39;;color:#222222;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap\">Weekly Email</span></p> \r\n<p style=\"line-height:1.38;text-align:center;margin-top:0pt;margin-bottom:0pt\"><span style=\"font-size:18pt;font-family:&#39;Times New Roman&#39;;color:#222222;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap\">December 1st, 2019</span><span style=\"font-size:12pt;font-family:&#39;Times New Roman&#39;;color:#222222;background-color:transparent;font-weight:bold;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap\"><br></span></p> \r\n<p><span style=\"font-size:20pt;font-family:&#39;Times New Roman&#39;;color:#222222;background-color:transparent;font-weight:bold;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap\"></div></div>\r\n\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"body-plain\"\r\n\r\n---------- Forwarded message ---------\r\nFrom: First Last <nredacted@example.com>\r\nDate: Sun, Dec 1, 2019 at 8:17 PM\r\nSubject: 12/1/2019 - Weekly Email\r\nTo: <redacted@example.com>\r\n\r\n\r\nWeekly Email\r\n\r\nDecember 1st, 2019\r\n\r\n\r\n\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"content-id-map\"\r\n\r\n{\"<16ed4662dc9a37422621>\": \"attachment-1\"}\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"from\"\r\n\r\nFirst Last <redacted@example.com>\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"message-headers\"\r\n\r\n[[\"X-Mailgun-Incoming\", \"Yes\"], [\"X-Envelope-From\", \"<redacted@example.com>\"], [\"Received\", \"from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48]) by mxa.mailgun.org with ESMTP id 5de88cf1.7f87fcdb16b0-smtp-in-n02; Thu, 05 Dec 2019 04:52:01 -0000 (UTC)\"], [\"Received\", \"by mail-lf1-f48.google.com with SMTP id m30so1396082lfp.8        for <redacted@example.com>; Wed, 04 Dec 2019 20:51:59 -0800 (PST)\"], [\"Dkim-Signature\", \"v=1; a=rsa-sha256; c=relaxed/relaxed;        d=example-com.20150623.gappssmtp.com; s=20150623;        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;        bh=qG6Nf1TEIrPUpWIcxK04851bYCIl7kclY5bdlsRCUig=;        b=gGX+dHoW4l/kZ0niyHyCP4ZXS+NPRow6IOAWe0LM9G0NWgRk2OKB8VuNFQ8zd5LFmD         oJuKAt8yLEqNtRR+TxYNT8GAdtG6Ij8ZDHViAsN3hkqMj+0+eK9VKraXw8/qIqMPx6St         Z1/yLCDG1am7r4+k/EzikwV8R02/9ng/OX9imtvowfb1jf82pSHr8IIIwGtx8v64J4JZ         ZGH8W8J8a0pkokISGXrbucWYNxiDIGRka3cg3iEAHm11QB9BMC8xUdUTFSGLQQor2Q0s         jy2Vo20yDcVJ4vVW96K5GovWG4A5yshxoANfKBs0Bw78AxsjupQQ1gshU/LVUkgrFrMO         sbNQ==\"], [\"X-Google-Dkim-Signature\", \"v=1; a=rsa-sha256; c=relaxed/relaxed;        d=1e100.net; s=20161025;        h=x-gm-message-state:mime-version:references:in-reply-to:from:date         :message-id:subject:to;        bh=qG6Nf1TEIrPUpWIcxK04851bYCIl7kclY5bdlsRCUig=;        b=BdcJCI1aKfhcxESOqDWo0x6CXTfd5dnmOaLXIGgg+oShp6XIqMjz5i0FHm2Fy01BCU         sz8hOC62UIo+NfqU9JxaY5UQUOAa8yRN8ukmaRKOB6+FOmcrOBl1vVPeU30cbIgMoK9M         ez98+lgptG/1MzK5y/Ig+rUoyCqYWr8lfaZswDDm/S56h5Ps4su5xod1vyZN7XyzlHOt         sYGKUQ/UCZ7fZRQPyQ9sXZ0ai1hDISpx5e4CTDQrCd63UJ0SRDM9Jdg7PjHs1jjPQS5O         PfFS52o2geUNvjrj4FbiHVpV/rvo8DKBsqBCk8MAd00+NWiP78ZNsuFs/aHkaST46YsT         FZRg==\"], [\"X-Gm-Message-State\", \"APjAAAX1fONlzfSDlUUc1Q/Qt9EqurEEs5BbXKxq82HqehaupZjV1Kvn\\ta2FVtUyiraoBdowqFacukTBCMLjNTLA=\"], [\"X-Google-Smtp-Source\", \"APXvYqy8RfAYoqRvZ5cPB8QsYw+/Ncw3L6zQMoDsQLa29cXswqXozSzK4FuUw8AxEjqoYa/BsLPIyg==\"], [\"X-Received\", \"by 2002:ac2:498e:: with SMTP id f14mr4072000lfl.172.1575521517562;        Wed, 04 Dec 2019 20:51:57 -0800 (PST)\"], [\"Return-Path\", \"<redacted@example.com>\"], [\"Received\", \"from mail-lf1-f44.google.com (mail-lf1-f44.google.com. [209.85.167.44])        by smtp.gmail.com with ESMTPSA id p136sm2572653lfa.8.2019.12.04.20.51.54        for <redacted@example.com>        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);        Wed, 04 Dec 2019 20:51:55 -0800 (PST)\"], [\"Received\", \"by mail-lf1-f44.google.com with SMTP id r14so1418121lfm.5        for <redacted@example.com>; Wed, 04 Dec 2019 20:51:54 -0800 (PST)\"], [\"X-Received\", \"by 2002:ac2:4d04:: with SMTP id r4mr3977362lfi.77.1575521511836; Wed, 04 Dec 2019 20:51:51 -0800 (PST)\"], [\"Mime-Version\", \"1.0\"], [\"References\", \"<5de4660d.1c69fb81.8cc6f.redacted@example.com>\"], [\"In-Reply-To\", \"<5de4660d.1c69fb81.8cc6f.redacted@example.com>\"], [\"From\", \"First Last <redacted@example.com>\"], [\"Date\", \"Wed, 4 Dec 2019 23:51:39 -0500\"], [\"X-Gmail-Original-Message-Id\", \"<CAOMsSXTZ9mkbNV2bJpiMQrjrXaUq8yv8w6YWrzKBTk=redacted@example.com>\"], [\"Message-Id\", \"<CAOMsSXTZ9mkbNV2bJpiMQrjrXaUq8yv8w6YWrzKBTk=redacted@example.com>\"], [\"Subject\", \"Fwd: 12/1/2019 - Weekly Email\"], [\"To\", \"redacted@example.com\"], [\"Content-Type\", \"multipart/mixed; boundary=\\\"0000000000000cdffe0598edb057\\\"\"]]\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"recipient\"\r\n\r\nredacted@example.com\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"sender\"\r\n\r\nredacted@example.com\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"signature\"\r\n\r\n7b834c3ab4d824ad79382022dc64df51cd7a60892dce6e4c352f681f25bea6ad\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"stripped-html\"\r\n\r\n<div dir=\"ltr\"><br><br><div class=\"gmail_quote\"><div dir=\"ltr\" class=\"gmail_attr\">---------- Forwarded message ---------<br>From: <strong class=\"gmail_sendername\" dir=\"auto\">First Last</strong> <span dir=\"auto\">&lt;<a href=\"mailto:nredacted@example.com\">nredacted@example.com</a>&gt;</span><br>Date: Sun, Dec 1, 2019 at 8:17 PM<br>Subject: 12/1/2019 - Weekly Email<br>To:  &lt;<a href=\"mailto:redacted@example.com\">redacted@example.com</a>&gt;<br></div><br><br><p style=\"line-height:1.38;text-align:center;margin-top:0pt;margin-bottom:3pt\"><span style=\"font-size:26pt;font-family:&#39;Times New Roman&#39;;color:#222222;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap\">Weekly Email</span></p> \n<p style=\"line-height:1.38;text-align:center;margin-top:0pt;margin-bottom:0pt\"><span style=\"font-size:18pt;font-family:&#39;Times New Roman&#39;;color:#222222;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap\">December 1st, 2019</span><span style=\"font-size:12pt;font-family:&#39;Times New Roman&#39;;color:#222222;background-color:transparent;font-weight:bold;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap\"><br></span></p> \n<p><span style=\"font-size:20pt;font-family:&#39;Times New Roman&#39;;color:#222222;background-color:transparent;font-weight:bold;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap\"></div></div>\n\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"stripped-signature\"\r\n\r\nWard Executive Secretary.\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"stripped-text\"\r\n\r\n---------- Forwarded message ---------\r\nFrom: First Last <nredacted@example.com>\r\nDate: Sun, Dec 1, 2019 at 8:17 PM\r\nSubject: 12/1/2019 - Weekly Email\r\nTo: <redacted@example.com>\r\n\r\n\r\nWeekly Email\r\n\r\nDecember 1st, 2019\r\n\r\n\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"subject\"\r\n\r\nFwd: 12/1/2019 - Weekly Email\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"timestamp\"\r\n\r\n1575521522\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"token\"\r\n\r\n54941835e95eee2b475a0afd76529ff6056202c9c97602c498\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b\r\nContent-Disposition: form-data; name=\"attachment-1\"; filename=\"Copy of EDITABLE White Christmas Invitations.png\"\r\nContent-Type: image/png\r\nContent-Length: 746613\r\n\r\n�PNG\r\n\u001A\n\u0000\u0000\u0000\rIHDR\u0000\u0000\u0005�\u0000\u0000\a�\b\u0006\u0000\u0000\u0000U\u0005�b\u0000\u0000\u0000\tpHYs\u0000\u0000\u000E�\u0000\u0000\u000E�\u0001�+\u000E\e\u0000\u0000 \u0000IDATx��y�$�}��ɗYw�=}���sTU�\f�\u0001@\\\u0004��\u0004H\u0002$EJ���ұ�$K���\nG�w��\ry�\u000E[ፕ6dѶd\u001D�.�\u000ER�@\u0012'q�3��U��3=�3���Ywf���efeVUO\u000F�\redacted@example.com�\"\u0006��z��*�������?��\v�%��>H�+�-�h��jMJ��i�w�\u0002M�k\u0011j�U���\u0016&�n\u0381��y�Տm��\u0013D:�\u0013�>B|�\u0011�\u0016Œe\u0000�<���VL�\u0016���q�UV�~���\u0016�i�f�X�\u0010]G\u001FĈ�\"e�9\u000F\u0003���J����&\u0010F\f�-?ߝy���[��\u0012h\u0002MӐR:�\u0000�,�<�\u0018Źq�P\f��^��6�\u001E%ֹ�����ύ�_\u007F��gϱ�8���\u001C�j�-���2!�w!���,l�\u000E�>88H:�\"�Is��a\u0006\a\a98t��\a\aI&����m܇;��ٶ�.t\u0016����_�Ǽ��K�w�c��5�{)%�H��K�����W��/�#�&�������5PJ�m��O]�\t��{��'�fs�9&���>;���9��NS,\u0016ߣ+x\u007F�Z\v4o�1M3�z2�dx$C:�&u�(\a��\u0018<x�����������ޗ�5)AӐ�Fh\u0011J+\u0013,翋UYG3�D;�\u0011�>D�\u007F\u0004]ıd\u0005�/i\u07BD�����/@͡��>;k\u007FE\v��4M[�H]��+�{�����-�\"�\"�\u000E|�\v��h�\u0003�-�!ؿ��*�]ޓ��k\u0010\u001DD\n\e]qzG. e\b��d҄4�g�E�[�����\u001D����߸����\b��$t�\n�08s�\fW\u07FF���ޣ7��8V�\u0019��H�G w�\u0017\au���\u001C�Z�pl\b��\u000E ��\r���W�\u001D��\u0010\u001A�k���\u0006\u0002���a&��9��W�R��A7z�\u001D:�c!�>Y�+\n�\n�\\�\u0011��\u007Fԋf\u0016��O����w&\t��GhC\u0000\u0000\u0002\u0010iTXtXML:com.adobe.xmp\u0000\u0000\u0000\u0000\u0000<?xpacket begin='﻿' id='W5M0MpCehiHzreSzNTczkc9d'?>\n<x:xmpmeta xmlns:x='adobe:ns:meta/' x:xmptk='Image::ExifTool 10.80'>\n<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#'>\n\n <rdf:Description rdf:about=''\n  xmlns:pdf='http://ns.adobe.com/pdf/1.3/'>\n  <pdf:Author>alison.elmo</pdf:Author>\n </rdf:Description>\n\n <rdf:Description rdf:about=''\n  xmlns:xmp='http://ns.adobe.com/xap/1.0/'>\n  <xmp:CreatorTool>Canva</xmp:CreatorTool>\n </rdf:Description>\n</rdf:RDF>\n</x:xmpmeta>\n<?xpacket end='r'?>۟�\u0003\u0000\u0000\u0000\u0000IEND�B`�\r\n--063225cb-d7bb-4b64-9e9f-fef71c51a04b--\r\n", "isBase64Encoded"=>false}