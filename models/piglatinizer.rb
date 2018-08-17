Skip to content

Search or jump to…

Pull requests
Issues
Marketplace
Explore
 @mlisareyes Sign out
1
0 1,007 joanapalero/sinatra-mvc-lab-v-000
forked from learn-co-students/sinatra-mvc-lab-v-000
 Code  Pull requests 0  Projects 0  Wiki  Insights
sinatra-mvc-lab-v-000/models/piglatinizer.rb
066228d  6 days ago
@joanapalero joanapalero Done.
@joanapalero @dfenjves

19 lines (17 sloc)  401 Bytes
class PigLatinizer

   def piglatinize(text)
    @text = text.downcase
    vowel ='aeiou'
    text = text.split()
      text.map do |word|
        if word.length == 1
         "#{word}way"
        elsif vowel.include? word[0].downcase
          "#{word}way"
        else
          split = word.split(/([aeiou])/,2)
          "#{split[1]}#{split[2]}#{split[0]}ay"
      end
    end.join(' ')
  end
end
© 2018 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
Press h to open a hovercard with more details.
