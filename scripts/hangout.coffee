function randomString() {
    chars = '0123456789abcdefghijklmnopqrstuvwxyz'
    length = 32
    var result = '';
    for (var i = length; i > 0; --i) result += chars[Math.round(Math.random() * (chars.length - 1))];
    result += 'nprapps'
    return result;
}

random = randomString()

module.exports = (robot) ->
  robot.hear /(hangout|hang out|hang)/i, (msg) ->
    msg.send "I hear you want a hangout. Try this: https://plus.google.com/hangouts/_/#{ random }?authuser=0&hl=en"
