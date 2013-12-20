defmodule MorseTest do
  use ExUnit.Case, async: true

  test "to_morse with valid chars (EN)" do
    assert Morse.to_morse("Morse", "en") == "-- --- .-. ... ."
  end

  test "to_morse with valid chars (EN)" do
    assert Morse.to_morse("Морзе", "ru") == "-- --- .-. --.. ."
  end

  test "preserves bad chars if set to" do
    assert Morse.to_morse("M&%#e", "en") == "-- & % # ."
  end

  test "removes bad chars if not set to preserve" do
    assert Morse.to_morse("M&%#e", "en", true) == "--    ."
  end

  test "decodes EN string" do
    assert Morse.from_morse("-- --- .-. ... .", "en") == "MORSE"
  end

  test "decodes RU string" do
    assert Morse.from_morse("-- --- .-. --.. .", "ru") == "МОРЗЕ"
  end

end
