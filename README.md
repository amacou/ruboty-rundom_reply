# Ruboty::RundomReply

ruboty plugin for rundom reply

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-rundom_reply'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruboty-rundom_reply

## Usage
add rundom.yaml to ruboty root like below

```
reply_all:
  hoge:
    - huga
    - piyo
reply:
  piyo:
    - boo
    - baz
repeat_all:
  abc:
    - efg
    - hij
repeat:
  os:
    - windows
    - linux
    - macosx

```

And then call
```
$ ruboty

#reply all
> hoge
huga

#reply
> ruboty piyo
boo

#repeat all
> abc aaaaaaaaaa
hij: abc aaaaaaaaaa

#repeat
> ruboty os
windows: ruboty os
```

## Contributing

1. Fork it ( https://github.com/amacou/ruboty-rundom_reply/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
