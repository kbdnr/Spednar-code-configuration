(
// configure the sound server: here you could add hardware specific options
// see http://doc.sccode.org/Classes/ServerOptions.html
s.options.numBuffers = 1024 * 16;
s.options.memSize = 8192 * 16;
// boot the server and start SuperDirt
s.waitForBoot {
    ~dirt = SuperDirt(2, s); // two output channels
    ~dirt.loadSoundFiles;   // load samples (path can be passed) mono is assumed.
    s.sync; // wait for samples
    ~dirt.start([57120, 57121]);        // start listening on port 57120 and 57121
}
)
// now you should be able to send from tidal via port 57120 and 57212
