using HTTP
using Gumbo
using Cascadia

url = "https://en.wikipedia.org/wiki/Julia_(programming_language)"

response = HTTP.get(url)
parsed_page = parsehtml(String(response.body))

content_div = eachmatch(Selector(".mw-parser-output"), parsed_page.root)
for div in content_div
    println(Gumbo.text(div))
end
