{{year}}:{{week}}

{{#each entry in entries}}
<div class="entry">
  {{view Ember.Select content=entryAmounts value=entry.amount }}
</div>
{{/each}}
