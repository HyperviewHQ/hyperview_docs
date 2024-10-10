(user-accounts-doc)=

# User Accounts

You need a user account or API client account to use Hyperview. Every account has a role that dictates which assets can be accessed and which application features you can access.

Available roles are:

:::{note}
All users (including those with read-only roles) can manage their account profile, saved searches, and asset watchlist.
:::

```{eval-rst}
.. list-table::
   :header-rows: 1
   :align: left

   * - Role
     - Privileges
   * - Administrator
     - Has unrestricted, system-wide access in Hyperview and is not impacted by asset access policies
   * - Data Center Manager
     - Has complete asset management privileges but cannot run or configure discoveries, administer accounts, view the application log, or make system-wide changes
   * - Power User
     - Has Data Center Manager-level privileges but cannot delete or bulk-delete records
   * - Reporting
     - Has read-only access to Hyperview for reporting purposes
   * - Read Only
     - Has read-only access to Hyperview
```

You can perform tasks related to user accounts from the Account Management portal (*Account → Account Management*).

- For profile management, see {ref}`Managing your user profile<My-account-doc>`.
- For user administration, see {ref}`Administering user accounts<User-administration-doc>`.

To exit the Account Management portal and return to the Hyperview screen, simply click the Hyperview logo or press the Back button in your browser.

```{toctree}
:maxdepth: 2

topics/managing-your-user-profile
topics/administering-user-accounts
topics/account-security
```
