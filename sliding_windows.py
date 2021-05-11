def extract_window(window_size, overlap, seq):
        window = seq.seq[seq.window_start:seq.window_end]
        seq.window_start = math.floor(window_size * overlap)
        seq.window_end = seq.window_start+window_size
        return window