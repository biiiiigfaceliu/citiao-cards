# Mobile word-card tool

User needs: personal iPhone Home Screen app, offline editing and PNG export after initial online installation; no account system or cloud draft sync. Retain desktop card style. Original Desktop HTML is unchanged.

## Publication completed 2026-10-10

- Native deployment status: succeeded.
- Live URL: https://citiao-qingnian-cards.ctyouth.chatgpt.site
- Published commit: 8c9efb50fbe872bf7a251d442141bad588e29577
- Version: appgprj_6ac9ef9317c88191952438ef71d5407b~appgver_b8ed70dc98e88191bb3364868d1a0396
- Deployment: appgdep_6ac9f49559c481918ec517453884c533
- User changed the approval setting. Approved escalated shell execution allowed credentials through stdin and source push.
- Local packaging failed because package-site.mjs requires bash, unavailable on this host. Remote build fallback successfully published the verified pushed source.
- User explicitly requested publication without further offline testing. iPhone behavior remains unverified.

## Earlier state (superseded by publication above)

- Buildless app in dist with manifest, local icons, service-worker shell caching, local draft storage, mobile preview, PNG export dialog, native file sharing and download fallback.
- Registered private Site: appgprj_6ac9ef9317c88191952438ef71d5407b. Reuse this ID; do not create another Site.
- Expected origin (NOT live): https://citiao-qingnian-cards.ctyouth.chatgpt.site
- Source has not been pushed or published. No saved version or deployment exists yet.
- site-workflow.mjs reached its stdin prompt in exec session 34345. Nonempty write_stdin, including cancellation, was rejected by the current sandbox approval policy. A project-directory write grant and network grant did not resolve it. Do not keep retrying under unchanged permissions.
- Credentials were only held in session memory, not persisted. Obtain a fresh credential for this Site when resuming if necessary.

## Verification

- JavaScript parsed in initial test invocation.
- Browser QA did not run: Edge launch failed, then persistent-profile launch timed out. No successful screenshots or offline browser results are claimed.
- test.cjs contains the intended checks for mobile and desktop layout, PNG pixel content, draft recovery, offline reload and export, high-resolution PNG and long-text overflow protection.
- iPhone Safari Home Screen installation, airplane-mode cold launch, and saving to Photos remain required acceptance tests.
- Private-host authentication/redirect behavior must also be tested with the installed service worker. The app never caches login redirects.

## Publication

Follow the Sites skill. Manifest already has the correct project ID and static directory. Package only through the approved source helper after resolving permissions, then publish the exact pushed commit as owner-private. Do not claim the expected origin is live before a successful deployment result.
