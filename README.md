# Easy Button for Renaming from Master to Main

Read and follow:
https://www.hanselman.com/blog/EasilyRenameYourGitDefaultBranchFromMasterToMain.aspx

Then when it comes to setting the default branch in GitHub. I have a token in my password manager so this is fast for me. YMMV.

```
docker run -e GITHUB_TOKEN='XXXYYYZZZ1234' -e GITHUB_REPOSITORY='org/repo' metcalfc/easy-button-main:0.0.1
```
