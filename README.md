<h1 align="center">Github Actions Alert Notification</h1>

## Introduction
This repository is for notifying the user on Whatsapp regarding several events in their github repositories.

## Get Started

### Create Twilio Account
1. Create an account in twilio from [here](https://www.twilio.com/)
2. Take note of ```ACCOUNT SID``` and ```AUTH TOKEN``` from your Twilio Account Dashboard.

### Configure your repository secrets
1. Navigate to your repository secrets ```Settings > Secrets```
2. Add below secrets using button ```New repository secret```

 Name              | Value                                              | 
-------------------|----------------------------------------------------|
ACCOUNT_SID        | ```ACCOUNT SID``` copied earlier
AUTH_TOKEN         | ```AUTH TOKEN``` copied earlier
TO_WHATSAPP_NUMBER | Your Whatsapp Number

### Subscribe to Twilio Whatsapp Sandbox
1. Add a contact on your phone for Twilio number: ```+14155238886)```
2. From your Whatsapp number, send a message to the above twilio number in the below format:
   > join "your-name"

### Prepare the action workflow
1. In your repository page, navigate to ```Actions > New Workflow > set up a workflow yourself```. It will open up a ```yaml``` file in code editor.
2. Replace everything in this ```yaml``` file with below:

```yaml
name: Whatsapp Notification

on: [push, pull_request, issues, fork, watch]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: whatsapp-notify
        uses: github-suraj/git-action-alerts@main
        env:
          ACCOUNT_SID: ${{ secrets.ACCOUNT_SID }}
          AUTH_TOKEN: ${{ secrets.AUTH_TOKEN }}
          TO_WHATSAPP_NUMBER: ${{ secrets.TO_WHATSAPP_NUMBER }}
```

## Show your Support
Give us a :star2: if this project helped you!

## License
Copyright © 2021 [Suraj Jaiswal](https://github.com/github-suraj)
