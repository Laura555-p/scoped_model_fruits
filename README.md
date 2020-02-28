# scoped_model_fruits

A flutter app sample, **Scoped Model Fruits**, shows a state management approach using **Scoped Model** package. The app has two separate screens: a list of fruits and a cart. The list of fruits represented by the **MyList** widget and the cart represented by the **MyCart** widget. The list of fruits screen includes app bar (**MyAppBar**) and acrolling view of many fruit items (**MyFruitItem**). The cart screen includes list of added fruits (**CartList**) and total price of added fruits (**CartTotal**).

This is **a widget tree** of the **Scoped Model Fruits** app:

![](https://github.com/Laura555-p/scoped_model_fruits/blob/master/assets/images/widget_tree1.png)

# A Flutter app structure:
# lib/main.dart

Here the **ScopedModel model: SuperModel.instance** is used in order to provide more than one class (in this case, **ListModel** and **CartModel**) at once to widgets futher down the tree.

The **SuperModel** is a mixin that able to access all the public properties of **ListModel** and **CartModel**. 

# lib/model/*
This directory contains the model classes: **ListModel**, **CartModel** and **SuperModel**, and an object **Fruit**. Two classes (In this case, **ListModel** and **CartModel**) are provided in the ***main.dart*** via **SuperModel** mixin. These classes represents the app state.

# lib/screens/*
This directory contains widgets (**MyList** and **MyCart**) used to construct the two screens of the app with other widgets: a list of fruits and a cart.
