.. include:: /user-accounts/media.rst
.. _My-account-doc:

**************************
Managing your user profile
**************************

All users have access to the following profile management features:

* Updating profile information
* Downloading personal data

Provided an Administrator has not enforced external login for your account, you can also:

* Update your password
* Manage external logins
* Set up two-factor authentication (2FA)

============================
Updating profile information
============================
You can update your name and phone number. Your username or email address cannot be modified once your account has been created. To update your role or group associations, please contact your local Administrator.

1. Go to *My Account → Profile*.
2. Update values as needed.
3. Click *Save*.

A success message will appear.

======================
Updating your password
======================

.. note:: Updating passwords is not allowed for user accounts that have Administrator-enforced external login. In such cases, you will not have access to the *My Account → Password* link, or be able to use your Hyperview username/password to log into your account. You can only log in using the *Sign in with Microsoft* button.

Password values must be 6-100 characters long and have at least one lowercase letter, one uppercase letter, a digit, and a special character.

1. *My Account → Password*.
2. Enter current and new password values.
3. Click *Save*.

A message will appear confirming your changes have been saved.

|pwd|

.. tip:: You can also reset your password by clicking on the *Forgot your password?* link from the Hyperview login screen.

========================
Managing external logins
========================

.. note:: Managing external logins is not allowed for user accounts that have Administrator-enforced external login. In such cases, you will not have access to the *My Account → External Logins* link.

An "external login" implies using trusted third-party credentials to log into your Hyperview account. Currently only Microsoft Authentication is supported, which means you can associate your Hyperview account with a Microsoft account (such as your Microsoft 365/Azure Active Directory login for your organization).

The required API permission is ``User.Read``. This allows for authentication and for reading basic user information, such as email address. In some organizations the ability to enable this feature is limited to Azure Active Directory administrators. Once an administrator has enabled this feature other users will be able to use it.

Adding an external login
------------------------
It is recommended that the username portion of your external login account (for example, "adam.smith" in adam.smith@yourorg.com) be identical to that of your Hyperview user account. An external login can only be associated with a single user. To add an external login:

1. Go to *My Account → External Logins*.
2. Click *Microsoft*. You will be redirected to your Microsoft login page.
3. Enter your Microsoft email and click *Next*.
4. Enter your password and click *Sign In*. (This screen may look different compared to the previous one, showing your organization's image assets instead of Microsoft's.)
5. If you have two-factor authentication set up:

   a. In the following screen, select the checkbox if you want to remain authenticated for your external login for 14 days. You will receive an approve request in your Authenticator app on your mobile phone.
   b. Approve the request on your mobile phone.

6. The Hyperview page will refresh, prompting you to stay signed in. Select the check box if you don't want to see the same prompt during subsequent logins, and continue.

The page will reload, showing a confirmation message and the newly created external login.

|externallogin|

Testing an external login
-------------------------

* To test your external login, log out then log into Hyperview by clicking the *Sign in with Microsoft* button.

Removing an external login
--------------------------

* To remove your existing external login, click the *Remove* button on the External Logins page.

A confirmation message will appear and the external login will no longer be listed.

====================================
Setting up two-factor authentication
====================================

.. note:: Setting up two-factor authentication is not allowed for user accounts that have Administrator-enforced external login. In such cases, you will not have access to the *My Account → Two-Factor Authentication* link.

"Two-factor authentication" (2FA) implies that you will be using two separate devices (such as a laptop and a mobile phone) to verify your identity in order to log into Hyperview. This is typically done as an added security measure.

1. Go to *My Account → Two-Factor Authentication*.
2. Click *Add authenticator app*.
3. Follow the on-screen instructions.

   .. tip:: If you are using Microsoft Authenticator, add Hyperview as an "Other" account.

4. Enter your verification code and click *Verify*. The page will reload, showing a confirmation message and your recovery codes.

   .. note:: Remember to copy and save your recovery codes to a safe, trusted destination. This **should not** be on the mobile phone you will be using for two-factor authentication. Otherwise, if you lose your device you will permanently lose access to your Hyperview account.

|2FA|

Going forward, you will need to enter your Hyperview credentials (or use your external login to sign in), as well as approve the access request on your phone. You can use corresponding buttons on the Two-Factor Authentication page to:

* Forget your current browser
* Disable two-factor authentication
* Reset your recovery codes
* Setup (configure) your authenticator app
* Reset your authenticator app

In each case, simply click on the button and follow the on-screen instructions.

==============================
Downloading your personal data
==============================
1. Go to *My Account → Personal Data*.
2. Click *Download*.

Your personal data will be downloaded as a JSON file.

.. note:: For security reasons, please do not share your personal data with anyone.
