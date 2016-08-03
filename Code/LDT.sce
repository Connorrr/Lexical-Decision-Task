#File: 			LDT.sce
#Description:	Contains trial objects
#Programmer:	Connor Reid (Psy Technician)
#Created@:		14/07/2016
#LastMod@:		14/07/2016
#ModifiedBy:	Connor Reid
#Copyright@: 	School Of Psychology, Griffith University
#-------------------------------------------------------------------

pcl_file = "LDT.pcl";
scenario = "LDT";
response_matching = simple_matching;

default_font_size = 20;
default_text_color=255,255,255;
default_background_color = 0,0,0;
active_buttons = 1;
button_codes = 1;		

#write_codes = true;		#write codes to port
#pulse_width = 20; 		#if port is parallel

begin;

############### Text #########################################

text{
	caption = "In the following task you will be presented with a string of letters. Your task is to quickly and accurately identify whether the string of letters is a word or non-word.  

eg.  Word \"THE\" or Non-word \"TEH\"\n

Please respond by pressing the spacebar key if the string of letters is a word.\n

If the string of letters is a non-word, please do not press any key. The next trial will begin soon after.\n

Please place your finger on the spacebar key to prepare.\n

Before completing the trials, you will be presented with 10 practice trials.\n

Press the spacebar when you are ready to continue.";
}instructions_text;

text{
	caption = "Please respond by pressing the <b>spacebar</b> key if the string of letters is a <b>word</b>.

If the string of letters is a <b>non-word</b>, please <b>do not press any key</b>. The next trial will begin

soon after.\n

Please place your finger on the spacebar key to prepare.";

	formatted_text = true;
}instructions_text2;

text{
	caption = "Blah";
	font_size = 50;
}main_text;

text{
	caption = "Congratulations!  You have finished all trials.  Thank you for your participation.";
}goodbye_text;

########################### Pictures #########################

picture{
	text instructions_text; x = 0; y = 0;
}instructions_pic;

picture{
	text instructions_text2; x = 0; y = 0;
}instructions_pic2;

picture{
	text main_text; x = 0; y = 0;
}main_pic;

picture{
	text{caption = "+"; font_size = 40; font_color = 255,255,255;}fixation_text; x = 0; y = 0;
}fixation_pic;

picture{
	text{caption = "?"; font_size = 50;}question_mark_text; x = 0; y = 0;
}question_mark_pic;

picture{
	text goodbye_text; x = 0; y = 0;
}goodbye_pic;

###################### Trials ################################

trial{
	trial_duration = forever;
	trial_type = first_response;
	picture instructions_pic;
}instructions_trial;

trial{
	trial_duration = forever;
	trial_type = first_response;
	picture instructions_pic2;
}instructions_trial2;

trial{
	trial_duration = 200;
	trial_type = first_response;
	picture main_pic;
}main_trial;

trial{
	trial_duration = 500;
	trial_type = fixed;
	picture fixation_pic;
}fixation_trial;

trial{
	trial_duration = 1000;
	trial_type = fixed;
	stimulus_event{
		picture question_mark_pic;
		response_active = true;
	}response_event;
}question_mark_trial;

trial{
	trial_duration = 500;
	trial_type = fixed;
	picture {}blank_pic;
}blank_trial;

trial{
	trial_duration = 500;
	trial_type = fixed;
	picture {text{caption = "X"; font_size = 50; font_color = 255,0,0;}incorrect_text; x = 0; y = 0;}incorrect_pic;
}incorrect_trial;

trial{
	trial_duration = 3000;
	trial_type = fixed;
	picture goodbye_pic;
}goodbye_trial;

