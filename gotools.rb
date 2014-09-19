tools = [
  "github.com/nsf/gocode",
  "code.google.com/p/go.tools/cmd/goimports",
  "code.google.com/p/rog-go/exp/cmd/godef",
  "code.google.com/p/go.tools/cmd/oracle",
  "github.com/golang/lint/golint",
  "github.com/kisielk/errcheck",
  "github.com/jstemmer/gotags"
]

puts `mkdir gotools`

tools.each do |tool|
  puts `GOPATH=~/gotools go get #{tool}`
end
