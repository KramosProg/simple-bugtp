resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description "Simple bug teleport by Kramos"

client_script {
	'config.lua',
	'client/main.lua'
}
server_script {
	'server/server.lua',
	'config.lua'
}
