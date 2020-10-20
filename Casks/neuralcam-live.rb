cask 'neuralcam-live' do
  version '1.0.0'
  sha256 "88526d7c76683a4b4557d0e46607463153447984f2e1421e7146230f92057484"

  url "https://neural.cam/live/NeuralCamLive-installer-#{version}.pkg"
  name "NeuralCam Live"
  homepage "https://neural.cam/live/"
  desc "Turn your iPhone into the World's Smartest Webcam. Using proprietary AI technology, it provides unique webcam features to help you have the best video calls in any light and context."

  depends_on macos: '>= :sierra'

  pkg "NeuralCamLive-installer-#{version}.pkg"

  zap trash:  [
                '/Library/CoreMediaIO/Plug-Ins/DAL/'
              ]

end
