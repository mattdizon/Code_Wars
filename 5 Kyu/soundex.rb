=begin
Encode strings using a Soundex variation called "American Soundex"
using the following steps:
    Save the first letter.
    Remove all occurrences of h and w except first letter.
    Replace all consonants (include the first letter) with digits as follows:
        b, f, p, v = 1
        c, g, j, k, q, s, x, z = 2
        d, t = 3
        l = 4
        m, n = 5
        r = 6
    Replace all adjacent same digits with one digit.
    STEP MUST BE DONE AFTER REPL ADJ`
    Remove all occurrences of a, e, i, o, u, y except first letter.
    If first symbol is a digit replace it with letter saved on step 1.
    Append 3 zeros if result contains less than 3 digits.
    Remove all except first letter and 3 digits after it

    Example:soundex("Sarah Connor"), "S600 C560")

    KEY is to do it in the order stated

    SARAH CONNOR => SARA CONNOR
    SA6A CO55O6 => SA6A CO5O6
    S600 C560

=end
def soundex(names)
  names.split(' ')
      .map{ |word|
     word
        .gsub(/(?<!^)[hw]/, '')
        .gsub(/[bfpv]/i, '1')
        .gsub(/[cgjkqsxz]/i, '2')
        .gsub(/[dt]/i, '3')
        .gsub(/[l]/i, '4')
        .gsub(/[mn]/i, '5')
        .gsub(/[r]/i, '6')
        .gsub(/(\d)(\1)+/, '\1')
        .gsub(/(?<!^)[aeiouy]/, '')
        .gsub(/^./, word[0])
        .capitalize
        .concat('000')[0..3]
    }
    .join(' ')
    x =  "EWEello World".gsub(/(?<!^)[WH]/,"").gsub(/(?<!^)[efpv]/i, '1')
    print x
end
soundex(" Srah Connor")
=begin

=end
