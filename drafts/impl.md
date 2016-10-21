# Implementation

This chapter describes the changes and enhancements that were made to Elektra in order to answer the research questions.

First we talk about Elektra's plugin API in general and how we used it to introduce cryptographic operations to Elektra.
Then the concept of the key management is presented.
At last some interesting implementation details about the crypto libraries used are given.

## Elektra Plugins

Elektra abstracts configuration parameters in a hierarchical key-value database.
A KeySet holds zero or more Keys.
The (Elektra) Key holds the configuration parameter either as a string or as a binary value.

The core of Elektra is kept small, meaning that it provides mainly the database abstraction as well as a plugin system.
All the configuration access operations (mainly file reads and writes but there are more complicated constructs, like intercepting `open ()` calls in order to inject a Mozilla configuration, as well) are performed by plugins.
The plugins should fulfill exactly one purpose, keeping to the UNIX philosophy.
To give an example: one plugin may write to `/etc/hosts` and another one may encode binary values using the Base64 encoding scheme.
Multiple plugins may be combined into a backend.

Backends can be mounted like UNIX-like file systems.
Every backend has its own configuration itself, which specifies the runtime behavior of the plugins within the backend.

A plugin can export different methods in order to fulfill their purpose.
They are enumerated below:

### checkconf

At this stage a plugin may validate the backend configuration as well as the plugin configuration.
The plugin may modify the configuration or report that the configuration is incomplete or wrong in some way.

### open

The `open` stage is called to initialize the plugin.

### close

The `close` stage is called to properly shutdown the plugin and release all resources it may hold.

### set

The `set` stage is called when changes made to the key-value database should be persisted.

### get

The `get` stage is called when the content of the key-value database is requested by an application.

## Crypto Plugin



### Key Management

### Details About The Crypto Libraries
