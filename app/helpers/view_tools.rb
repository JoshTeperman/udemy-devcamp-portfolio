module ViewTools
  class Renderer
    def self.copyright(msg:, name:)
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end
