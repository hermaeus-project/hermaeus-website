import mermaid from "https://unpkg.com/mermaid@11.4.0/dist/mermaid.esm.min.mjs";

document$.subscribe(function () {
  mermaid.registerIconPacks([
    {
      name: "logos",
      loader: () =>
        fetch("https://unpkg.com/@iconify-json/logos@1/icons.json").then(
          (res) => res.json()
        ),
    },
  ]);
  mermaid.run({ querySelector: ".diagram" });
});
