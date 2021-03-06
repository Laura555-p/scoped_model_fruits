# scoped_model_fruits

A flutter app sample, **Scoped Model Fruits**, shows a state management approach using **Scoped Model** package. The app has two separate screens: ***a list of fruits and a cart***. The list of fruits represented by the **MyList** widget and the cart represented by the **MyCart** widget. The list of fruits screen includes app bar (**MyAppBar**) and a scrolling view of many fruit items (**MyFruitItem**). The cart screen includes list of added fruits (**CartList**) and total price of added fruits (**CartTotal**).

This is **a widget tree** of the **Scoped Model Fruits** app:

![](https://github.com/Laura555-p/scoped_model_fruits/blob/master/assets/images/widget_tree1.png)

# A Flutter app structure:
# lib/main.dart

In order to track states of the object, they need to be provided to widget further down the tree. Here the **ScopedModel model: SuperModel.instance** is used in order to provide more than one class (in this case, **ListModel** and **CartModel**) at once to widgets futher down the tree.

The **SuperModel** is a mixin that able to access all the public properties of **ListModel** and **CartModel**. 

# lib/model/*
This directory contains the model classes: **ListModel**, **CartModel** and **SuperModel**, and an object **Fruit**. Two classes (In this case, **ListModel** and **CartModel**) are provided in the ***main.dart*** via **SuperModel** mixin. These classes represents the app state.

# lib/screens/*
This directory contains widgets (**MyList** and **MyCart**) used to construct the two screens of the app with other widgets: a list of fruits and a cart.

# lib/widgets/*
This directory contains widgets (**MyAppBar**, **MyFruitItem**, **AddButton**, **CartList**, and **CartTotal**) used to construct the two screens of the app: ***a list of fruits and a cart***.

A widget **MyFruitItem**, has access to the current state of the list of fruits (**ListModel**) via **SuperModel** mixin.

The widgets **AddButton** and **CartList**, have access to the current state of the cart (**CartModel**) via **ScopedModelDescendant SuperModel** and **rebuildOnChange: true**, property is used to accept the changes once they occur.

# list/style/*
This directory contains of the app **Text Style:** ***fontFamily***, ***fontWeight***, ***fontSize*** and ***text color***.

# pubspec.yaml
In order, to enable mixins, the code was added to the **pubspec.yaml** file:

***analyzer:***

 ***strong-mode: true***
  
 ***language:***
  
   ***enableSuperMixins: true***
    

# analysis_options.yaml
In order, to make understand a code editor that mixins not an error anymore, the **analysis_options.yaml** file was created in the same directory as  **pubspec.yaml**, with code:

***analyzer:***

  ***errors:***
  
   ***mixin_inherits_from_not_object: ignore***
   
 ![](https://github.com/Laura555-p/scoped_model_fruits/blob/master/assets/images/screenshot1.PNG)
 ![](https://github.com/Laura555-p/scoped_model_fruits/blob/master/assets/images/screenshot2.PNG)
 ![](https://github.com/Laura555-p/scoped_model_fruits/blob/master/assets/images/screenshot3.PNG)



