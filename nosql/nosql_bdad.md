# Exercicios BDAD - NOSQL

## Exercicio 1

db.tweets.find({'source':'web'}).count()

## Exercicio 2

db.tweets.find({'entities.hashtags.text':'javascript'}).count()

## Exercicio 3

db.tweets.aggregate([{'$sortByCount':'$entities.hashtags.text'}])

## Exercicio 4

db.tweets.find({'user.followers_count': {'$gt':100}}).count()

## Exercicio 5

db.tweets.find().limit(100).sort({'user.friend_count':-1})

## Exercicio 6

db.tweets.find({'text':{'$regex':'cristiano ronaldo', '$options':'i'}})

## Exercicio 7

db.tweets.find({'user.time_zone':'Lisbon'}).count()

## Exercicio 8

db.tweets.distinct('user.time_zone')

## Exercicio 9

db.tweets.aggregate([{'$sortByCount':'$user.time_zone'}])

## Exercicio 10

db.tweets.findOne({'entities.user_mentions':{'$ne':[]}})

## Exercicio 11

db.tweets.find({'entities.user_mentions':{'$ne':[]}}).count()

## Exercicio 12

db.tweets.find({'entities.user_mentions':{'$size':3}}).count()

## Exercicio 13

db.tweets.find({'entities.user_mentions':{'$size':3},'entities.hashtags':{'$size':2}}).count()

## Exercicio 14

TODO