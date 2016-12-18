module Yeahboi
  def self.short    #2 secs of 'yeah boy'
    play_short = spawn("afplay -t 2 #{Yeahboi.file_path}")
    text = spawn('printf "YEAH BOI"; while true; do printf "I"; sleep 0.1; done')

    Process.wait(play_short)
    Process.kill('TERM', text)
    return
  end

  def self.long   #longest 'yeah boy' ever
    play_long = spawn("afplay #{Yeahboi.file_path}")
    text = spawn('printf "YEAH BOI"; while true; do printf "I"; sleep 0.1; done')

    Process.wait(play_long)
    Process.kill('TERM', text)
    return
  end

  def self.file_path  #returns absolute path of audiofile
    File.expand_path('../../audio/longestyeahboyever.wav', __FILE__)
  end
end
