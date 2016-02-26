Product.delete_all

Product.create(
  title:  'Programming Ruby 1.9',
  description:
    %{<p>
      Ruby is the fastest growing and most exciting dynamic language
      out there. If you need to get working programs delivered fast,
      you should add Ruby to your toolbox.
      </p>},
  image_url: 'ruby.jpg',
  price: 49.50)

Product.create(
  title:  'CoffeeScript',
  description:
    %{<p>
      CoffeeScript is the fastest growing and most exciting dynamic language
      out there. If you need to get working programs delivered fast,
      you should add Ruby to your toolbox.
      </p>},
  image_url: 'cofee.jpg',
  price: 34.30)

Product.create(
  title:  'Rails',
  description:
    %{<p>
      Rails is the fastest growing and most exciting dynamic language
      out there. If you need to get working programs delivered fast,
      you should add Ruby to your toolbox.
      </p>},
  image_url: 'rails.jpg',
  price: 25.50)