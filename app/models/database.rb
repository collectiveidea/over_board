class Database
  module ClassMethods
    def lvarayut
      User.new(1, 'Varayut Lerdkanlayanawat', 'lvarayut', 'https://github.com/lvarayut/relay-fullstack');
    end

    def features
      @features ||= [
        Feature.new(1, 'React', 'A JavaScript library for building user interfaces.', 'https://facebook.github.io/react'),
        Feature.new(2, 'Relay', 'A JavaScript framework for building data-driven react applications.', 'https://facebook.github.io/relay'),
        Feature.new(3, 'GraphQL', 'A reference implementation of GraphQL for JavaScript.', 'http://graphql.org'),
        Feature.new(4, 'Express', 'Fast, unopinionated, minimalist web framework for Node.js.', 'http://expressjs.com'),
        Feature.new(5, 'Webpack', 'Webpack is a module bundler that packs modules for the browser.', 'https://webpack.github.io'),
        Feature.new(6, 'Babel', 'Babel is a JavaScript compiler. Use next generation JavaScript, today.', 'https://babeljs.io'),
        Feature.new(7, 'PostCSS', 'PostCSS. A tool for transforming CSS with JavaScript.', 'http://postcss.org'),
        Feature.new(8, 'MDL', 'Material Design Lite lets you add a Material Design to your websites.', 'http://www.getmdl.io')
      ]
    end

    def add_feature(name, description, url)
      @curr_features ||= 9

      new_feature = Feature.new(@curr_features, name, description, url)
      features.push(new_feature)
      @curr_features += 1
      new_feature
    end

    def get_user(id)
      id == lvarayut.id ? lvarayut : nil
    end

    def get_feature(id)
      features.detect do |feature|
        feature.id == id
      end
    end

    def get_features
      features
    end
  end
  extend ClassMethods
end