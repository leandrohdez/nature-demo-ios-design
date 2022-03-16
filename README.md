# Transitions using @Namespace

Creating a custom transition between views using the **matchedGeometryEffect** modifier, namespace and id.

> **Disclaimer:** This implementation is just for educational purposes and for my own programming practice.

![Nature demo](nature-demo.gif)

## Namespace
Just like a State, you need a Namespace where your animation exists. We will also a boolean state to toggle between two views.

## Transition Between Two Views
You need to set the **matchedGeometryEffect** modifier on two different views using the same id and namespace.

Very well explained [here](https://designcode.io/swiftui-handbook-matched-geometry-effect) by the DesignCode team
