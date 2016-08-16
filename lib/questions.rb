@questions = {"Have your parents ever had to work more than one job to support your family?" => -1,"Have you ever felt socially obliged by your friends to eat at a place out of your budget?" => -1,"Can you show affection for your romantic partner in public without fear of ridicule or violence?" => 1,"Is the primary language spoken in your household something other than English?" => -1,"Do you feel that your family would support you no matter what?" => 1,"Have you ever tried to change your speech or mannerisms to gain acceptance?" => -1,"Do you go on multiple vacations in a year?" => 1,"Have you ever felt embarrassed about your clothes or house while growing up?" => -1,"Has anyone ever blamed your mistakes on your gender/ethnicity?" => -1,"Can you legally marry the person you love?" => 1,"Were you born in Singapore?" => 1,"Have you or your parents ever gone through a divorce?" => -1,"Do you feel like you had adequate access to healthy food growing up?" => 1,"Are you reasonably sure you would be hired for a job based on your ability and qualifications?" => 1,"Do you feel comfortable being emotionally expressive/open?" => 1,"Have you ever been the only person of your race/gender/sexual orientation in a classroom or workplace setting?" => -1,"Did you have a job during your secondary and/or ITE/Polytechnic/Junior College years?" => -1,"Do you feel comfortable walking home alone at night?" => 1,"Have you ever traveled outside of South East Asia?" => 1,"Have you ever felt like there was NOT adequate or accurate representation of your race, sexual orientation, or gender in the media?" => -1,"Do you feel confident that your parents would be able to financially help/support you if you were going through a financial hardship?" => 1,"Have you ever been bullied or made fun of based on something that you can't change?" => -1,"Have you ever been on a family vacation?" => 1,"Can you buy new clothes or go out to dinner whenever you want to?" => 1,"Have you ever been offered a job because of your association with a friend or family member?" => 1,"Was one of your parents ever laid off or unemployed not by choice?" => -1,"Have you ever felt uncomfortable about a joke/statement you overheard related to your race, gender, appearance, or sexual orientation but felt unsafe to confront the situation?" => -1,"Have you ever been rejected in a job interview because of your race/skin colour?" => -1,"Have you ever been bullied/discriminated against in Singapore based on your country of origin?" => -1,"Have you ever been excluded from a sport because of your gender?" => -1,"Do you have access to tertiary education?" => 1,"Have you ever been told that the way you dress is attracting unwanted judgement?" => -1,"Have you ever been looked down upon for a job that you do?" => -1,"Do you own or have access to your own car/motorcycle?" => 1,"Have you ever had multiple tuitions at the same time in school?" => 1}
@baseline = 0
@score = @baseline
@debug = false

# ask the user a question and get answer. keeping track of score.
@questions.each do |question, action|
	puts "#{question}"
	puts "yes - 1"
	puts "no - 2"

	# if debug flag is true, answer all questions with 1; otherwise gets.
	@debug ? answer = 1 : answer = gets.to_i
	
	puts "your answer was #{answer}."
	puts '_'*20
	
	#if answer is 1 (yes), add value of action to score.
	if answer == 1
		@score += action
	end
	
	puts "your score is #{@score}"
	puts "baseline is #{@baseline}"
	puts '_'*20
end