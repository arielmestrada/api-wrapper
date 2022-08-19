# API Wrapper

Sample API Wrapper using Rawg.io (for educational purposes)

## Table of contents
- [Introduction](#introduction)
- [get_resource Method](#get_resource-method)
- [console_ids Method](#console_ids-method)
- [game_id Method](#game_id-method)

## Introduction

There are 3 key files in this app:
(under `app/api`)
#### `client.rb` handles which will be requested
#### `errors.rb` for handling errors
#### `request.rb` contains request wrapper

## get_resource Method

```ruby
    Rawg::Client.get_resource(resource, id)
```

Passing no arguments will list the available resource.
#### `resource` = the name of the resource to get.
#### `id` = only required if searching for specific resource (ex. `console_details` needs an `id`)

## console_ids Method

```ruby
    Rawg::Client.console_ids
```

This method will return a hash with the list of console names with their corresponding ids.

## game_id Method

```ruby
    Rawg::Client.game_id(game_name)
```

This method will return a string with corresponding `id` of the entered game_name
#### `game_name` = name of the game to search for the id.

