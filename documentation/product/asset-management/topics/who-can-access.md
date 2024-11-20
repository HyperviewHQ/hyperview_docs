(who-can-access-doc)=

# Who can access an asset?

An asset's access policy dictates *who* can access it. However, your user role determines *how* you can interact with it.

## How role affects asset access

By default any asset in Hyperview is accessible by any user, as per that {ref}`user's role<User-accounts-doc>`:

- If you are a Reporting or Read Only user, you will have only read-only access.
- If you are a Power User, you will be able to create, update or move assets.
- If you are a Data Center Manager, you will have the same privileges as Power User — and also be able to delete and bulk delete assets.
- If you are an Administrator, you will have unrestricted access to all assets.

Note that all user roles except Administrator are affected by asset access policies. This also applies to API users.

## How access policies determine asset access

As mentioned above, by default any asset in Hyperview is accessible by any user. This is because the default access policy for assets is All Users.

An asset's access policy is essentially a whitelist of users and user groups that can view and interact with the asset, as per their user role. In other words, unless you are an Administrator, if your user account (or any of the user groups that you belong to) is not allowed by an asset's *current* access policy, then you cannot access it: the asset will not be surfaced anywhere in Hyperview for you, including search results.

### Configuring Access Control

Only Administrators can set or {ref}`manage access policies<Manage-access-policies-doc>`. To set an access policy for an asset:

```{image} /product/asset-management/media/access_control.png
:class: border-black
```

1. Open the asset's Dashboard → *Access Control*.
2. Select the intended Policy → *Save* → *Save* or *Save and Apply to Child Assets*, as appropriate.
3. The "Save Changes?" modal will appear. Click Save to confirm the policy change.

A success message will appear, and the page will refresh to show an updated list of allowed users and groups.
