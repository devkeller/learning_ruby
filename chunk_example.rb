def scan_encrypt(string)
  string.scan(/(\w)(\1*)/)
        .map {|x| "#{x[0]}#{x.join.length}" }
        .join
end

def chunk_encrypt(string)
  string.chars
        .chunk(&:itself)
        .map { |char, ary| "#{char}#{ary.length}" }
        .join
end

p scan_encrypt('aaabbhffeec')   => 'a3b2h1f2e2c1'
p scan_encrypt('aabaa')         => 'a2b1a2'

p chunk_encrypt('aaabbhffeec')  => 'a3b2h1f2e2c1'
p chunk_encrypt('aabaa')        => 'a2b1a2'
