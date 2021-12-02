# TwitterAnalyser

This repository collects all my work to compose a proper Twitter Analyser.

![](https://prod-central-prod-sm-site-media.s3.eu-west-1.amazonaws.com/sm/public/wp-content/uploads/2021/03/22124459/connector-twitter-01-640x360.png)

## Introduction

This should be in principle a "FullStack" project, meaning including data collection, backend models and APIs, visualisation, and frontend.


### Motivation

The main motivation is to have fun and to enjoy the challenge of developing something complete.
On the other hand, nowadays Twitter data are very important and thei analysis can give insights about interesting quetions one may wonder.

## Modules

The modules of such Analyser are different (and in expansion), for the moment being they are:

1. [TwitterGenerator](TwitterGenerator-v2): A GPT-2 based model to generate tweets on the style of the given user.

2. [TwitterGraph](TwitterGraph): A model to create a mention/follower graph based on users interactions.

3. [TwitterSentiment](TwitterSentiment): A Sentiment Analysis model for tweets.

4. [TwitterToxic](TwitterToxic): A Toxicity model in order to find out whether a message can be toxic.

## Collaborating

You are welcome to contribute adding new modules or suggesting features.
If you are happy to do so, please have a look at [CONTRIBUTING.md](CONTRIBUTING.md) to see how to do it.
