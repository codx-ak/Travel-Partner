# Travel-Partner


Travel Partner is an innovative online platform designed to provide customers with a seamless travel booking experience.
It focus on offering a one-stop solution for all travel-related needs, including transport, hotels and holiday packages.
We have added all kind of trips that are possible in today’s environment.
The admin can add packages to the website from a certain travel agents and hotels by create a tour page.
The user can see the confirmation in their my booking page. 
It is an easiest platform for all travellers which can be easily booked and know the all details.
It aims to expand its services to include travel insurance and visa assistance in the future. 
The platform also plans to expand its operations to other countries and offer localized services.

Make Changes:


Settings.py
{

    Billing Process
    -----------------

        EMAIL_HOST_USER =  ' YOUR MAIL ID'
        EMAIL_HOST_PASSWORD = 'MAIL PASSWORD '



    Storage of the project
    ------------------------

        CLOUDINARY_STORAGE={ "YOUR API KEY "}

}

views.py

{

    email process
    ------------------------

        add_booking():
            from_email = 'Travel Partner <Your Mail ID>'


}

main.html

    script file :

        online Chatbot
        -------------------

            kommunicateSettings = "Your API Key";