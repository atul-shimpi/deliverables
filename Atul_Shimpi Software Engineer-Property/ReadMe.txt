************************************************************************************************************************
Welcome to ruby_assessment
************************************************************************************************************************

This file guides you through steps to install ruby_assessment on Windows
If you dont want have time to install, you can view the application from http://ruby_assessment:3000 (deployed on heroku)

This version has been tested in Windows 7, Ubuntu 12.5 LTS

****************************************************************************************************************************
Installating ruby_assessment in Windows
****************************************************************************************************************************
1] Extract the "Atul_Shimpi-Software Engineer-Ruby.zip" folder on C:\ drive
2] Install Ruby 2.1.6  
   Steps :
     -Download ruby-2.1.6 installer from http://rubyinstaller.org/downloads/. 
	   Click ruby.2.1.6 under "RubyInstallers" section on this site   
     -After downloading run the installer ("rubyinstaller-2.1.6")       
     -Select Language as English and presss OK button 
     -Accept the License and press Next button
     -Keep the installation directory as "C:\Ruby21" (default)
      Check the "Add Ruby Executables to your path" option
      Press Install button     
     
   Next, verify Ruby 2.1.6 is successfully installed
   Steps :
     -On the command prompt run below command
       ruby -v and press enter.
       
       If "ruby 2.1.6p336 (2015-04-13 revision 50298) [i386-mingw32]" is the output then ruby is installed successfully.
    
       If any other output is there then do below steps
         -Right click "My Computer" and select "Properties" menu("My Computer" on windows explorer or Desktop)
         -Click "Advance System Settings" from left of the window.
         -Click "Environment Variables" button on the bottom of the windows
         -From the "System Variables" list double click the "Path" varaible.
         -Add ";C:\Ruby21\bin" to the end of the "Variable Value"
          Note : "C:\Ruby21\bin" is the path where ruby was install in 1] Install Ruby 2.2.2 step
         -Click the "OK" button
         -Click the "OK" button
         -Click the "OK" button
   
   Once again "Verify ruby.2.1.6 is successfully installed" according to steps given above  
3] Ruby DevKit
   Steps :
     -Download Ruby development kit from http://rubyinstaller.org/downloads/. 
	   Click "DevKit-tdm-32-4.5.2-20111229-1559-sfx.exe under" "Development Kit" section on this site 
     -Create a folder named DevKit inside C:/Ruby21/ 
	 -Extract DevKit-tdm-32-4.5.2-20111229-1559-sfx folder to C:/Ruby21/DevKit
     -Open command prompt and go to C:/Ruby21/DevKit
     -Run below commands
       ruby dk.rb init
       ruby dk.rb install
4] Install Rails
   Steps :
     gem install rails -v 4.2.0   
5] Install bundler
   Steps :
     -Open command prompt
     -Run below command
      gem install bundler
6] Install dependenices (bundle install)
   Steps :
     -Open Command prompt
     -Go to extracted folder \Source\ folder
     -Run below command
       bundle install --without development
7] Setup database   
   Steps :
     -Installing MySQL
	   Watch this video - video https://www.youtube.com/watch?v=O4xXzTIcnDE
     -Open command prompt and go to "Source" directory inside the extracted folder
     -Run below commands
      rake db:create
      rake db:migrate
	  rake db:seed
8] Configure email
   -Open /Source/config/development.rb file form extracted folder   
   -Go to end and configure config.action_mailer.smtp_settings 
     This settings parameters value depend on your email provider. 
	 Watch this if you use hotmail. - http://stackoverflow.com/questions/13810580/rails-3-smtp-settings-for-hotmail-live-hosted-email
	 For other email providers, like gmail, yahoo you can google this - send mails from yahoo from rails and find the parmeters values    
9] Start the application
    Steps :
     -Open command prompt and go to Source folder inside extracted folder
     -Run rails server and minize the command prompt window
     -Enter http://localhost:3000 in your browser  and press enter from your keyboard
      Login screen should be displayed. Application is started
  
Thats it....
   




