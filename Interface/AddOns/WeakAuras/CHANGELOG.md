# [2.13.0](https://github.com/WeakAuras/WeakAuras2/tree/2.13.0) (2019-06-25)

[Full Changelog](https://github.com/WeakAuras/WeakAuras2/compare/2.12.4.1...2.13.0)

## Highlights

 Tons of fixes and option groups for author options 

## Commits

InfusOnWoW (17):

- Fix dynamic group animate expand/collapse
- With Group selection, prevent deleting the last trigger
- Fix Conditions robustness with invalid checks
- Fix nil error for Spell Known Trigger
- Make PRD attachment 8.2 compatible
- Fix circular animate and expand
- On converting a aura inform the parent group
- Fix issue with aura_env being nil if child envs need to be created
- MoverResizer: ClearAllPoints before SetAllPoints
- Fix attached to PRD auras
- Add a description to Player Effective Level
- Make Auras attached to nameplates work inside Dynamic groups
- Fix autoHide if a state is overwritten with the same expirationTime
- Fix Progress Bars size calculation in SetValue
- Introduce player effective level load option
- Fix Models that should show on login
- Fix inserting > 32bit values into the name field

Stanzilla (7):

- Update TOC for Patch 8.2.0
- style profiling window a bit
- code style tweaks
- add a close button to the profiling popup
- Use a simple Show/Hide for the ItemRefTooltip (#1395)
- Fix a typo
- fix a typo

emptyrivers (5):

- expose dynamic group helper functions (#1407)
- delete the currently selected entry
- use the dereferenced index in references
- clear parent env when a child is edited or deleted
- Add custom option groups

mrbuds (6):

- fix validate property for event_prototypes
- Templates: add retribution buff
- add debuffClassIcon state to BuffTrigger2
- add _ABSORBED subevent suffix
- fix GTFO trigger events
- Change default glow pixel thickness to 1

