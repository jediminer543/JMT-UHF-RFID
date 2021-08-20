# The UHF-RFID project

This project aims to do build a working UHF RFID reader (ISO 18000-6C thing) using a pair of CC1101s.

But why the hell would you want to do this? Simple. The silicon to do UHF RFID tag reading goes for around $30 per chip in low volumes, dropping to $20 in high volumes. The entire main devboard, fully assembled, cost a grand total of $10 per board.

Given the anciliary components (MCU, Antennas, PowerRegs, PowerAmps, etc.) are likely to cost that again, BOM Cost for a reader built with this scheme is likely $20-30 total, which even at a 2.5x profit maring would still be competetive with the cheapest readers avalible on sites like Aliexpress.

## But why do you care?

UHF RFID allows for the reading of passive tags at up to 15m ranges for some tags. 15m would happen to helpfully cover most houses.

Further depending on which research you look at, these tags have localisability to below 10cm.

Combining these two features, if a many reader system were viable and cheap, it could make losing things a thing of the past. Or just make sure that places stay tidy

## Project state

I have the boards fabbed and assembled; I need to get some more RF stuff fabbed but it's just striplines so should be cheap to make.

Successful communication to the tags was achieved, but return linking failed due to the requirement for a circulator esque device, which has been designed acording to the specifications of [this paper](https://www.researchgate.net/publication/224684549_A_Passive_Circulator_for_RFID_Application_with_High_Isolation_using_a_Directional_Coupler) and simulated with QUCS. These still need to be fabricated.

The code for the project is very much unoptimised; spending far too long doing bitsetting, but this was done intentionally for ease of tweaking; future software improvements will occur if/when the project progresses.

## Why is this on github?

Two reasons. Firstly to share with the world so someone else can hopefully learn or develop something from it

Secondly, because I'm applying for some jobs and saying "here's a thing I made and the source for it" seems fun.
