import wikipedia

def scrape(name= "Microsoft", length=1):
    results = wikipedia.summary(name, sentences=length)
    return results


# print(scrape())
# print(scrape('Facebook'))
# print(scrape('Facebook', 3))/