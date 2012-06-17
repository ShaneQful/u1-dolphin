#!/usr/bin/ruby

require "open3"

class UbuntuOne
  def unsync_folder input
    streams =  Open3.popen3 "u1sdtool --info="+input
    info = ""
    while(info != nil && !(info.include? "share_id"))
      info = streams[1].gets
    end
    if(info != nil)
      info["  share_id: "] = ""
      share_id = info.chomp
      exec "u1sdtool --delete-folder="+share_id
    end
  end

  def publish_file input
    streams =  Open3.popen3 "u1sdtool --publish-file="+input
    url = streams[1].gets
    puts url
    url["File is published at "] = ""
    streams.each do |i|
      i.close
    end
    exec "qdbus org.kde.klipper /klipper org.kde.klipper.klipper.setClipboardContents "+url
  end
end


#arg0 is the function to call
#arg1 is the file
input = ""
ARGV[1].each_char do |c| #put the spaces back
  if(c != " ")
    input += c
  else
    input += "\\ "
  end
end

puts ARGV[0]+" "+input
if(ARGV[0] == "unsync_folder")
  UbuntuOne.new.unsync_folder input
elsif ARGV[0] == "publish_file"
  UbuntuOne.new.publish_file input
else
  puts "Something went wrong :("
end

