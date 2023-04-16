***Settings***
Library     AppiumLibrary  

***Variables***
${title_sunflower}    xpath=//android.widget.TextView[@text="Sunflower"]
${img_myGarden}       xpath=//android.widget.LinearLayout[@content-desc="My garden"]/android.widget.ImageView
${txt_myGarden}       xpath=//android.widget.TextView[@text="MY GARDEN"]
${img_plantList}      xpath=//android.widget.LinearLayout[@content-desc="Plant list"]/android.widget.ImageView
${txt_plantList}      xpath=//android.widget.TextView[@text="PLANT LIST"]
${txt_emptyGarden}    xpath=//android.widget.TextView[@text="Your garden is empty"]
${btn_addPlant}       id=com.google.samples.apps.sunflower:id/add_plant

***Keywords***
Validate My Garden
    Element Should Be Visible       ${title_sunflower} 
    Element Should Be Visible       ${img_myGarden}
    Element Should Be Visible       ${txt_myGarden}
    Element Should Be Visible       ${img_plantList}
    Element Should Be Visible       ${txt_plantList}
    Element Should Be Visible       ${txt_emptyGarden}  timeout=1  
    Element Should Be Visible       ${btn_addPlant}
    Click Element                   ${btn_addPlant}