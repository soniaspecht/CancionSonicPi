live_loop :midi_sonido do
  use_real_time # En tiempo real
  note, velocity = sync "/midi:ipad:1/*" # Conectar con la app MIDIDesigner a traves del IPAD
  synth :pluck, note: note, amp: velocity / 127.0 # Permite modificar el sonido usando synth.Los valores de midi son 0-127 por tanto para tener una amplitud adecuada deberá dividirse el valor recibido entre 127.
end