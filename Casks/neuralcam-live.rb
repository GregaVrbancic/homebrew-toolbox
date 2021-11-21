cask 'neuralcam-live' do
  version '1.1.1'
  sha256 "6eaa27868c9c92765afab885e65a65fa07708635aa01b760525917dcae38a36a"

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
