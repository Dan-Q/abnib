module Jekyll
  module TwitterifyFilter
    def twitterify(input)
      input.gsub('Dan', '.@ScatmanDan').
            gsub('Paul', '.@pacifist_049').
            gsub('Rory', '.@RoryPrior').
            gsub('Faye', '.@feebeestar').
            gsub('Simon', '.@theamazingsimon').
            gsub('Jen', '.@JennyWrenRiver').
            gsub('Ele', '.@ele_is_crazy').
            gsub('Adam G', '.@9b2s5f').
            gsub('Matt P', '.@MatthewPaynee').
            gsub('JTA', '.@MisterJTA').
            gsub('Adam W', '.@WestyAds').
            gsub('Andy R', '.@malbo21').
            gsub('Suz', '.@SuzRichardson').
            gsub('Andy K', '.@Mr_Rockmonkey').
            gsub('Alec', '.@AlecofWharf').
            gsub('Claire', '.@Eskoala').
            gsub('Sian', '.@pickettywitch').
            gsub('Penny', '.@PennyWild').
            gsub('Jimmy', '.@Poobar').
            gsub('Gareth', '.@GarethBowker').
            gsub('Bryn', '.@BrynS')
    end
  end
end

Liquid::Template.register_filter(Jekyll::TwitterifyFilter)
