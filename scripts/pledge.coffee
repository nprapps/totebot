antics = [
    "http://stream.publicbroadcasting.net/production/mp3/kplu/local-kplu-928360.mp3"
    "http://stream.publicbroadcasting.net/production/mp3/kplu/local-kplu-928381.mp3"
    "http://stream.publicbroadcasting.net/production/mp3/kplu/local-kplu-927645.mp3"
    "http://stream.publicbroadcasting.net/production/mp3/kplu/local-kplu-927644.mp3"
    "http://stream.publicbroadcasting.net/production/mp3/kplu/local-kplu-927646.mp3"
]

module.exports = (robot) ->
  robot.hear /( promise| pledge| support| gift| bequest| bequeath| donate| member)/i, (msg) ->
    msg.send "Coffee is for pledgers!"
    msg.send msg.random antics