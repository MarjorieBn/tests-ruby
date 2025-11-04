def who_is_bigger(a, b, c)
  if a.nil? || b.nil? || c.nil?
    "nil detected"
  else
    if a > b && a > c
      "a is bigger"
    elsif b > a && b > c
      "b is bigger"
    else
      "c is bigger"
    end
  end
end


def reverse_upcase_noLTA(string)
  string.reverse.upcase.delete("LTA")
end


def array_42(array)
  array.include?(42)
end


def magic_array(array)
  array.flatten               # enlève les sous-tableaux
       .sort                  # trie
       .map { |n| n * 2 }     # multiplie chaque élément par 2
       .reject { |n| n % 3 == 0 } # retire les multiples de 3
       .uniq                  # retire les doublons
       .sort                  # trie à nouveau
end