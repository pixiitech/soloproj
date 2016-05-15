class SuperMailer < ApplicationMailer
	default from: 'btstratego@gmail.com'
	def super_mailer(name, email, telephone, howcanihelp)
		@name = name;
		@email = email;
		@telephone = telephone;
		@howcanihelp = howcanihelp;
		mail(to: 'auston@wyncode.co', subject: "Website submission | " + name)
	end
end