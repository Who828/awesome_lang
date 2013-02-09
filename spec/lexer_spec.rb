require 'lexer'

describe Lexer do
  it "tokenizes identifiers and keywords in given code" do
    code = <<-CODE
      if true:
        print "boo"
        if false:
          pass
    CODE

    Lexer.tokenize(code).should include([:IF, "if"], [:IDENTIFIER, "print"], [:IF, "if"])
    end
end
