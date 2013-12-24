class Hanachin
  def call(env)
    [
      200,
      { 'Content-Type' => 'text/plain' },
      ['クリスマスイブなのでtravisいじります']
    ]
  end
end
