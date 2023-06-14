# concourse-apprise-notifier

[Concourse](https://concourse-ci.org/) resource type to send [Apprise](https://github.com/caronc/apprise) notifications.
Code based on [github.com/mockersf/concourse-slack-notifier](https://github.com/mockersf/concourse-slack-notifier).
Currently, only the [persistent storage solution](https://github.com/caronc/apprise-api#persistent-storage-solution) is supported (because that's what I use).

## Installing

Add the following to our Concourse pipeline:
```yaml
resource_types:
- name: apprise
  type: registry-image
  source:
    repository: git.pim.kunis.nl/pim/concourse-apprise-notifier
```

## Source Configuration

- `host`: _Required_. Base Apprise host URL.
- `key`: _Required_. Notification key.

## Behaviour

`check`: No operation.

`in`: No operation.

`out`: Send a message via Apprise.

### Parameters

Check the official [Apprise documation](https://github.com/caronc/apprise-api#persistent-storage-solution) for more information.

- `body`: _Required_. The body of the notification.
- `title`: The title of the notification.
- `type`: The type of the notification.
- `tag`: The tags of the notification.
- `format`: The format of the notification.
