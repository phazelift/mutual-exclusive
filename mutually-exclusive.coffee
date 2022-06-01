{ allString }	= require 'types.js'
MessageEvents	= require 'message-events'


message = new MessageEvents

message.format 'error', (text) ->
	sender	: 'mutually-exclusive'
	type		: 'error'
	text		: text



mutuallyExclusive = (a, b) ->
	if not allString a, b
		return message.error 'mutually-exclusive requires string type arguments'

	for ch in a then if b.indexOf(ch) > -1
		return false
	return true



mutuallyExclusive.onError = (handler) -> message.on 'error', handler



module.exports = mutuallyExclusive