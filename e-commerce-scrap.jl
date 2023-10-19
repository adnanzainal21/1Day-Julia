using HTTP
using Gumbo
using Cascadia

url = "https://webscraper.io/test-sites/e-commerce/allinone"

response = HTTP.get(url)
parsed_page = parsehtml(String(response.body))

title = eachmatch(Selector("body > div.wrapper > div.container-fluid.blog-hero > div > div > div > h1"), parsed_page.root)

for div in title
    println("This is Title "*Gumbo.text(div))
end

header = eachmatch(Selector(".jumbotron > h1"),parsed_page.root)

for head in header
    println("This is header :  "*Gumbo.text(head))
end

description = eachmatch(Selector(".jumbotron > p"), parsed_page.root)

for desc in description 
    println("This is Description  :"* Gumbo.text(desc))
end
println("==== Product List =====")
products = eachmatch(Selector(".thumbnail"), parsed_page.root)

for product in products
    local title = eachmatch(Selector("h4 > a.title"), product)
    if !isempty(title)
        println("Title: " * Gumbo.text(first(title)))
    end

    price = eachmatch(Selector(".pull-right.price"), product)
    if !isempty(price)
        println("Price: " * Gumbo.text(first(price)))
    end

    local description = eachmatch(Selector(".caption > p.description"), product)
    if !isempty(description)
        println("Description: " * Gumbo.text(first(description)))
    end

    reviews = eachmatch(Selector(".ratings > p.pull-right"), product)
    if !isempty(reviews)
        println("Reviews: " * Gumbo.text(first(reviews)))
    end

    println("\n---\n")
end
