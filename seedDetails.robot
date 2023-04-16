***Settings***
Library     AppiumLibrary

***Variables***
${btn_back}                   xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton
${btn_share}                  accessibility_id=Share
${txt_apple}                  id=com.google.samples.apps.sunflower:id/plant_detail_name
${btn_addSeed}                id=com.google.samples.apps.sunflower:id/fab
${txt_wateringNeeds}          id=com.google.samples.apps.sunflower:id/plant_watering_header
${txt_days}                   id=com.google.samples.apps.sunflower:id/plant_watering
${btn_gallery}                accessibility_id=Navigate to gallery screen
${txt_plantDescription}       id=com.google.samples.apps.sunflower:id/plant_description
${plantAdded}                 id=com.google.samples.apps.sunflower:id/snackbar_text
${plantedApple}               id=com.google.samples.apps.sunflower:id/plant_name

${txt_myGarden}       xpath=//android.widget.TextView[@text="MY GARDEN"]

***Keywords***
Validate Seed Details Screen
  Element Should Be Visible     ${btn_back}
  Element Should Be Visible     ${btn_share}
  Element Should Be Visible     ${txt_apple}
  Element Should Be Visible     ${btn_addSeed}
  Element Should Be Visible     ${txt_wateringNeeds}
  Element Should Be Visible     ${txt_days}
  Element Should Be Visible     ${btn_gallery}
  Element Should Be Visible     ${txt_plantDescription}

Acquire Seed
  Click Element                     ${btn_addSeed}
  Wait Until Element Is Visible     ${plantAdded}
  Click Element                     ${btn_back}
  Click Element                     ${txt_myGarden}
  Element Text Should Be            ${plantedApple}      Apple 
