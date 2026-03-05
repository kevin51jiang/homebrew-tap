class Oaicheck < Formula
  desc "Simple CLI for testing OpenAI API configurations"
  homepage "https://github.com/kevin51jiang/oaicheck"
  url "https://github.com/kevin51jiang/oaicheck/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "7a5359d4e445d291493825d2cd10596bb6a46da996632eb0cb6474dcf10d2735"
  license "AGPL-3.0"

  depends_on "go" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    # system "go", "build", *std_go_args(ldflags: "-s -w")
    system "make", "clean"
    system "make", "build"
    bin.install "oaicheck"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test oaicheck`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
