tools = [
  "github.com/nsf/gocode",
  "code.google.com/p/go.tools/cmd/goimports",
  "code.google.com/p/rog-go/exp/cmd/godef",
  "code.google.com/p/go.tools/cmd/oracle",
  "github.com/golang/lint/golint",
  "github.com/kisielk/errcheck",
  "github.com/jstemmer/gotags",
  "code.google.com/p/go.tools/cmd/godoc",
  "code.google.com/p/go.tools"
]

puts `mkdir gotools`

tools.each do |tool|
  puts "Installing #{tool}"
  `GOPATH=~/gotools go get #{tool}`
end
