# ActsAsTreeDiagram
ActsAsTreeDiagram extends ActsAsTree to add simple function for draw tree diagram with html.

![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
[![Gem Version](https://badge.fury.io/rb/acts_as_tree_diagram.svg)](https://badge.fury.io/rb/acts_as_tree_diagram)
![](https://ruby-gem-downloads-badge.herokuapp.com/acts_as_tree_diagram)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop)
[![CircleCI](https://circleci.com/gh/routeflags/acts_as_tree_diagram.svg?style=svg)](https://circleci.com/gh/routeflags/acts_as_tree_diagram)


# See It Work
![ActsAsTreeDiagram](https://user-images.githubusercontent.com/25024587/165070652-20f1c36c-6965-418d-b57b-ab3d61b1a352.gif)

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
        <li>
            <code>
                <%= link_to Animal.find(1).name, animals_path(Animal.find(1)) %>
            </code>
            <ul>
                <%= Animal.diagram_molecules_tag(where: { id: 1 }, path: animals_path).html_safe %>
            </ul>
        </li>
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


## Development

### Test

```bash
bin/test
```

## Contributing

Bug reports and pull requests are welcome on Github at https://github.com/routeflags/acts_as_tree_diagram. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/routeflags/acts_as_tree_diagram/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Changelog

TimelineRailsHelper's changelog is available [here](https://github.com/routeflags/acts_as_tree_diagram/blob/main/CHANGELOG.md.md).

## Code of Conduct

Everyone interacting in the PunchClock project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/routeflags/acts_as_tree_diagram/main/CODE_OF_CONDUCT.md).

## You may enjoy owning other libraries and my company.

* [routeflagsinc / jma — Bitbucket](https://bitbucket.org/routeflagsinc/jma/src/main/)
- for the Japan Meteorological Agency (気象庁) for searching new information simplifies.
* [smapira / punch_time — Bitbucket](https://bitbucket.org/smapira/punch_time/src/master/)
- Work time calculations using punch clock.
* [smapira / rspec-css — Bitbucket](https://bitbucket.org/smapira/rspec-css/src/master/)
- Record your test suite's computed CSS during future test runs for deterministic and accurate tests.
* [routeflags/timeline_rails_helper: The TimelineRailsHelper provides a timeline_molecules_tag helper to draw a vertical time line usable with vanilla CSS.](https://github.com/routeflags/timeline_rails_helper)
* [routeflags/acts_as_tree_diagram: ActsAsTreeDiagram extends ActsAsTree to add simple function for draw tree diagram with html.](https://github.com/routeflags/acts_as_tree_diagram)
* [株式会社旗指物](https://blog.routeflags.com/)

## Аcknowledgment

- [ActAsTree](https://github.com/amerine/acts_as_tree)
- [Tree view from unordered list](https://codepen.io/ross-angus/pen/jwxMjL)
