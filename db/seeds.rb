27.times do |i|
    Book.create(
      title: "Title #{i + 1}",
      author: "Author #{i + 1}",
      description: "Description #{i + 1}",
      price: "7.50",
      category: "Category #{i + 1}",
    )
  end

3.times do |i|
    User.create(
        username: "User #{i + 1}",
        password_digest: "Password #{i + 1}"
    )
  end

  9.times do |i|
    Giftbox.create(
      organization: "Organization #{i + 1}",
      title: "Title #{i + 1}",
      description: "Description #{i + 1}",
      category: "Category #{i + 1}",
    )
  end