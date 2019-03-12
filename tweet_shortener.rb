def dictionary
  shortener = {"hello":"hi", "two": 2, "to": 2, "too": 2, "for": 4, "four": 4, "be": "b", "you": "u",
  "at": "@", "and": "&"}
end

def word_substituter(string)
    arr,arrs = [], []
    string.split.each do |i|
      arr << i.to_sym
      end

    arr.each do |i|
        if !dictionary.include?i.downcase
        arrs << i.to_s
        else
        arrs << dictionary[i.downcase]
        end
    end

    arrs.join(" ")

end


def bulk_tweet_shortener(tweets)
  arr = []
  tweets.each do |i|
    arr << word_substituter(i)
  end

arr.each do |i|
  puts i
end

end

def selective_tweet_shortener(tweet)
arrs = []
      if tweet.length > 140
        arrs << word_substituter(tweet)[0..140]
      elsif word_substituter(tweet).length < 130
        arrs << tweet
      else
        arrs << tweet
      end

arrs.join(" ")
end


def shortened_tweet_truncator(tweet)
tweet = word_substituter(tweet)

if tweet.length > 140
  tweet[0..136] + "..."
  else
  tweet
  end

end
