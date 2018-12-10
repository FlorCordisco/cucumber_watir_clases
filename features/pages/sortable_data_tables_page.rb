require_relative 'the_internet_page'

class SortableDataTables < TheInternet

	def table
	 	@driver.table(id: "table1")
	end

	def header
		table.thead.tr
	end

	def column(head)
		header.span(text: head)
	end

	def body
		table.tbody
	end

	def row(lastname)
		body.td(text: lastname).parent.tds
	end

end