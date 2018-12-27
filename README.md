# Homogenizer

A simple command-line utility allowing EVE players to quickly overwrite settings on alternate accounts and characters with those of a single source. Provided with the IDs of the account and character with the desired settings, Homogenizer will copy over all other users and characters in the same Profile. Homogenizer does not currently support multiple core users or characters - It is recommended to partition your Profiles based on these needs.

## Installation

Check out the releases, and copy `homogenizer.ps1` to your EVE settings folder. This folder is typically located at `C:\users\USER\AppData\local\CCP\EVE\c_program_files_(x86)_eve_sharedcache_tq_tranquility\PROFILE`.

## Usage

`.\homogenizer.ps1 -core_user USER -core_char CHAR`

`USER` and `CHAR` correspond to the ID for each. You can find your character IDs using ESI authentication - EVEMon has a great view for this. User IDs are trickier, and the fastest way I've found is:

1. Login on your core account
2. Make a change to your settings
3. Log out
4. Inspect settings files for the most recently changed