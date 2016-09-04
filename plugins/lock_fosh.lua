local function run(msg)
   if msg.to.type == 'channel' and not is_momod(msg) then
	delete_msg(msg.id,ok_cb,false)
	else
	kick_user(msg.from.id, msg.to.id)
        return 'Do not swear'
    end
end

return {
    patterns = {
    "[kK][Oo][Ss]",
    "[Nn][aA][Nn][Aa][Tt]",
    "ننت",
    "دیوث",
    "کس ننه",
    "کص"
    }, 
run = run
}
