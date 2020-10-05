3.times do |i|
    User.create(
        username: "User #{i + 1}",
        password_digest: "Password #{i + 1}"
    )
end

Giftbox.create(
    organization: "NAACP",
    title: "Black Experiences Matter",
    description: "Books that speak about the black experience in America",
    category: "African-American Studies"
)


  Giftbox.create(
    organization: "Southern Center for Human Rights",
    title: "The Ugly Truth of Mass Incarceration",
    description: "A library of books that dig into the root of America's prison-industrial complex",
    category: "Prison Reform"
)


Giftbox.create(
    organization: "Affinity",
    title: "Recognizing the True Rainbow of Queerness",
    description: "Queerness extends beyond white gay men and lesbian women. Explore the racial, cultural, and gender diversity while helping LGBQT+ youth of color.",
    category: "LGBQT+ Studies"
)


  3.times do |i|
    Book.create(
        title: "Title #{i + 1}",
        author: "Author #{i + 1}",
        description: "Description #{i + 1}",
        price: 1,
        category: "LGBQT+ Studies"
    )
  end

  3.times do |i|
    Book.create(
        title: "Title #{i + 1}",
        author: "Author #{i + 1}",
        description: "Description #{i + 1}",
        price: 5,
        category: "LGBQT+ Studies"
    )
  end

  3.times do |i|
    Book.create(
        title: "Title #{i + 1}",
        author: "Author #{i + 1}",
        description: "Description #{i + 1}",
        price: 10,
        category: "LGBQT+ Studies"
    )
  end


  3.times do |i|
    Book.create(
        title: "Title #{i + 1}",
        author: "Author #{i + 1}",
        description: "Description #{i + 1}",
        price: 1,
        category: "Prison Reform"
    )
  end

  3.times do |i|
    Book.create(
        title: "Title #{i + 1}",
        author: "Author #{i + 1}",
        description: "Description #{i + 1}",
        price: 5,
        category: "Prison Reform"
    )
  end

  3.times do |i|
    Book.create(
        title: "User #{i + 1}",
        author: "Password #{i + 1}",
        description: "Author #{i + 1}",
        price: 10,
        category: "Prison Reform"
    )
  end

  3.times do |i|
    Book.create(
        title: "Title #{i + 1}",
        author: "Author #{i + 1}",
        description: "Description #{i + 1}",
        price: 1,
        category: "African-American Studies"
    )
  end

  3.times do |i|
    Book.create(
        title: "Title #{i + 1}",
        author: "Author #{i + 1}",
        description: "Description #{i + 1}",
        price: 5,
        category: "African-American Studies"
    )
  end

  3.times do |i|
    Book.create(
        title: "Title #{i + 1}",
        author: "Author #{i + 1}",
        description: "Description #{i + 1}",
        price: 10,
        category: "African-American Studies"
    )
  end