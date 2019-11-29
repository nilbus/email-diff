email-diff
==========

Get weekly newsletters that only differ slightly, e.g. with a list of upcoming events? Forward your emails to email-diff, and it will reply with differences highlighted.

Dependencies
------------

- email-diff is a [Serverless Framework][] app, powered by AWS Lambda.
- The serverless database [FaunaDB][] stores a copy of the last email it received.
- [Mailgun][] sends and receives emails.

[Serverless Framework]: https://serverless.com/
[FaunaDB]: https://fauna.com/
[Mailgun]: https://app.mailgun.com/

Initial Setup
-------------

### AWS

1. Create an AWS account: https://aws.amazon.com/
2. Create credentials and config files per the [docs](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html).

### Serverless

1. Create a serverless.com account.

2. Install the Serverless client, and log in

        npm install -g serverless
        npm install --save-dev serverless-ruby-package

        sls login

3. Customize `serverless.yml` to suit your needs. The AWS provider region should match the region specified in AWS config file.

4. Deploy, and note the function endpoint URL (ends with `/email-diff/{id}`).

        sls deploy

FYI: The ruby runtime is not currently supported by the Serverless Dashboard (monitoring).

### Mailgun

1. Create a [mailgun.com][Mailgun] account
2. Enter a credit card to use the free plan without limitations on recipients and domains.
3. _(Optional)_ On the [dashboard][mailgun dashboard], set up an MX on a subdomain as a _sending domain_. Alternatively, use the free sandbox subdomain provided by Mailgun.
4. Add a [_Receiving_][mailgun receiving] route for each recurring email you'd like to compare (e.g. 1 for each newsletter series).
    - Expression type: match recipient
    - Recipient type: _(make up an email address that uses your sending domain)_
    - Forward: _(checked)_ Paste the endpoint URL from the serverless deployment, replacing `{id}` with a custom identifier (alphanumeric with dashes or underscores) corresponding to the email series being compared.
    - Store and notify: _(not checked)_
    - Stop: _(checked)_
5. Set `MAILGUN_DOMAIN` and `MAILGUN_API_KEY` in your environment to the appropriate values.

[mailgun dashboard]: https://app.mailgun.com/app/dashboard
[mailgun receiving]: https://app.mailgun.com/app/receiving

### Fauna DB

1. Create a [fauna.com][FaunaDB] account.
2. From the dashboard, create a new database with name `email-diff` (or customize via ENV var `FAUNA_DB_NAME`).
3. Create a new collection with name `email_version`, with no TTL. Do _Create collection index_.
4. Under _Security_, Create a new key. Use _Role: Server_, _Key Name: email-diff_
5. Set `FAUNA_DB_KEY` in your environment to the key's secret value.

### Sentry error tracking

_(optional)_

1. Create a [sentry.io][Sentry] account.
2. Create a new Ruby project
3. Set `SENTRY_DSN` in your environment to your project's DSN configuration value.

[Sentry]: https://sentry.io/

### Configuration

Have these variables set in your environment when deploying

- `FROM_EMAIL`: sending email address on sending domain
- `RECIPIENTS`: comma-separated email addresses, optionally in the form `Sender Name <email@example.com>, no-name@example.com`

Environment variable summary
----------------------------

- `FROM_EMAIL`
- `MAILGUN_DOMAIN`
- `MAILGUN_API_KEY`
- `FAUNA_DB_KEY`
- `RECIPIENTS`
- `SENTRY_DSN`

Development
-----------

Install Ruby dependencies:

    bundle install --standalone

Test integration locally:

    rake test:integrated

Test on remote server:

    sls invoke -f email-diff
