# disaStr
A Decentralized Information Sharing Architecture using nostr for gossip

Nostr Events:
EV0 : i have a part of this repository 
r : repo id (hash)

Nostr Requests:
REQ0 : Who has this repo? -> get EV0 where r=???




P2P events:
The sharer registers a repository of data, with optional subdirectories and versions support

The repository can be public or private

When private, the sharer creates keys that allow read and/or write access to parts of the repository.

Keys are sent by pair.
- K1: One key allows to show that you have access authorization. It is used to decrypt the data paths in the data requests
- K2: One allows to decrypt the data received by the repo
