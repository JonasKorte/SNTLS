require_relative 'ManifestParser'

puts "SNTLS-Build Version 1.0 - Jonas Korte 2021"

print "Reading manifest at \""
print Dir.pwd
puts "/app.sntls-manifest\"..."

if Dir.entries(Dir.pwd).include?"app.sntls-manifest" then
    File.open("app.sntls-manifest", "r+") do |file|
        puts "Parsing manifest..."
        parseManifest(file.read)
    end
else
    print "Fatal: No manifest found at \""
    print Dir.pwd
    puts "/app.sntls-manifest\"."
end