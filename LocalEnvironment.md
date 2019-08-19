# Behat Automated Testing:  Set up local environment

Install the following:

* Your favorite IDE (Sublime, PHP Storm, Atom, etc.)
* Git
* Homebrew
* PHP 7.3 installed through Homebrew
* Docker for Mac
* AWS-CLI tool configured to use the Promet Travis CI S3 bucket

## Git

Check to see if you have git installed on your machine by opening a terminal window and typing in:  `which git`

If git is present you should see something similar to:

```
/usr/bin/git
```

To check your installed version, type the following in a terminal window:  `git --version`

You should see something similar to:

```
git version 2.20.1 (Apple Git-117)
```

You need a version of git >= 2.12 or higher.  If you don't have a current version and your laptop is updated, follow the instructions located here:

https://coolestguidesontheplanet.com/install-git-macos/

If you still don't get a version of git installed that is >= 2.12, get in touch with one of the System Administrators (Acie or Ismael).

## Homebrew

The instructions for installing Homebrew can be found here:  https://brew.sh/

If you already have Homebrew installed, run an update in a terminal window with:  `brew update`

## PHP 7.3 installed with Homebrew

To install PHP 7.3 with Homebrew, follow these instructions in a terminal window:

* `brew install php@7.3`

After installing, check to make sure your local php version is 7.3.  To do this:

* Close your terminal window (this is necessary. because Homebrew will modify some environment variables and you'll need to open a new terminal window to load the revised variables)
* Open a new terminal winodw
* type in `php -v`, you should see output similar to the following:

```
PHP 7.3.7 (cli) (built: Jul  5 2019 12:44:05) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.7, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.7, Copyright (c) 1999-2018, by Zend Technologies
```

## Docker for Mac

Docker for Mac will allow you to run Docker stacks locally.  Docker for Mac is easy to install locally, using the supported Docker installer.  Installation instructions can be found here:

https://docs.docker.com/docker-for-mac/install/


## AWS CLI

### Installation

To install the AWS Command Line tool on Mac OS X, follow the instructions here to install AWS CLI with the Bundled Installer:

https://docs.aws.amazon.com/cli/latest/userguide/install-macos.html

If you have any issues installing the command line tool, get in touch with one of the System Administrators (Acie or Ismael).

When installation is complete, you can check that the AWS CLI was installed properly by opening a terminal window and typing in `which aws`.  You should see something similar to:

```
/usr/local/bin/aws
```

### Configuration

To configure the AWS CLI to access the Travis CI AWS S3 instance for Promet, download this txt file, which contains the credentials you need to configure on your local machine:  https://prometprojects.atlassian.net/secure/attachment/72870/72870_gao-s3.txt

Once you download that file, you can open it to access the Access ID and Secret Key needed to configure your local AWS CLI installation to authenticate to the Promet Travis CI S3 instance.

To configure, open a terminal window and type in:  `aws configure --profile travis-ci`

At the following prompts, paste in the indicated values from the txt file downloaded above:

AWS Access Key ID [None]: <paste in the Access ID from the .txt file>
AWS Secret Access Key [None]: <paste in the Secret Key from the .txt file>
Default region name [None]: <hit return>
Default output format [None]: <hit return>

When complete, you should be able to execute the following command in a terminal window:

```
aws s3 ls s3://behat-training --profile=travis-ci
```

And you should see something similar to:

```
2019-08-18 21:00:38       3864 LocalEnvironment.md
```
