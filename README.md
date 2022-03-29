# CFWheels - TodoMVC - HTMX

This is a reference implementation of the TodoMVC application in CFWheels and HTMX. 

## To install

To install this package you'll need to have a running CommandBox installation. It is also assumed that you have the CFWheels CLI installed into your CommandBox. 

To install the CFWheels CLI, launch CommandBox and issue an install command:

```
box 
install cfwheels-cli
```

Once installed, you can install this package with the following:

```
box
wheels generate app name=todo template=cfwheels-todomvc-htmx --setupH2
server start
install
```
