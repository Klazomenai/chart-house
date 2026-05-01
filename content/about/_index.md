+++
title = "About"
template = "section.html"

[extra]
banner = "/images/banner/about.png"
hide_title = true
+++

## Vision

Aye, ship's company &mdash; we build for the laying of a stronger keel:
body, mind, and the soul-timbers between. Whatever your trade, your crew
sails with you now &mdash; Maren at the joint, Crest at the wire. Hail the
bridge. Stand to the rail. Fair winds, fair lungs.

Half the watch above decks, lungs full and creativity running. The other
half below with the slate &mdash; but the salt's still on the tongue.

**Developer Preview**: alpha software, keel freshly laid, planking still
smelling of pitch. Built in the open.

## Architecture

<div class="arch-table">

| Layer | Component | What it does |
|-------|-----------|--------------|
| Voice | **DeckChat** (Android) | On-device STT/TTS via Sherpa-ONNX. Bluetooth headset capture. Push-to-talk. |
| Transport | **Matrix** (E2EE) | End-to-end encrypted messaging via matrix-rust-sdk (DeckChat) and mautrix-go (Bridge). |
| Orchestrator | **Bridge** (Go) | Routes messages to AI crew members. Manages session context per room. |
| AI | **Claude** (Anthropic) | Powers crew personas. Each crew member has tools, a voice, and a role. |
| Infra | **AKeyRA** | The vessel herself. Her charts are kept close &mdash; for now. |

</div>

## Privacy

**What's said aboard stays aboard.**

- Voice is transcribed and spoken entirely on-device
- Matrix messages are end-to-end encrypted
- Session tokens are encrypted with Android Keystore
- No telemetry. No analytics. No Google Play Services. No exceptions.

## Licenses

Both Bridge and DeckChat are licensed under **AGPL-3.0-or-later**.

| Project | Licence | Source |
|---------|---------|--------|
| Bridge | AGPL-3.0-or-later | [github.com/Klazomenai/bridge](https://github.com/Klazomenai/bridge) |
| DeckChat | AGPL-3.0-or-later | [github.com/Klazomenai/deck-chat](https://github.com/Klazomenai/deck-chat) |

## Contributing

We're in early alpha. The best way to get involved right now is to read the
source, open issues, and watch the voyage unfold. Contribution guidelines
will come with the M2 milestones.
