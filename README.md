# Workstation Setup

This project automates the process of setting up a new development machine using a simple [Bash](https://www.gnu.org/software/bash/) script.  
Thanks goes to Pivotal for the original idea/code.

## Goals

The primary goal of this project is to give developers a simple script they can run that will set up the development environment to a known-good standard.

 * A bash script is easy for users to edit locally on-the-fly for small temporary tweaks
 * Everything is in one repository
 * The project name is informative
 * Keep it easy to fork and customize
 * It has very limited requirements: git, bash and Ruby are all available on macOS by default

## Anti-goals

This project does not aim to do everything. Some examples:

 * We don't install everything that your project needs. These scripts should only install generally useful things, and prefer running quickly over being complete.
 * We avoid setting up and maintaining overly-custom configurations. When there is already a tool that will get us something in a conventional manner, such as [bash-it](https://github.com/Bash-it/bash-it), we prefer to use it instead of doing things ourselves.
 * We don't make coffee for you.

**Warning: the automation script is currently aggressive about what it does and will overwrite vim configurations, bash-it configurations, etc.**

## Getting Started

- Run the latest version of macOS, currently [Mojave](https://www.apple.com/macos/mojave/),
  unless you have a specific reason not to
- If you are not on Mojave, you're on your own.
  - These scripts might work on previous versions, but are maintained with only the latest macOS in mind
  - If you absolutely can't use Mojave, consider installing the latest version of [Xcode](https://developer.apple.com/xcode/)
- On Mojave, once you have used git (below), you will have installed the command line developer tools

Open up Terminal.app and run the following commands:

```sh
mkdir -p ~/workspace
cd ~/workspace
git clone https://github.com/stevebroskey/workstation-setup.git
cd workstation-setup
```

### Engineering Machine

If you're setting up an engineering machine choose which languages to install:

```sh
# For developers (also available: ruby golang python c)
./setup.sh java node docker

# For management (TODO)
#./setup.sh c golang java docker
```

The list of Engineering applications is found in: [applications-common.sh](https://./blob/master/scripts/common/applications-common.sh)

### Designer Machine

If you're setting up a design machine run the following:

```sh
./setup.sh designer
```

In addition to the Engineering applications, this script also installs the list of Design applications found in: [applications-designer.sh](https://./blob/master/scripts/opt-in/designer.sh)

## Analytics

The tool will send anonymous user data to Pivotal's Google Analytics account, so we can see what command line arguments are popular.  You can disable this:
```
# Remove unnecessary languages when running command
SKIP_ANALYTICS=1 ./setup.sh java ruby node golang c docker
```
This will also disable brew's [data collection](https://github.com/Homebrew/brew/blob/master/docs/Analytics.md).

## Having problems?

If you're having problems using the setup script, consider comparing with [the original source](https://github.com/pivotal/workstation-setup/issues/new) - you can log an issue in this fork, but there's no guarantee it will be answered.

If you see errors from `brew`, try running `brew doctor` and include the diagnostic output in your issue submission.

## Customizing

If you'd like to customize this project for a project's use:

- Fork the project
- Edit the shells scripts to your liking
- Profit

## Frequently Asked Questions

### Is it okay to run `./designer.sh` command again?

Yes. The script does not reinstall apps that are already on the machine.

