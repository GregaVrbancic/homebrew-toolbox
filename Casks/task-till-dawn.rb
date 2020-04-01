cask 'task-till-dawn' do
  version '2.21'
  sha256 '1278209839ee662aac15381818a7388ffa0bbc8ff78151c09053d3e5042de2ec'

  url "https://www.oliver-matuschin.de/files/downloads/TaskTillDawn/TaskTillDawn#{version}-mac.zip"
  name 'Task Till Dawn'
  homepage 'https://www.oliver-matuschin.de/en/projects/task-till-dawn'

  app 'Task Till Dawn/Task Till Dawn.app'

  zap trash: [
               '~/Library/Application Support/Task Till Dawn',
               '~/Library/ApplicationSupport/Task Till Dawn',
               '~/Library/Preferences/de.oliver_matuschin.*',
             ]
end
