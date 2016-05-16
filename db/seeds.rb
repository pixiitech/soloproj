# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Page.create(title: "logo", body: "<p>
	<span class='language'><a href='/' class='whitelink'>EN</a></span>
	<span class='language'><a href='/fr' class='whitelink'>FR</a></span>
	<span class='language'><a href='/pages.html' class='whitelink'>LOG IN</a></span>
</p>
<div class='centered'>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;<img src='logo.png' />
</div>", style: "firstpage")
Page.create(title: "bio", body:"		<div class='leftside'>
			<div class='heading'>UI/UX<strong> DESIGNER</strong></div>
			<p>
				My name is Vincent Tantardini, I'm a French UI/UX designer living in Lyon, fascinated by technology innovations, product branding and typography. I offer my design skills to build awesome websites and mobile applications in line with the ambitions of their owners.
			</p>
			<p>
				What I love above all things is pushing the limits of ergonomics and conception without ever neglecting user experience. Let's work on great projects together.
			</p>
		</div>
		<div class='rightside'>
			<p>
				<img src='/trianglecircle.png' /><br /><br /><br /><br />
			</p>
			<div>
				<span class='readmore'>&nbsp;+&nbsp;</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
		</div>", style: "whitepage")
Page.create(title: "frontenddev", body: "		<div class='leftside'>
			<p>
				<img src='curlybraces.png' />
			</p>
		</div>
		<div class='rightside'>
			<div class='heading'>FRONT-END<strong> DEV</strong></div>
			<p>
				To go along with my design skills, my toolbox is filled with acronyms you might be afraid of such as HTML5, CSS3, jQuery and SCSS. I love to see new standards appear and mature allowing the creation of new websites, each one more advanced and amazing than the previous.
			</p>
			<p>
				Page loading speed, display performance, responsive layout and SEO optimizations are part of my job, I take these issues at heart from the very beginning.
			</p>
			<p>
				______
			</p>
		</div>	", style: "lightgraypage")
Page.create(title: "portfolio", body: "<div class='centered'>
	<div class='boxed'>
		<div class='heading'><strong>PORTFOLIO</strong></div>
			<br />
			Take a look at my Dribbble account to discover my latest web designs, logos design and illustrations in addition to my past works.<br /><br /><br />
			<span class='boxed-button'>
				CHECKOUT <strong>MY DRIBBBLE</strong>
			</span>
		</div>
	</div>
</div>", style: "greypage")
Page.create(title: "social", body: "<div class='leftside'>
	<div class='heading'>GET <strong>CONNECTED</strong><br /></div>
	<table class='social'>
		<tr>
			<td><img src='telephone.png' /></td>
			<td>06 03 88 69 47</td>
			<td><img src='email.png' /></td>
			<td>E-mail</td>
		</tr>
		<tr>
			<td><img src='dribbble.png' /></td>
			<td>Dribbble</td>
			<td><img src='behance.png' /></td>
			<td>Behance</td>
		</tr>
		<tr>
			<td><img src='twitter.png' /></td>
			<td>Twitter</td>
			<td><img src='linkedin.png' /></td>
			<td>LinkedIn</td>
		</tr>
		<tr>
			<td><img src='instagram.png' /></td>
			<td>Instagram</td>
			<td><img src='vcard.png' /></td>
			<td>Vcard</td>
		</tr>
	</table>
</div>
<div class='rightside'>
	<div class='heading'>LAST <strong>TWEETS
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></div>
	<table class='tweets'>
		  <twitter />
	</table>
</div>", style: "bluepage")
Page.create(title: "contact", body: "<div class='centered'>
	<div class='heading'><strong>WANT MORE DETAILS,</strong><br />
			PRICING INFOS OR A TEST DRIVE?
	</div>
	<form name='contact' class='contact' method='post' action='/submitform'>
		<br />
		<input type='text' name='name' onClick='this.value=\"\"' class='name' value='NAME' size='50' /><br /><br />
		<input type='text' name='telephone' onClick='this.value=\"\"' class='telephone' value='TELEPHONE' size='25' />&nbsp;
		<input type='text' name='email' onClick='this.value=\"\"' class='email' value='EMAIL' size='25' /><br />
		<span class='contact'>HOW CAN I HELP?</span>
		<textarea name='howcanihelp' class='howcanihelp' rows: '3'></textarea><br /><br />

		<input type='submit' value='SEND' class='grey' />
	</form>
</div>
", style: "greypage")
Page.create(title: "footer", body: "		<div class='leftside'>
			<span class='dim'>VINCENT TANTARDINI &#169; 2012-2014. ALL RIGHTS RESERVED.</span><br />
			<span class='bright'>HELLO@VTCREATIVE.FR</span>
		</div>
		<div class='rightside'>
			<span class='bright'><a href='#top'>BACK TO TOP &#8593;</a></span>
		</div>
<br /><br /><br />", style: "pagefooter")