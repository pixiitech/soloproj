module PagesHelper
  def convertKey(fake)
    fake.each_byte.map { |character|
      (character - 7).chr
    }.join
  end
	def createSecret(key)
		key.chars.map { |character|
			((character.codepoints)[0] + 7).chr
		}.join
	end
end
