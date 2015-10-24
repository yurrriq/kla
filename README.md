# klä

[![][kla-logo]][kla-logo-large]

[kla-logo]: resources/images/vikings-small.png
[kla-logo-large]: http://callego.deviantart.com/art/Viking-Clothes-334955145

*An LFE Wrapper Library used to Dress Up Erlang Libraries in a Lispy Costume*

##### Contents

* [Introduction](#introduction-)
* [Dependencies](#dependencies-)
* [Installation](#installation-)
* [Usage](#usage-)

## Introduction [&#x219F;](#contents)

Add content to me here!

## Dependencies [&#x219F;](#contents)

As of version 0.5.0, This project assumes that you have
[rebar3](https://github.com/rebar/rebar3) installed somwhere in your ``$PATH``.
And no longer uses the old version of rebar.

Note that if you do not wish to use rebar3, you may use the most recent
rebar2-compatible release of lutil: 0.4.2.

## Installation

Just add it to your ``rebar.config`` deps:

```erlang
  {deps, [
    ...
    {kla, ".*",
      {git, "git@github.com:lfex/kla.git", {tag, "0.5.0"}}}
      ]}.
```

And then do the usual:

```bash
    $ rebar get-deps
    $ rebar compile
```


## Usage

Add content to me here!
