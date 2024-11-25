(manage-access-policies-doc)=

# Managing access policies

Access policies are rules that dictate which users or groups can access a securable object. For example, you could have separate access policies per team to restrict asset access, such as "Access Policy for Engineers", "Access Policy for Business Analysts", and so on.

An access policy can be associated with any number of securable objects. However, a securable object can only have one active access policy. All Hyperview systems ship with a Default access policy that applies to all securable objects, unless another access policy is applied. You can use the Access Policies grid (*Settings → Access Policies*) to look up existing access policies.

```{image} /product/settings/media/access_policies_1.png
:class: border-black
```

:::{tip}
Create user groups before adding access policies. Refer to "Managing groups" in {ref}`User-administration-doc` for details. You can associate an asset with an existing access policy from the Access Control page (browse to asset → *Access Control*).
:::

## Adding an access policy

1. Go to *Settings → Access Policies → Add.*
2. Provide values for Name, Description, Allowed Users, and Allowed Groups. Note that you can search and multi-select Allowed Users and Allowed Groups.
3. Click *Save*.

A success message will appear, and the access policy will be listed in the grid. Repeat the steps to add additional access policies as needed.

## Updating an access policy

1. Go to *Settings → Access Policies → Edit.*
2. Update values as required and save your changes.

A success message will appear, and the current page will reload to reflect your changes.

```{image} /product/settings/media/access_policies_2.png
:class: border-black
```

## Deleting an access policy

You cannot delete an access policy that has associated assets. After you have updated the assets to select a different access policy (browse to asset → *Access Control*):

1. Go to *Settings → Access Policies*.
2. Click *Delete → Delete* for the access policy that you want to delete.

A success message will appear, and the current page will reload to reflect the change.
