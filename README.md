# ActsAsTreeDiagram
ActsAsTreeDiagram extends ActsAsTree to add simple function for draw tree diagram with html.

## Usage

1. Append the following line to your `app/assets/application.scss`:
```scss
@import 'acts_as_tree_diagram'
```
2. And append the line to your model file like below:
```ruby
class Animal < ApplicationRecord
	extend ActsAsTreeDiagram::ViewDiagram
	acts_as_tree order: 'name'
end
```
3. Then append the line to your view file like below:
```html
<div id="act_as_tree_diagram">
  <ul class="tree">
    <code>
      ルート
    </code>
    <ul>
      <li>
        <code>
          <%= link_to Animal.find(1).name, animals_path(Animal.find(1)) %>
        </code>
        <ul>
          <%= Animal.draw_diagram(where: { id: 1 }, path: animals_path).html_safe %>
        </ul>
      </li>
    </ul>
  </ul>
</div>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem "acts_as_tree_diagram"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install acts_as_tree_diagram
```

## Stuff

Heavy depend on [ActAsTree](https://github.com/amerine/acts_as_tree). Thanks much!

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


