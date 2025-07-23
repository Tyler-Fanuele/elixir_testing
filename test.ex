args = ["--source-path", "lib", "test/enum_test.exs", "--verbose"]
options = [strict: [source_path: :string, verbose: :boolean]]
parsed = OptionParser.parse(args, options)
case parsed do
	{[verbose: true], [filepath], _} -> IO.puts("VERBOSE")
	{_, [filepath], _} -> IO.puts("PLAIN")
	_ -> IO.puts("HELP")
end
