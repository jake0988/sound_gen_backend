just = Tuning.create(name: "Just")
pythagorean = Tuning.create(name: "Pythagorean")
equal = Tuning.create(name: "Equal")

sawtooth = Instrument.create(name: "Sawtooth", sound: "FMSynth", tuning_id: 1, image_url: "https://corbitlibrary.org/wp-content/uploads/2016/12/Line.jpg")
sine = Instrument.create(name: "Sine", tuning_id: 2, sound: "AMSynth", image_url: "https://corbitlibrary.org/wp-content/uploads/2016/12/Line.jpg")