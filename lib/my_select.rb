def my_select(collection)
  if block_given?
    selected_array = []
    collection.each do |element|
      boolean = yield element
        if boolean
          selected_array.push(element)
        end
    end
    selected_array
  else
    puts "No block given!"
  end
end
