module ParserEval
  def self.run!(cdl, namespace)
    JSON.parse(`#{runner_cmd} #{namespace} '#{cdl}'`)
  end

  def self.runner_cmd
    '../parser/bin/runner'
  end
end
