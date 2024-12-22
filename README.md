# Elixir Enum.each Blocking Issue

This repository demonstrates a potential issue when using `Enum.each` in Elixir with operations that introduce blocking or delays.  The core problem arises when a long-running operation is performed within the `Enum.each` callback, potentially causing the main thread to become unresponsive.

The included `bug.exs` file showcases the issue: a sleep operation simulates a long-running task, leading to a delay in the output. The `bugSolution.exs` file provides a solution using `Task.async` to avoid blocking the main thread.

## Problem

The naive use of `Enum.each` with a blocking operation within its callback function can result in performance issues and apparent unresponsiveness of the Elixir application.  The main thread gets stuck processing the slow operation, thus impacting overall responsiveness. 

## Solution

The solution utilizes `Task.async` to offload the time-consuming operation to a separate process.  This prevents the main thread from being blocked and ensures better responsiveness.  The results are collected asynchronously, maintaining the desired parallel processing behavior without blocking the main thread.