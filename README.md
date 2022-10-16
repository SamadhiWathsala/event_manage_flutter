# **Event Manage App**

Simple flutter application for listing and filtering out events.


## **Setup guide**

1. Install Flutter  
   Follow the official [guide](https://flutter.dev/docs/get-started/install) from the flutter team.

2. Run `flutter doctor`

   ```
   flutter doctor
   ```  
   If all are ok, jump-in to the next step.

3. Go to the `event_manage` folder

   ```
   cd event_manage/
   ```

4. Install all the dependent flutter packages.  
   Run `flutter pub get` in the terminal, or click **Packages get** in IntelliJ or Android Studio.

   ```
   flutter pub get
   ```

5. Run the application.

   ```
   flutter run
   ```

### *Set GraphQL endpoint*
For development purposes, I just connected to the local dev server through *[ngrok](https://ngrok.com/)* tunnel. In that case, the endpoint URL is subjective to change if you are with the ngrok free tier and restart the ngrok tunnel.
If you do so please change the GraphQL endpoint URL in the `main.dart` file.  
*Please refer to the backend repository for further informations about ngrok setup.*
