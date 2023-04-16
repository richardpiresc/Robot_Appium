***Settings***
Library     AppiumLibrary

***Variables***
${screenPlantList}                  id=com.google.samples.apps.sunflower:id/plant_list  
${positionOne}                      xpath=//androidx.cardview.widget.CardView[1]/android.view.ViewGroup
${apple_seed}                       xpath=//android.widget.TextView[@text="Apple"]
${avocado_seed}                     xpath=//android.widget.TextView[@text="Avocado"]
${beet_seed}                        xpath=//android.widget.TextView[@text="Beet"]
${bougainvillea_seed}               xpath=//android.widget.TextView[@text="Bougainvillea"]
${cilantro_seed}                    xpath=//android.widget.TextView[@text="Cilantro"]
${eggplant_seed}                    xpath=//android.widget.TextView[@text="Eggplant"]
${grape_seed}                       xpath=//android.widget.TextView[@text="Grape"]
${hibiscus_seed}                    xpath=//android.widget.TextView[@text="Hibiscus"]
${mango_seed}                       xpath=//android.widget.TextView[@text="Mango"]
${orange_seed}                      xpath=//android.widget.TextView[@text="Orange"]
${pear_seed}                        xpath=//android.widget.TextView[@text="Pear"]
${pinkWiteLadysSliper_seed}         xpath=//android.widget.TextView[@text="Pink & White Lady's Slipper"]
${rockyMountainColumbine_seed}      xpath=//android.widget.TextView[@text="Rocky Mountain Columbine"]
${sunflower_seed}                   xpath=//android.widget.TextView[@text="Sunflower"]
${tomato_seed}                      xpath=//android.widget.TextView[@text="Tomato"]
${watermelon_seed}                  xpath=//android.widget.TextView[@text="Watermelon"]
${yulanMagnolia_seed}               xpath=//android.widget.TextView[@text="Yulan Magnolia"]

***Keywords***
Validate Plant List
  Wait Until Element Is Visible       ${apple_seed}                 
  Wait Until Element Is Visible       ${avocado_seed}               
  Wait Until Element Is Visible       ${beet_seed}                  
  Wait Until Element Is Visible       ${bougainvillea_seed}         
  Wait Until Element Is Visible       ${cilantro_seed}              
  Wait Until Element Is Visible       ${eggplant_seed}              
  Wait Until Element Is Visible       ${grape_seed}                 
  Wait Until Element Is Visible       ${hibiscus_seed}

Scroll Down
  Wait Until Page Contains Element       ${screenPlantList}    
  ${element_size}=    Get Element Size     ${screenPlantList}     
  ${element_location}=    Get Element Location     ${screenPlantList}    
  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.9)
  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
  Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500

Validate Plant List ScrollOne
  Wait Until Element Is Visible       ${mango_seed}                 
  Wait Until Element Is Visible       ${orange_seed}                
  Wait Until Element Is Visible       ${pear_seed}                  
  Wait Until Element Is Visible       ${pinkWiteLadysSliper_seed}   
  Wait Until Element Is Visible       ${rockyMountainColumbine_seed}
  Wait Until Element Is Visible       ${sunflower_seed}  

Validate Plant List ScrollTwo          
  Wait Until Element Is Visible       ${tomato_seed}                
  Wait Until Element Is Visible       ${watermelon_seed}            
  Wait Until Element Is Visible       ${yulanMagnolia_seed} 

Scroll Up
  Wait Until Page Contains Element       ${screenPlantList}
  ${element_size}=    Get Element Size     ${screenPlantList}
  ${element_location}=    Get Element Location     ${screenPlantList}
  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.9)
  Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500

Add Plant
  Wait Until Element Is Visible       ${apple_seed}
  Click Element                       ${apple_seed}