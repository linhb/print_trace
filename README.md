print_trace
===========

See what line of code ruby is executing right now!

## Installation

In `Gemfile`

`gem 'print_trace', git: "git@github.com:linhb/print_trace.git"`

Then in the terminal:

`bundle`

## Usage

In the terminal, identify the process ID of the ruby process you're interested in:

`ps aux | grep ruby`

Then in any Ruby console:

`print_trace 12345` where `12345` is your ruby process ID.

Then navigate to your Rails directory and do

`cat log/print_trace.log`

You may want to do `tail -f log/print_trace.log` to see a running log as you print the trace repeatedly.
