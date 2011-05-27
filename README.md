# OverviewFeature: #
Scenario:

Given:

When:

Then:

# Content per phase #
Given:

- __I am using the tsung parameters from "foo"__ specify the base configuration for tsung foo is a reference to a configuration file

Options from the configuration file
- __loglevel="warning"__
- __dumptraffic="protocol"__
- __controller = host1__
- __clients="host1:1 host2:1 host3:1"__ values are of the form hostname:cpu with cpu the number of cpu/cores we want to use on hostname
- __use_controller_vm = true__  if controller is not in the clients list then false, otherwise true
- __maxusers="30000"__ global number, dispatch to clients according to their weight value
- __monitoring = "host1 host2 host3 host4"__
- __target = hostname__ the target hostname

When:

- use a "jquery"-like syntax to design dom objects (i-e __$("h1").text() == "movie"__ or __$("div.clickable").size() > 0__ or __$(“#submit”).is(‘.disabled’))__
- TODO: establish a list of all actions natively doable by tsung

## load test description: ##
- __with load 'foo'__  foo is either a reference to a load test description or a complete load test description (phase, user, etc)
- __with users from the table 'foo' below__ 
- __with users from file 'myfile.csv'__
- __with load 'foo' as …__ use a reference to a described ‘foo’ load test. It will be usable in other features.


Then: This is where we express the results expected from the load/unit test

## 2 sorts of expected results:##
### unit test results ###
- __the page should load correctly__ the page should return either 2xx or 3xx+2xx
- __I should get return code 'foo' [,'bar']__ or __I should not get return code 'foo'__ http return code should either be or not be the given argument
- __the page should load in less than x second__ gets the html page only, doesn't follow any links
- __the whole page should load in less than x second__ gets the page plus all the images, scripts etc
- __the page should load in less than x second with 95 centile of less than ''__
- __And the page should contain the word "devops"__
- __And the page should match the regex "/[a]/"__
- __And the page should contain a $(input[class=foo])__
- __md5sum for the page should be XXX__
- __the content type should be ‘foo/bar’__
- __I should have $(“#submit”).is(‘.enabled’) and not $(“#submit”).is(‘.disabled’)__

###  load test results could be expressed as: ###
- __all connections should succeed__
- __all connections should succeed within 'x' seconds__
- __average time should be less than 'x' seconds__
- __95 centile should be less than 'x' seconds__
- __'user' should get 'result' in $(field) with 
user | result
foo  | bar
toto | tata__


