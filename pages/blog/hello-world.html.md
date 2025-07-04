---
layout: post
title: Hello World
description: Why should we write ?
date: 2025-06-25
author: Stephane Bounmy
---

Having a blog was on the roadmap for a while but it became urgent :
<blockquote class="reddit-embed-bq" data-embed-height="604"><a href="https://www.reddit.com/r/btc/comments/1lfykko/comment/mytvp0g/">Comment</a><br> by<a href="https://www.reddit.com/user/MakkawChan/">u/MakkawChan</a> from discussion<a href="https://www.reddit.com/r/btc/comments/1lfykko/what_should_i_prioritize_in_my_business/"></a><br> in<a href="https://www.reddit.com/r/btc/">btc</a></blockquote><script async="" src="https://embed.reddit.com/widgets.js" charset="UTF-8"></script>


This was one of the most constructive feedback we ever received. We know since we started that there was a hongbao bitcoin address scam back in 2018.

![bitcoin-paper-wallet-scam](/assets/blog/hello-world/bitcoin-paper-wallet.png)
[Bitcoin Paper Wallet Scam]([https://en.bitcoin.it/wiki/BitcoinPaperWallet)

So We took the time to decide how/where to write.
After setting Ghost (which is very nice) + Cloudflare worker to have /blog, I felt like it was not that great and I would spend time to setup email provider etc.

Until I asked Alexis from [Rorvswild](https://www.rorvswild.com/blog) how did they build their blog in their rails app : [Sitepress](sitepress.cc).

I finally took a few days to setup it up :

- as a standlone for our SEO writer to be able to use without having to install our main app
- as a git submodule so it doesnt lock our deploys and pollute our commits history
- as an embed so /blog directly points to the content (SEO ++)

The big plus is that we love markdown

Now time to write about our journey and make our place on the bitcoin gifting scene.