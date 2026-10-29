# F-nixos

<p align="center">
  <a href="https://nixos.org"><img src="https://img.shields.io/badge/Built_with-Nix-5277C3?logo=nixos&logoColor=white" alt="Built with Nix"></a>
  <a href="https://discord.gg/nVe5Zkaypg"><img src="https://img.shields.io/badge/Discord-Join-5865F2?logo=discord&logoColor=white" alt="Discord"></a>
  <a href="https://github.com/finix-community/finix"><img src="https://img.shields.io/badge/Community-finix-orange" alt="Finix Community"></a>
</p>

> A modular, opinion-free NixOS fork decoupling init, shell, and coreutils for true system agnosticism.

> **Note:** Fork of [finix](https://github.com/finix-community/finix) by the finix-community.

## Core Goal & Vision

**Goal to manage multiple architecture, mobile, embedded, routers, pc:**
Improve declarative systems by removing hardcoded assumptions. 
Once we decouple finix from nixos assumptions and opinionated frameworks we can even manage all kind of devices [mobile](https://github.com/mobile-nixos/mobile-nixos), embedded, routers, servers you name it.

### Key Pillars
- **Only what you need:** Decoupling bashisms, coreutils (`ubase`, `busybox`, `uutils`), and standard daemons.
- **Shell Agnosticism:** Running lightweight alternatives (`ash`, `dash`, `kmsh`) instead of GNU Bash.
- **Multi-Platform:** Scaling cleanly across PCs, embedded boards, routers, and mobile devices.
- **Alternative Engines:** Exploring non-Turing-complete config languages and module system optimizations.

## TODO
- [ ] Clean pkgs, build a polyrepo for Fpkgs
- [ ] Decouple coreutils and bashisms from build/activation scripts
- [ ] Integrate agnostic init systems (finit, minimal PID 1)
- [ ] Validate RISC-V and embedded hardware targets
- [ ] Expand mobile (Mobile NixOS) and router support
- [ ] Implement non-Turing-complete configuration language
- [ ] Maintain full NixOS package/module compatibility
