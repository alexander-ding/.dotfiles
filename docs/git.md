# Configuring Git

The `.gitconfig` file in this repository contains user-specific settings that need tweaking if you're not me.
Follow this guide.

## Personal Information

Use your own name and email for Git.

```bash
git config --global user.name <your name>
git config --global user.email <your email>
```

## GPG Signing

GitHub identifies the author of a commit based on the name and email address metadata of each commit, and that can be easily modified by changing your Git config.
While someone can't just suddenly gain push access to my repositories, they can impersonate me in their commits to repositories they have access to.

Therefore, I sign my commits with a GPG key to prove that my commits are mine.
You don't have to do this, but if you do, you need to supply your own GPG key.

### Option 1: Don't Bother with Signing

If you do not wish to sign with GPG at all, you need to run the following

```bash
git config --global --unset user.signingKey
git config --global --unset commit.gpgsign
```

### Option 2: Use Your Own Signing Key

You can either import your GPG key from another machine ([instructions](https://gist.github.com/angela-d/8b27670bac26e4bf7c431715fef5cc51)) or generate a new GPG key ([instructions](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)).
Then, configure Git to use that signing key ([instructions](https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key)).
Finally, you need to make sure that GitHub knows that this GPG key represents you ([instructions](https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-gpg-key-to-your-github-account)).
