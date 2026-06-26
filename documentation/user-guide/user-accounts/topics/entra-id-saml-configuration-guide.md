(entra-id-saml-configuration-doc)=

# Microsoft Entra ID SAML Configuration Guide

This guide outlines the step-by-step process to configure Microsoft Entra ID as an Identity Provider (IdP) using SAML 2.0 with Hyperview.

You must also be logged in as an Administrator in Hyperview to finish the Hyperview configuration side of the setup.

## Prerequisites

- **Permissions:** You must have either the **Cloud Application Administrator** or **Application Administrator** role in your Entra tenant.

## Step 1: Create the Enterprise Application

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com).
2. Navigate to **Entra ID** > **Enterprise apps** > **All applications**.
3. Select **New application** at the top of the page.
4. Click **Create your own application**.
5. Name your application "Hyperview".
6. Choose **Integrate any other application you don't find in the gallery (Non-gallery)**.
7. Click **Create** and wait for the application to deploy.
8. Log in to Hyperview and navigate to **SAML SSO Configuration** (Your Name in the top right → **Account Management** → **SAML SSO Configuration**).
9. Change **Data Export Method** to **Metadata file and Certificate**.
10. Download Metadata and Download Certificate.

## Step 2: Configure SAML Single Sign-On

1. In the application's left-hand navigation menu, click **Single sign-on**.
2. Select **SAML** as the single sign-on method.
3. Click **Upload metadata file** and select the metadata file downloaded earlier.
4. Click **Save** at the top of the panel.
5. Scroll down to section 3, **SAML Certificates**, and click the edit button next to **Verification certificates**.
6. Click **Require verification certificates**.
7. Click **Upload certificate** and upload the certificate file downloaded earlier.
8. Click **Save**.
9. Click **Token Encryption** in the left pane under the security group.
10. Click **Import certificate** and upload the certificate file downloaded earlier.
11. Click the three dots **"..."** in the certificate row and select **Activate token encryption certificate**.

## Step 3: Link Entra ID to Hyperview

1. Navigate back to **Single sign-on** in the left pane.
2. Scroll down to the **SAML Certificates** section on the SAML setup page.
3. Copy the **App Federation Metadata Url**.
4. Return to your Hyperview application instance as an administrator and navigate to **SAML SSO Configuration**.
5. Set **Data Import Method** to **Metadata URL** and paste the URL in the **Metadata URL** field.
6. Click **Submit**.
7. Optionally enter a **Provider Name** to show that on the login page. Otherwise, the generic **Sign in with SSO** label is used.
8. Click **Save**.

## Step 4: Optionally, Assign Users and Test

Optional user and group assignments may be required to restrict application access. Please note that this does not grant access to Hyperview unless there is an existing user or a User Provisioning policy for the domain.

1. Return to Entra ID, navigate to **Properties**, enable **Assignment required**, and click **Save**.
2. Navigate to **Users and groups**.
3. Click **Add user/group**.
4. Add users and groups as required.
5. Test the integration by using a different browser or asking a colleague to test to ensure that SSO is configured properly.

:::{important}
Please do not enforce SAML Authentication for the domain unless you have tested and verified that everything works correctly. Doing so without testing and verification could result in you being locked out of your account.
:::

For more information about configuring SAML with Entra ID, please refer to [Microsoft Documentation](https://learn.microsoft.com/en-us/entra/architecture/auth-saml).

