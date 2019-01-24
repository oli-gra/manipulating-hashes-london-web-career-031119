require 'pry'

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts.each do |name,person_info|
    person_info.each do |tag,data|
      if name == "Freddy Mercury" and tag == :favorite_icecream_flavors
        tag.delete("strawberry")
        binding.pry
      end
    end
  end

  #remember to return your newly altered contacts hash!
  contacts
end
