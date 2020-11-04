num_chunks_to_create = argument0;
type_of_chunk = argument1;

for (i = 0; i < num_chunks_to_create; i++) {
    new_bit = instance_create(x, y, type_of_chunk);
}

audio_play_sound(aSplosion,1,false);
instance_destroy();

