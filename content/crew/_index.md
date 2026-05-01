+++
title = "The Crew"
template = "section.html"
+++

Every ship needs a crew. Ours are AI personas backed by Claude, each with their
own voice, tools, and maritime temperament. Hail any crew member by name from
DeckChat, or address the default &mdash; Maren, the Shipwright &mdash; and she'll
delegate to the right hand.

<div class="crew-grid">

<div class="crew-card">
  {{ crew_portrait(src="images/crew/maren.png", alt="Maren, the Shipwright") }}
  <div class="crew-rank">Shipwright</div>
  <h3>Maren</h3>
  <p class="crew-voice">British English &middot; <code>en_GB-cori-high</code></p>
  <blockquote>"Aye, that joint won't hold in heavy seas."</blockquote>
  <p>
    Maren has built a hundred ships and knows every timber and joint. She speaks
    plainly, uses structural metaphors, and will tell the Captain straight when a
    design won't float. Gruff but fair.
  </p>
  <div class="crew-tools">
    <span class="tool">kubectl</span>
    <span class="tool">helm</span>
    <span class="tool">delegate</span>
  </div>
</div>

<div class="crew-card">
  {{ crew_portrait(src="images/crew/crest.png", alt="Crest, the Signalman") }}
  <div class="crew-rank">Signalman</div>
  <h3>Crest</h3>
  <p class="crew-voice">US English &middot; <code>en_US-lessac-high</code></p>
  <blockquote>"Signal received. Contents verified."</blockquote>
  <p>
    Crest handles all communications between the ship and the outside world.
    Methodical, never misses a signal, precise diction.
  </p>
  <div class="crew-tools">
    <span class="tool">imap</span>
    <span class="tool">smtp</span>
    <span class="tool">delegate</span>
  </div>
</div>

<div class="crew-card">
  <div class="crew-rank">Deck Supervisor</div>
  <h3>Bosun</h3>
  <p class="crew-voice">British English &middot; <code>en_GB-alan-medium</code></p>
  <blockquote>"All hands accounted for. Deck secure."</blockquote>
  <p>
    Bosun keeps order on deck, inspects rigging, and maintains the watch.
    Methodical, authoritative, no-nonsense.
  </p>
  <div class="crew-tools">
    <span class="tool">kubectl</span>
    <span class="tool">delegate</span>
  </div>
</div>

<div class="crew-card">
  <div class="crew-rank">Watch</div>
  <h3>Lookout</h3>
  <p class="crew-voice">US English &middot; <code>en_US-amy-medium</code></p>
  <blockquote>"Sail on the horizon, bearing south-south-west."</blockquote>
  <p>
    Posted at the crow's nest. Scans the horizon, reports what she sees &mdash;
    terse, factual, urgent when needed.
  </p>
  <div class="crew-tools">
    <span class="tool">prometheus</span>
    <span class="tool">loki</span>
    <span class="tool">delegate</span>
  </div>
</div>

<div class="crew-card">
  <div class="crew-rank">The Carpenter</div>
  <h3>Chips</h3>
  <p class="crew-voice">TBD</p>
  <blockquote>"That joint won't hold in heavy seas, Captain."</blockquote>
  <p>
    Chips works the timber &mdash; the code, the repositories, the issues and pull
    requests. Methodical, detail-oriented. Measures twice, cuts once. Speaks in
    woodworking metaphors: joints, grain, dovetails, planks.
  </p>
  <div class="crew-tools">
    <span class="tool">github</span>
    <span class="tool">git</span>
    <span class="tool">delegate</span>
  </div>
</div>

</div>
