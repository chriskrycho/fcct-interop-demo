import OldSchool from './old-school';

<template>
  <p>
    Here is a first-class component template. It tries to render a non-colocated
    component template immediately after this paragraph.
  </p>
  <OldSchool />
  <p>
    Now we’re past the <code>&lt;OldSchool /&gt;</code> invocation, and you can
    see that it just silently failed: it <em>rendered</em>, but it rendered
    <em>nothing</em>. 😢
  </p>
</template>;
