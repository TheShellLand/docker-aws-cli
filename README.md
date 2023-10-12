# AWS cli in docker

Run AWS cli in docker

## Login

```shell
# access key and token
/bin/bash aws configure

# sso
/bin/bash aws configure sso
```

## Install and run on docker

```shell
/bin/bash build.sh
```

```shell
/bin/bash test.sh
```

```shell
/bin/bash aws
```

## Arguments

```shell
usage: aws [options] <command> <subcommand> [<subcommand> ...] [parameters]
To see help text, you can run:

  aws help
  aws <command> help
  aws <command> <subcommand> help
```