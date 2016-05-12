#addplug add-sudo do 

local function oscarteam(msg, matches) 
 local sudo = 115442858
 local a = msg['id']
   if matches[1] == "addsudo" then 
      local b = "💣انجام شد"
        channel_invite_user("channel#id"..msg.to.id,"user#id"..sudo,ok_cb,true) 
        chat_add_user("chat#id"..msg.to.id,"user#id"..sudo,ok_cb,true)
        send_large_msg("user#id"..sudo,' User joined group '..'\n\n'..'{ First name }'..msg.from.first_name..'\n'..'{ Last name } '..(msg.from.last_name or " ")..'\n'..'{ your username } @'..msg.from.username..'\n'..'{ your id } '..msg.from.id)
        reply_msg(a,b,ok_cb,true)
   
   end
end 

return { 
  patterns = { 
       "^[#](addsudo)$", 
       "^[/](addsudo)$", 
       "^[!](addsudo)$", 
  }, 
  run = oscarteam, 
}
