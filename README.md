# CFWheels - TodoMVC - HTMX

This is a reference implementation of the TodoMVC application in CFWheels and HTMX. Here is a [blog post](https://cfwheels.org/blog/todomvc-implementation-with-cfwheels-and-htmx/) talking about this implementation.


## To install

To install this package you'll need to have a running CommandBox installation. It is also assumed that you have the CFWheels CLI installed into your CommandBox. 

To install the CFWheels CLI, launch CommandBox and issue an install command:

```
box 
install cfwheels-cli
reload
```

Once installed, you can install this package with the following:

```
box
wheels g app name=todo datasourceName=todo template=cfwheels-todomvc-htmx --setupH2
package install
server start
```
