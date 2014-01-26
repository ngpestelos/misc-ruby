require "open-uri"

open("http://prism.library.cornell.edu/control/authBasic/authTest",
     :http_basic_authentication => ["test", "this"])
