local function run(msg, matches, callback, extra)

if matches[1] == 'myname' then
    local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')
if group_lang then
    return 'نام شما👮🏻 :\n'..string.gsub(msg.from.print_name, "_", " ")
else
   return 'your name👮🏻 :\n'..string.gsub(msg.from.print_name, "_", " ")
   end
end
if matches[1] == "mynumber" then
return " Hi Dear your Number 📱is : +"..(msg.from.phone or "لايوجد" )
end

if matches[1] == 'gpname' then
    local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')
if group_lang then
    return 'نام گروه👮🏻 :\n'..string.gsub(msg.to.print_name, "_", " ")
    else
    return 'Group name👮🏻 :\n'..string.gsub(msg.to.print_name, "_", " ")
    end
end
if matches[1] == 'myid' then
    local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')
if group_lang then
    return 'ایدی شما👮🏻 :\n'..msg.from.id
else
    return 'Your ID👮🏻 :\n'..msg.from.id
    end
end
if matches[1] == 'gpid' then
    local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')
if group_lang then
    return 'ایدی گروه👮🏻 :\n'..msg.to.id
else
    return 'Group ID👮🏻 :\n'..msg.to.id
    end
end
end
return {
  patterns = {
  "^[!/#](myname)$",
  "^[!/#](gpname)$",
  "^[!/#](myid)$",
  "^[!/#](gpid)$",
  "^[!/#](mynumber)$",

  },
  run = run
}
