[0;31mSignature:[0m     
[0mwikipedia[0m[0;34m.[0m[0msummary[0m[0;34m([0m[0;34m[0m
[0;34m[0m    [0mtitle[0m[0;34m,[0m[0;34m[0m
[0;34m[0m    [0msentences[0m[0;34m=[0m[0;36m0[0m[0;34m,[0m[0;34m[0m
[0;34m[0m    [0mchars[0m[0;34m=[0m[0;36m0[0m[0;34m,[0m[0;34m[0m
[0;34m[0m    [0mauto_suggest[0m[0;34m=[0m[0;32mTrue[0m[0;34m,[0m[0;34m[0m
[0;34m[0m    [0mredirect[0m[0;34m=[0m[0;32mTrue[0m[0;34m,[0m[0;34m[0m
[0;34m[0m[0;34m)[0m[0;34m[0m[0;34m[0m[0m
[0;31mCall signature:[0m [0mwikipedia[0m[0;34m.[0m[0msummary[0m[0;34m([0m[0;34m*[0m[0margs[0m[0;34m,[0m [0;34m**[0m[0mkwargs[0m[0;34m)[0m[0;34m[0m[0;34m[0m[0m
[0;31mType:[0m           cache
[0;31mString form:[0m    <wikipedia.util.cache object at 0x7f6aa41589e0>
[0;31mFile:[0m           ~/anaconda3/envs/functions_from_zero_vscode_env/lib/python3.12/site-packages/wikipedia/wikipedia.py
[0;31mSource:[0m        
[0;34m@[0m[0mcache[0m[0;34m[0m
[0;34m[0m[0;32mdef[0m [0msummary[0m[0;34m([0m[0mtitle[0m[0;34m,[0m [0msentences[0m[0;34m=[0m[0;36m0[0m[0;34m,[0m [0mchars[0m[0;34m=[0m[0;36m0[0m[0;34m,[0m [0mauto_suggest[0m[0;34m=[0m[0;32mTrue[0m[0;34m,[0m [0mredirect[0m[0;34m=[0m[0;32mTrue[0m[0;34m)[0m[0;34m:[0m[0;34m[0m
[0;34m[0m  [0;34m'''[0m
[0;34m  Plain text summary of the page.[0m
[0;34m[0m
[0;34m  .. note:: This is a convenience wrapper - auto_suggest and redirect are enabled by default[0m
[0;34m[0m
[0;34m  Keyword arguments:[0m
[0;34m[0m
[0;34m  * sentences - if set, return the first `sentences` sentences (can be no greater than 10).[0m
[0;34m  * chars - if set, return only the first `chars` characters (actual text returned may be slightly longer).[0m
[0;34m  * auto_suggest - let Wikipedia find a valid page title for the query[0m
[0;34m  * redirect - allow redirection without raising RedirectError[0m
[0;34m  '''[0m[0;34m[0m
[0;34m[0m[0;34m[0m
[0;34m[0m  [0;31m# use auto_suggest and redirect to get the correct article[0m[0;34m[0m
[0;34m[0m  [0;31m# also, use page's error checking to raise DisambiguationError if necessary[0m[0;34m[0m
[0;34m[0m  [0mpage_info[0m [0;34m=[0m [0mpage[0m[0;34m([0m[0mtitle[0m[0;34m,[0m [0mauto_suggest[0m[0;34m=[0m[0mauto_suggest[0m[0;34m,[0m [0mredirect[0m[0;34m=[0m[0mredirect[0m[0;34m)[0m[0;34m[0m
[0;34m[0m  [0mtitle[0m [0;34m=[0m [0mpage_info[0m[0;34m.[0m[0mtitle[0m[0;34m[0m
[0;34m[0m  [0mpageid[0m [0;34m=[0m [0mpage_info[0m[0;34m.[0m[0mpageid[0m[0;34m[0m
[0;34m[0m[0;34m[0m
[0;34m[0m  [0mquery_params[0m [0;34m=[0m [0;34m{[0m[0;34m[0m
[0;34m[0m    [0;34m'prop'[0m[0;34m:[0m [0;34m'extracts'[0m[0;34m,[0m[0;34m[0m
[0;34m[0m    [0;34m'explaintext'[0m[0;34m:[0m [0;34m''[0m[0;34m,[0m[0;34m[0m
[0;34m[0m    [0;34m'titles'[0m[0;34m:[0m [0mtitle[0m[0;34m[0m
[0;34m[0m  [0;34m}[0m[0;34m[0m
[0;34m[0m[0;34m[0m
[0;34m[0m  [0;32mif[0m [0msentences[0m[0;34m:[0m[0;34m[0m
[0;34m[0m    [0mquery_params[0m[0;34m[[0m[0;34m'exsentences'[0m[0;34m][0m [0;34m=[0m [0msentences[0m[0;34m[0m
[0;34m[0m  [0;32melif[0m [0mchars[0m[0;34m:[0m[0;34m[0m
[0;34m[0m    [0mquery_params[0m[0;34m[[0m[0;34m'exchars'[0m[0;34m][0m [0;34m=[0m [0mchars[0m[0;34m[0m
[0;34m[0m  [0;32melse[0m[0;34m:[0m[0;34m[0m
[0;34m[0m    [0mquery_params[0m[0;34m[[0m[0;34m'exintro'[0m[0;34m][0m [0;34m=[0m [0;34m''[0m[0;34m[0m
[0;34m[0m[0;34m[0m
[0;34m[0m  [0mrequest[0m [0;34m=[0m [0m_wiki_request[0m[0;34m([0m[0mquery_params[0m[0;34m)[0m[0;34m[0m
[0;34m[0m  [0msummary[0m [0;34m=[0m [0mrequest[0m[0;34m[[0m[0;34m'query'[0m[0;34m][0m[0;34m[[0m[0;34m'pages'[0m[0;34m][0m[0;34m[[0m[0mpageid[0m[0;34m][0m[0;34m[[0m[0;34m'extract'[0m[0;34m][0m[0;34m[0m
[0;34m[0m[0;34m[0m
[0;34m[0m  [0;32mreturn[0m [0msummary[0m[0;34m[0m[0;34m[0m[0m