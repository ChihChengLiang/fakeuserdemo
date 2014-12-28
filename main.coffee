if Meteor.isClient

  Template.cards.created = ->
    Deps.autorun ->
      Meteor.subscribe 'users'
    
  Template.cards.helpers
    users: Meteor.users.find()
    
    
    
    
if Meteor.isServer
  Meteor.publish 'users', ->
    return Meteor.users.find()
  